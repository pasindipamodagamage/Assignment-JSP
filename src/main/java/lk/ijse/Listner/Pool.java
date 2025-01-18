package lk.ijse.Listner;

import jakarta.servlet.ServletContextEvent;
import jakarta.servlet.ServletContextListener;
import jakarta.servlet.annotation.WebListener;
import org.apache.tomcat.dbcp.dbcp2.BasicDataSource;

/**
 * Author: pasindi
 * Date: 1/16/25
 * Time: 10:36 PM
 * Description:
 */

@WebListener
public class Pool implements ServletContextListener {

    @Override
    public void contextInitialized(ServletContextEvent sce) {
        BasicDataSource ds=new BasicDataSource();
        ds.setDriverClassName("");
    }
}
