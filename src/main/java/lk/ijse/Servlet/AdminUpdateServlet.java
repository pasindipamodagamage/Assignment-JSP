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
 * Time: 9:29 PM
 * Description:
 */

@WebServlet(name = "adminUpdateServlet", value = "/admin-Update-servlet")
public class AdminUpdateServlet extends HttpServlet{
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
            ServletContext servletContext=req.getServletContext();
            BasicDataSource ds= (BasicDataSource) servletContext.getAttribute("dataSource");

            String id = req.getParameter("id");
            String name = req.getParameter("name");
            String email = req.getParameter("email");
            String contact = req.getParameter("contact");
            String userName = req.getParameter("userName");
            String password = req.getParameter("password");

            try {
                Connection connection=ds.getConnection();
                PreparedStatement preparedStatement=connection.prepareStatement("UPDATE admin SET name = ?, email = ?, contact = ?, userName = ?, password = ? WHERE id = ?");
                preparedStatement.setString(1,name);
                preparedStatement.setString(2,email);
                preparedStatement.setString(3,contact);
                preparedStatement.setString(4,userName);
                preparedStatement.setString(5,password);
                preparedStatement.setString(6,id);

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
