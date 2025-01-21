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
 * Date: 1/16/25
 * Time: 9:12 PM
 * Description:
 */
@WebServlet(name = "categorySaveServlet", value = "/category-save-servlet")
public class CategorySaveServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        ServletContext servletContext=req.getServletContext();
        BasicDataSource ds= (BasicDataSource) servletContext.getAttribute("dataSource");

//        String id = req.getParameter("id");
        String description = req.getParameter("description");

        try {
            Connection connection=ds.getConnection();
            PreparedStatement preparedStatement=connection.prepareStatement("INSERT INTO category(id, description) VALUES (?,?)");
            String id = generateId(connection);
            preparedStatement.setString(1,id);
            preparedStatement.setString(2,description);

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

    private String generateId(Connection connection) throws SQLException {
        String lastId = "CT000";

        String query = "SELECT id FROM customer ORDER BY id DESC LIMIT 1";
        try (PreparedStatement stmt = connection.prepareStatement(query);
             ResultSet rs = stmt.executeQuery()) {
            if (rs.next()) {
                lastId = rs.getString("id");
            }
        }

        int lastNum = Integer.parseInt(lastId.substring(2));
        String newId = String.format("CT%03d", lastNum + 1);

        return newId;
    }

}
