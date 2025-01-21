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
 * Time: 7:09 PM
 * Description:
 */
@WebServlet(name = "registerServlet", value = "/register-servlet")

public class RegisterServlet extends HttpServlet {
//    customer save in customer side
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        ServletContext servletContext=req.getServletContext();
        BasicDataSource ds= (BasicDataSource) servletContext.getAttribute("dataSource");

        String id = req.getParameter("id");
        String name = req.getParameter("name");
        String address = req.getParameter("address");
        String contact = req.getParameter("contact");
        String userName = req.getParameter("userName");
        String password = req.getParameter("password");

        try {
            Connection connection=ds.getConnection();
            PreparedStatement preparedStatement=connection.prepareStatement("INSERT INTO customer(id, name, address, contact, userName, password) VALUES (?,?,?,?,?,?)");
            preparedStatement.setString(1,id);
            preparedStatement.setString(2,name);
            preparedStatement.setString(3,address);
            preparedStatement.setString(4,contact);
            preparedStatement.setString(5,userName);
            preparedStatement.setString(6,password);

            int i = preparedStatement.executeUpdate();

            if (i>0) {
                resp.sendRedirect("index.jsp?message=Successfully Registration");
            } else {
                resp.sendRedirect("index.jsp?message=Unsuccessful");
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

    }
}
