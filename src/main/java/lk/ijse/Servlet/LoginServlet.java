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
 * Description:
 */
@WebServlet(name = "loginServlet", value = "/login-servlet")
public class LoginServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) {
        ServletContext servletContext=req.getServletContext();
        BasicDataSource ds= (BasicDataSource) servletContext.getAttribute("dataSource");

        String userName=req.getParameter("userName");
        String password=req.getParameter("password");

        try {
            Connection connection=ds.getConnection();
            PreparedStatement pstm1=connection.prepareStatement("SELECT * FROM customer WHERE userName = ? AND password = ?");
            pstm1.setString(1,userName);
            pstm1.setString(2,password);
            ResultSet resultSet1= pstm1.executeQuery();


            PreparedStatement pstm2=connection.prepareStatement("SELECT * FROM admin WHERE userName = ? AND password = ?");
            pstm2.setString(1,userName);
            pstm2.setString(2,password);
            ResultSet resultSet2=pstm2.executeQuery();

            if (resultSet1.next() || resultSet2.next()) {
                resp.sendRedirect("index.jsp?message=Login Success");
            } else {
                resp.sendRedirect("index.jsp?message=User Not Found");
            }
        } catch (SQLException | IOException e) {
            throw new RuntimeException(e);
        }
    }


}
