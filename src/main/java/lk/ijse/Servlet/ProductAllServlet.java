/*
package lk.ijse.Servlet;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletContext;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import lk.ijse.DTO.EntityTM.CustomerTM;
import lk.ijse.DTO.EntityTM.ProductTM;
import org.apache.tomcat.dbcp.dbcp2.BasicDataSource;

import java.io.IOException;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

*/
/**
 * Author: pasindi
 * Date: 1/21/25
 * Time: 9:38 PM
 * Description:
 *//*

@WebServlet(name = "ProductAllServlet", value = "/product-list")
public class ProductAllServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        ServletContext servletContext = req.getServletContext();
        BasicDataSource ds = (BasicDataSource) servletContext.getAttribute("dataSource");

        List<ProductTM> productList = new ArrayList<>();

        if (ds == null) {
            resp.sendRedirect("product-list.jsp?error=Database connection issue");
            return;
        }

        try (Connection connection = ds.getConnection();
             PreparedStatement stmt = connection.prepareStatement("SELECT id, description,unitPrice, qtyOnHand FROM product");
             ResultSet resultSet = stmt.executeQuery()) {

            while (resultSet.next()) {
                ProductTM productTM = new ProductTM(
                        resultSet.getString("id"),
                        resultSet.getString("description"),
                        resultSet.getDouble("unitPrice"),
                        resultSet.getInt("qtyOnHand")
                );
                productList.add(productTM);
            }

            req.setAttribute("products", productList);
            RequestDispatcher requestDispatcher = req.getRequestDispatcher("product-list.jsp");
            requestDispatcher.forward(req, resp);

        } catch (SQLException e) {
            e.printStackTrace();
            resp.sendRedirect("product-list.jsp?error=Failed to retrieve products");
        }
    }
}
*/
package lk.ijse.Servlet;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletContext;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import lk.ijse.DTO.EntityTM.ProductTM;
import org.apache.tomcat.dbcp.dbcp2.BasicDataSource;

import java.io.IOException;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "ProductAllServlet", value = "/product-list")
public class ProductAllServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        ServletContext servletContext = req.getServletContext();
        BasicDataSource ds = (BasicDataSource) servletContext.getAttribute("dataSource");

        if (ds == null) {
            resp.sendRedirect("product-list.jsp?error=Database connection issue");
            return;
        }

        List<ProductTM> productList = new ArrayList<>();

        try (Connection connection = ds.getConnection();
             PreparedStatement stmt = connection.prepareStatement("SELECT id, description, unitPrice, qtyOnHand FROM product");
             ResultSet resultSet = stmt.executeQuery()) {

            while (resultSet.next()) {
                productList.add(new ProductTM(
                        resultSet.getString("id"),
                        resultSet.getString("description"),
                        resultSet.getDouble("unitPrice"),
                        resultSet.getInt("qtyOnHand")
                ));
            }
            req.setAttribute("products", productList);
            RequestDispatcher dispatcher = req.getRequestDispatcher("product-list.jsp");
            dispatcher.forward(req, resp);
        } catch (SQLException e) {
            e.printStackTrace();
            resp.sendRedirect("product-list.jsp?error=Failed to retrieve products");
        }
    }
}
