package art_Gallery;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class CustomerDbUtill {
	
	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	
	
	public static List<CustomerNew> validate(String userName, String password){
		
		ArrayList<CustomerNew> cus = new ArrayList<>();
			
		//Validate
		
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "select * from registered_customer where username='"+userName+"' and password='"+password+"'";
			rs = stmt.executeQuery(sql);
			
			if(rs.next()) {
				int id = rs.getInt(1);
				String full_name = rs.getString(2);
				String username = rs.getString(3);
				String passU = rs.getString(4);
				String phone_no = rs.getString(5);
				String add_line_01 = rs.getString(6);
				String add_line_02 = rs.getString(7);
				int postal_code = rs.getInt(8);
				String province = rs.getString(9);
				String city = rs.getString(10);
				String country = rs.getString(11);
				
				CustomerNew c = new CustomerNew(id,full_name,username,passU,phone_no,add_line_01,add_line_02,postal_code,province,city,country);
				cus.add(c);
			}
			
			
		}catch(Exception e){
			e.printStackTrace();
		}
		
		return cus;
		
	}
	

	public static List<CustomerNew> getCustomerDetails(String Id){
		
		int convertedID = Integer.parseInt(Id);
		
		ArrayList<CustomerNew> cus = new ArrayList<>();
		
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql= "SELECT * FROM registered_customer WHERE customer_id='"+convertedID+"' ";
			rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				
				int id = rs.getInt(1);
				String fname = rs.getString(2);
				String username  = rs.getString(3);
				String password = rs.getString(4);
				String PNo = rs.getString(5);
				String addL1 = rs.getString(6);
				String addL2 = rs.getString(7);
				int postalC = rs.getInt(8);
				String province = rs.getString(9);
				String city = rs.getString(10);
				String country = rs.getString(11);
				
				CustomerNew c = new CustomerNew(id, fname, username, password, PNo, addL1,addL2,postalC,province, city,country);
				cus.add(c);
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		return cus;
	}
	
	
}
