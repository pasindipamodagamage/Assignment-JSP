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
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 * Author: pasindi
 * Date: 1/21/25
 * Time: 9:38 PM
 * Description:
 */
@WebServlet(name = "HomeProduct" , value = "/HomeProductList")
public class HomeProduct extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        ServletContext servletContext = req.getServletContext();
        BasicDataSource ds = (BasicDataSource) servletContext.getAttribute("dataSource");

        if (ds == null) {
            resp.sendRedirect("index.jsp?error=Database connection issue");
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
            RequestDispatcher dispatcher = req.getRequestDispatcher("index.jsp");
            RequestDispatcher dispatcher2 = req.getRequestDispatcher("customerDashboard.jsp");
            dispatcher.forward(req, resp);
        } catch (SQLException e) {
            e.printStackTrace();
            resp.sendRedirect("index.jsp?error=Failed to retrieve products");
        }
    }
}
