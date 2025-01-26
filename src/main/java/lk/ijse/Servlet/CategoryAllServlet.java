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
@WebServlet(name = "CategoryAllServlet", value = "/category-list")
public class CategoryAllServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        ServletContext servletContext = req.getServletContext();
        BasicDataSource ds = (BasicDataSource) servletContext.getAttribute("dataSource");

        List<CategoryTM> categoryList = new ArrayList<>();

        if (ds == null) {
            resp.sendRedirect("category-list.jsp?error=Database connection issue");
            return;
        }

        try (Connection connection = ds.getConnection();
             PreparedStatement stmt = connection.prepareStatement("SELECT id, description FROM category");
             ResultSet resultSet = stmt.executeQuery()) {

            while (resultSet.next()) {
                CategoryTM categoryTM = new CategoryTM(
                        resultSet.getString("id"),
                        resultSet.getString("description")
                );
                categoryList.add(categoryTM);
            }

            req.setAttribute("category", categoryList);
            RequestDispatcher requestDispatcher = req.getRequestDispatcher("category-list.jsp");
            requestDispatcher.forward(req, resp);

        } catch (SQLException e) {
            e.printStackTrace();
            resp.sendRedirect("category-list.jsp?error=Failed to retrieve category");
        }
    }
}
