/**
 * Author: pasindi
 * Date: 1/25/25
 * Time: 1:56 PM
 * Description:
 */
package lk.ijse.Servlet;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletContext;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import lk.ijse.DTO.EntityTM.AdminTM;
import org.apache.tomcat.dbcp.dbcp2.BasicDataSource;

import java.io.IOException;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "AdminAllServlet", value = "/admin-list")
public class AdminLoadServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<AdminTM> adminList = new ArrayList<>();

        try {
            ServletContext servletContext = req.getServletContext();
            BasicDataSource ds = (BasicDataSource) servletContext.getAttribute("dataSource");

            try (Connection connection = ds.getConnection();
                 Statement stm = connection.createStatement();
                 ResultSet resultSet = stm.executeQuery("SELECT id, name, email, contact, userName, password FROM admin")) {

                while (resultSet.next()) {
                    AdminTM adminTM = new AdminTM(
                            resultSet.getString(1),
                            resultSet.getString(2),
                            resultSet.getString(3),
                            resultSet.getInt(4),
                            resultSet.getString(5),
                            resultSet.getString(6)
                    );
                    adminList.add(adminTM);
                }
            }

            req.setAttribute("admins", adminList);
            RequestDispatcher requestDispatcher = req.getRequestDispatcher("admin-list.jsp");
            requestDispatcher.forward(req, resp);

        } catch (SQLException e) {
            e.printStackTrace();
            resp.sendRedirect("admin-list.jsp?error=Failed to retrieve admin data.");
        }
    }
}
