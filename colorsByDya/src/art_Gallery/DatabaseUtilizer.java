package art_Gallery;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.List;

public class DatabaseUtilizer{
	private static String url = "jdbc:mysql://localhost:3306/colorlib";
	private static String userName = "root";
	private static String password = "root";
	private static Connection con;
	
	public static Connection utilizeConnection() {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection(url, userName, password);
			System.out.println("Connected via Java SQL...");
		} catch (Exception e) {
			System.out.println("DBConnection is not success...!");
		}
		return con;
	}
	
}
