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
 * Time: 11:39 PM
 * Description:
 */
@WebServlet(name = "productUpdateServlet", value = "/product-update-servlet")
public class ProductUpdateServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        ServletContext servletContext=req.getServletContext();
        BasicDataSource ds= (BasicDataSource) servletContext.getAttribute("dataSource");

        String id = req.getParameter("id");
        String categoryId = req.getParameter("categoryId");
        String description = req.getParameter("description");
        Double unitPrice = Double.parseDouble(req.getParameter("unitPrice"));
        Integer qtyOnHand = Integer.valueOf(req.getParameter("qtyOnHand"));
        String imgUrl = req.getParameter("imgUrl");

        try {
            Connection connection=ds.getConnection();
            PreparedStatement preparedStatement=connection.prepareStatement("UPDATE product SET categoryId = ?," +
                    "description = ? , unitPrice = ?, qtyOnHand = ?, imgUrl = ? WHERE id = ?");
            preparedStatement.setString(1,categoryId);
            preparedStatement.setString(2,description);
            preparedStatement.setDouble(3,unitPrice);
            preparedStatement.setInt(4,qtyOnHand);
            preparedStatement.setString(5,imgUrl);
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
