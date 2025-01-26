package lk.ijse.Servlet;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletContext;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import lk.ijse.DTO.EntityTM.CategoryTM;
import lk.ijse.DTO.EntityTM.CustomerTM;
import lk.ijse.DTO.EntityTM.OrderTM;
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
@WebServlet(name = "OrderAllServlet", value = "/order-list")
public class OrderAllServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        ServletContext servletContext = req.getServletContext();
        BasicDataSource ds = (BasicDataSource) servletContext.getAttribute("dataSource");

        List<OrderTM> orderList = new ArrayList<>();

        if (ds == null) {
            resp.sendRedirect("adminDashboard.jsp?error=Database connection issue");
            return;
        }

        try (Connection connection = ds.getConnection();
             PreparedStatement stmt = connection.prepareStatement("SELECT id, adminId, customerId, cardId, date FROM orders");
             ResultSet resultSet = stmt.executeQuery()) {

            while (resultSet.next()) {
                OrderTM orderTM = new OrderTM(
                        resultSet.getString("id"),
                        resultSet.getString("adminId"),
                        resultSet.getString("customerId"),
                        resultSet.getString("cardId"),
                        resultSet.getDate("date")
                        );
                orderList.add(orderTM);
            }

            req.setAttribute("orders", orderList);
            RequestDispatcher requestDispatcher = req.getRequestDispatcher("adminDashboard.jsp");
            requestDispatcher.forward(req, resp);

        } catch (SQLException e) {
            e.printStackTrace();
            resp.sendRedirect("adminDashboard.jsp?error=Failed to retrieve orders");
        }
    }
}
