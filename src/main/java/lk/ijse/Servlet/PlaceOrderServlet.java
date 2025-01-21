/**
 * Author: pasindi
 * Date: 1/16/25
 * Time: 9:13 PM
 * Description:
 */
package lk.ijse.Servlet;

import jakarta.servlet.ServletContext;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import org.apache.tomcat.dbcp.dbcp2.BasicDataSource;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

@WebServlet(name = "placeOrderServlet", value = "/placeOrder-servlet")
public class PlaceOrderServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ServletContext servletContext = getServletContext();
        BasicDataSource ds = (BasicDataSource) servletContext.getAttribute("dataSource");

        try (Connection conn = ds.getConnection()) {
            conn.setAutoCommit(false); // Start transaction

            HttpSession session = request.getSession();
            String customerId = (String) session.getAttribute("customerId");
            String adminId = "A001"; // Hardcoded admin ID (should be dynamic)

            if (customerId == null) {
                response.sendRedirect("login.jsp");
                return;
            }

            // Generate unique order ID
            String orderId = "ORD" + System.currentTimeMillis();

            // Insert into orders table
            String insertOrderSQL = "INSERT INTO orders (id, adminId, customerId, date) VALUES (?, ?, ?, NOW())";
            try (PreparedStatement orderStmt = conn.prepareStatement(insertOrderSQL)) {
                orderStmt.setString(1, orderId);
                orderStmt.setString(2, adminId);
                orderStmt.setString(3, customerId);
                orderStmt.executeUpdate();
            }

            // Retrieve cart items for the customer
            String cartSQL = "SELECT productId FROM cart WHERE customerId = ?";
            try (PreparedStatement cartStmt = conn.prepareStatement(cartSQL)) {
                cartStmt.setString(1, customerId);
                ResultSet cartResult = cartStmt.executeQuery();

                while (cartResult.next()) {
                    String productId = cartResult.getString("productId");

                    // Insert into orderDetail table
                    String insertOrderDetailSQL = "INSERT INTO orderDetail (id, orderId, productId) VALUES (?, ?, ?)";
                    try (PreparedStatement orderDetailStmt = conn.prepareStatement(insertOrderDetailSQL)) {
                        String orderDetailId = "OD" + System.currentTimeMillis();
                        orderDetailStmt.setString(1, orderDetailId);
                        orderDetailStmt.setString(2, orderId);
                        orderDetailStmt.setString(3, productId);
                        orderDetailStmt.executeUpdate();
                    }
                }
            }

            // Clear cart after order placement
            String deleteCartSQL = "DELETE FROM cart WHERE customerId = ?";
            try (PreparedStatement cartStmt = conn.prepareStatement(deleteCartSQL)) {
                cartStmt.setString(1, customerId);
                cartStmt.executeUpdate();
            }

            conn.commit(); // Commit transaction
            response.sendRedirect("orderSuccess.jsp");
        } catch (SQLException e) {
            e.printStackTrace();
            response.sendRedirect("orderFailure.jsp");
        }
    }
}
