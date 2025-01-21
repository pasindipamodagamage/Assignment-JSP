package lk.ijse.Servlet;

import java.io.*;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import jakarta.servlet.ServletContext;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import org.apache.tomcat.dbcp.dbcp2.BasicDataSource;

@WebServlet(name = "adminSaveServlet", value = "/admin-save-servlet")
public class AdminSaveServlet extends HttpServlet {

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
            PreparedStatement preparedStatement=connection.prepareStatement("INSERT INTO admin(id, name, email, contact, userName, password) VALUES (?,?,?,?,?,?)");
            preparedStatement.setString(1,id);
            preparedStatement.setString(2,name);
            preparedStatement.setString(3,email);
            preparedStatement.setString(4,contact);
            preparedStatement.setString(5,userName);
            preparedStatement.setString(6,password);

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