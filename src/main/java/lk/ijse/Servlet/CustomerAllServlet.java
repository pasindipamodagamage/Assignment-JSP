package lk.ijse.Servlet;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletContext;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import lk.ijse.DTO.EntityTM.CustomerTM;
import org.apache.tomcat.dbcp.dbcp2.BasicDataSource;

import java.io.IOException;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

/**
 * Author: pasindi
 * Date: 1/21/25
 * Time: 9:38 PM
 * Description:
 */
@WebServlet(name = "CustomerAllServlet", value = "/customer-list")
public class CustomerAllServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        ServletContext servletContext = req.getServletContext();
        BasicDataSource ds = (BasicDataSource) servletContext.getAttribute("dataSource");

        List<CustomerTM> customerList = new ArrayList<>();

        if (ds == null) {
            resp.sendRedirect("customer-list.jsp?error=Database connection issue");
            return;
        }

        try (Connection connection = ds.getConnection();
             PreparedStatement stmt = connection.prepareStatement("SELECT id, name, address, contact, userName, " +
                     "password FROM customer");
             ResultSet resultSet = stmt.executeQuery()) {

            while (resultSet.next()) {
                CustomerTM customerTM = new CustomerTM(
                        resultSet.getString("id"),
                        resultSet.getString("name"),
                        resultSet.getString("address"),
                        resultSet.getString("contact"),
                        resultSet.getString("userName"),
                        resultSet.getString("password")
                );
                customerList.add(customerTM);
            }

            req.setAttribute("customers", customerList);
            RequestDispatcher requestDispatcher = req.getRequestDispatcher("customer-list.jsp");
            requestDispatcher.forward(req, resp);

        } catch (SQLException e) {
            e.printStackTrace();
            resp.sendRedirect("customer-list.jsp?error=Failed to retrieve customers");
        }
    }
}
