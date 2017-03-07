package listener;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;

import model.DbInfo;

/**
 * Application Lifecycle Listener implementation class DriverLoader
 *
 */
@WebListener
public class DriverLoader implements ServletContextListener {

    /**
     * Default constructor. 
     */
    public DriverLoader() {
        // TODO Auto-generated constructor stub
    }

	/**
     * @see ServletContextListener#contextDestroyed(ServletContextEvent)
     */
    public void contextDestroyed(ServletContextEvent arg0)  { 
         // TODO Auto-generated method stub
    }

    public void contextInitialized(ServletContextEvent arg0)  { 
        try {
			Class.forName(DbInfo.DRIVER);
			System.out.println("contextInitialized driver loading");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
   }
	
}
