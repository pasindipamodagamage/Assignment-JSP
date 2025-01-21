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
 * Time: 9:13 PM
 * Description:
 */
@WebServlet(name = "productSaveServlet", value = "/product-save-servlet")
public class ProductSaveServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        ServletContext servletContext=req.getServletContext();
        BasicDataSource ds= (BasicDataSource) servletContext.getAttribute("dataSource");

//        String id = req.getParameter("id");
        String categoryId = req.getParameter("categoryId");
        String description = req.getParameter("description");
        Double unitPrice = Double.parseDouble(req.getParameter("unitPrice"));
        Integer qtyOnHand = Integer.valueOf(req.getParameter("qtyOnHand"));
        String imgUrl = req.getParameter("imgUrl");

        try {
            Connection connection=ds.getConnection();
            PreparedStatement preparedStatement=connection.prepareStatement("INSERT INTO product(id, categoryId, " +
                    "description, unitPrice, qtyOnHand, imgUrl) VALUES (?,?,?,?,?,?)");
            String id = generateId(connection);
            preparedStatement.setString(1,id);
            preparedStatement.setString(2,categoryId);
            preparedStatement.setString(3,description);
            preparedStatement.setDouble(4,unitPrice);
            preparedStatement.setInt(5,qtyOnHand);
            preparedStatement.setString(6,imgUrl);

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
        String lastId = "PR000";

        String query = "SELECT id FROM product ORDER BY id DESC LIMIT 1";
        try (PreparedStatement stmt = connection.prepareStatement(query);
             ResultSet rs = stmt.executeQuery()) {
            if (rs.next()) {
                lastId = rs.getString("id");
            }
        }

        int lastNum = Integer.parseInt(lastId.substring(2));
        String newId = String.format("PR%03d", lastNum + 1);

        return newId;
    }

}
