package art_Gallery;

import java.sql.Connection;
import java.sql.DriverManager;

public class EventDBconnect {

	private static String url = "jdbc:mysql://localhost:3306/colorbydiyaa";
	private static String username = "root";
	private static String password = "root";
	private static Connection con;
	
	public static Connection getConnection() 
	{
		try
		{
			
			Class.forName("com.mysql.jdbc.Driver");
			
			con = DriverManager.getConnection(url, username, password);
			
		}
		catch(Exception e)
		{
			System.out.println("Database connection is not successful...");
		}
		
		return con;
	}
	
	
}
