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
import java.sql.SQLException;

/**
 * Author: pasindi
 * Date: 1/21/25
 * Time: 9:38 PM
 * Description:
 */
@WebServlet(name = "adminDeleteServlet", value = "/admin-Delete-servlet")
public class AdminDeleteServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        ServletContext servletContext=req.getServletContext();
        BasicDataSource ds= (BasicDataSource) servletContext.getAttribute("dataSource");

        String id = req.getParameter("id");

        try {
            Connection connection=ds.getConnection();
            PreparedStatement preparedStatement=connection.prepareStatement("DELETE FROM admin WHERE id = ?");
            preparedStatement.setString(1,id);

            int i = preparedStatement.executeUpdate();

            if (i>0) {
                resp.sendRedirect("adminDashboard.jsp?message=Successful Statement");
            } else {
                resp.sendRedirect("adminDashboard.jsp?message=Unsuccessful Statement");
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

    }
}
