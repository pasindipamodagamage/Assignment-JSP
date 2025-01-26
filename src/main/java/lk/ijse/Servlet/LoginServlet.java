package lk.ijse.Servlet;

import jakarta.servlet.ServletContext;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.apache.tomcat.dbcp.dbcp2.BasicDataSource;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 * Author: pasindi
 * Date: 1/21/25
 * Time: 5:59 PM
 * Description: Login validation for Customer and Admin
 */
@WebServlet(name = "loginServlet", value = "/login-servlet")
public class LoginServlet extends HttpServlet {
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        ServletContext servletContext = req.getServletContext();
        BasicDataSource ds = (BasicDataSource) servletContext.getAttribute("dataSource");

        if (ds == null) {
            System.err.println("Database connection pool (DataSource) is null.");
            resp.sendRedirect("index.jsp?message=Database Connection Error");
            return;
        }

        String userName = req.getParameter("userName");
        String password = req.getParameter("password");

        try (Connection connection = ds.getConnection()) {
            // Check Customer Login
            try (PreparedStatement pstm = connection.prepareStatement(
                    "SELECT * FROM customer WHERE BINARY userName = ? AND BINARY password = ?")) {
                pstm.setString(1, userName);
                pstm.setString(2, password);
                try (ResultSet resultSet = pstm.executeQuery()) {
                    if (resultSet.next()) {
                        resp.sendRedirect("customerDashboard.jsp");
                        return;
                    }
                }
            }

            // Check Admin Login
            try (PreparedStatement pstm = connection.prepareStatement(
                    "SELECT * FROM admin WHERE BINARY userName = ? AND BINARY password = ?")) {
                pstm.setString(1, userName);
                pstm.setString(2, password);
                try (ResultSet resultSet = pstm.executeQuery()) {
                    if (resultSet.next()) {
                        resp.sendRedirect("adminDashboard.jsp");
                        return;
                    }
                }
            }
            resp.sendRedirect("index.jsp?message=Invalid Credentials");

        } catch (SQLException e) {
            e.printStackTrace();
            resp.sendRedirect("index.jsp?message=Something went wrong!");
        }
    }
}
