package art_Gallery;

import java.io.File;
import java.io.FileInputStream;
import java.net.URL;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;


public class RequestDBUtil {
	
	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	
	private static String cusUsername;
	private static String artistUsername;
	
	// GET SESSION USERNAME --> CUSTOMER
		public static String getUserName(int userID) {
			Connection con;
			PreparedStatement pst;
			String UIDConverted = Integer.toString(userID);
			ResultSet rs;
			
			try {
				con = DatabaseUtilizer.utilizeConnection();
				pst = con.prepareStatement("SELECT full_name FROM registered_customer WHERE customer_id = ?");
				pst.setString(1, UIDConverted);
				rs = pst.executeQuery();
				
				while(rs.next()) {
					cusUsername = rs.getString(1);
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
			
			return cusUsername;		
		}
		

	
	//////////////////customer login
       public static List<Request> validateCus(int userID){
		
		ArrayList<Request> req = new ArrayList<>();
		PreparedStatement pst;
		String UIDConverted = Integer.toString(userID);
				
		try {
			con = RequestDBConnector.getConnection();
			stmt = con.createStatement();
			System.out.println("User ID in RequestDBUtil" + UIDConverted);
			pst = con.prepareStatement("SELECT * FROM special_request sr, registered_customer rc WHERE rc.customer_id=? and rc.customer_id=sr.c_customer_id");
			pst.setString(1, UIDConverted);
			rs = pst.executeQuery();
			

			System.out.println("After query execution...");
			
			while(rs.next()) {
				int request_id = rs.getInt(1);
				String name = rs.getString(2);
				int phone = rs.getInt(3);
				String email = rs.getString(4);
				String message = rs.getString(5);
				String photograph = rs.getString(6);
				String add_line_01 = rs.getString(7);
				String add_line_02 = rs.getString(8);
			    int postal_code = rs.getInt(9);
				String province = rs.getString(10);
				String city = rs.getString(11);
				String country = rs.getString(12);
				int c_customer_id = rs.getInt(13);
				int artist_name = rs.getInt(14);
				boolean accept = rs.getBoolean(15);
				
				Request r = new Request(request_id,name,phone,email,message,photograph,add_line_01,add_line_02,postal_code,province,city,country,c_customer_id,artist_name,accept);
				req.add(r);
			}
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return req;
		
	}
	
	//insert request
	public static boolean insertSRequest(String name,String phone,String email,String message,String photograph,
			String add_line_01,String add_line_02,String postal_code,String province,String city,String country,int userID,String artist_name_list) {
		
		int artName=3;
		System.out.println(artist_name_list);
		boolean isSuccess = false;

		int convertedPhone = Integer.parseInt(phone);
		int convertedPostalCode = Integer.parseInt(postal_code);
		
		try {
			
			con = RequestDBConnector.getConnection();
			stmt = con.createStatement();
			
			
			  try {
				  System.out.println("inside the try"+artist_name_list);
				  String sql_1 ="select * from artist a where a.name='"+artist_name_list+"'";
				  ResultSet rs1 = stmt.executeQuery(sql_1);
				  System.out.println("no issue ");
				  
				  if(rs1.next()){
					  int artName_new = rs1.getInt("artist_id"); 
					  System.out.println("try "+artName_new); 
					  }
				  } catch(Exception e) { 
					  e.printStackTrace(); 
					  
				  }
			 
			
			String sql =
					 "insert into special_request(request_id,name,phone,email,message,photograph,add_line_01,add_line_02,postal_code,province,city,country,c_customer_id,artist_name) "
					 
					 + "values(?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
					 


					 
					PreparedStatement preparedStmt = con.prepareStatement(sql);
					

					
					
					 preparedStmt.setInt (1, 0);
					 preparedStmt.setString (2, name);
					 preparedStmt.setInt (3, convertedPhone); 
					 preparedStmt.setString (4, email);
					 preparedStmt.setString (5, message); 
					 preparedStmt.setString (6, photograph);
					 preparedStmt.setString (7, add_line_01); 
					 preparedStmt.setString (8,add_line_02); 
					 preparedStmt.setInt (9, convertedPostalCode); 
					 preparedStmt.setString (10, province); 
					 preparedStmt.setString (11, city); 
					 preparedStmt.setString (12,country); 
					 preparedStmt.setInt (13, userID); 
					 preparedStmt.setInt (14, artName);
					 
					 int n = preparedStmt.executeUpdate();

				
					
					if(n > 0) {
						isSuccess = true;
					}
					else {
						isSuccess = false;
					}
				
		}
		
		
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
	}
	
	//update request
	public static boolean updateRequest(String request_id,String name,String phone,String email,String message,String photograph,
			String add_line_01,String add_line_02,String postal_code,String province,String city,String country,String c_customer_id,String artist_name,String accept) {
		
		
		try {
			con = RequestDBConnector.getConnection();
			stmt = con.createStatement();
			String sql = "update special_request set name='"+name+"',phone='"+phone+"',email='"+email+"',message='"+message+"',photograph='"+photograph+"',add_line_01='"+add_line_01+"',add_line_02='"+add_line_02+"',postal_code='"+postal_code+"',province='"+province+"',city='"+city+"',country='"+country+"' where request_id='"+request_id+"'";
			
			int rs = stmt.executeUpdate(sql);
			
			if(rs>0) {
				isSuccess = true;
			}
			else {
				isSuccess = false;
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
	}
	
	public static List<Request> getRequestDetails(String Id){
		
		int convertedID = Integer.parseInt(Id);
		
		ArrayList<Request> req = new ArrayList<>();
		
		try {
			con = RequestDBConnector.getConnection();
			stmt = con.createStatement();
			String sql = "select * from special_request where request_id='"+convertedID+"'";
			rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				int request_id = rs.getInt(1);
				String name = rs.getString(2);
				int phone = rs.getInt(3);
				String email = rs.getString(4);
				String message = rs.getString(5);
				String photograph = rs.getString(6);
				String add_line_01 = rs.getString(7);
				String add_line_02 = rs.getString(8);
			    int postal_code = rs.getInt(9);
				String province = rs.getString(10);
				String city = rs.getString(11);
				String country = rs.getString(12);
				int c_customer_id = rs.getInt(13);
				int artist_name = rs.getInt(14);
				boolean accept = rs.getBoolean(15);
				
				Request r = new Request(request_id,name,phone,email,message,photograph,add_line_01,add_line_02,postal_code,province,city,country,c_customer_id,artist_name,accept);
				req.add(r);
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return req;
	}
	
	public static boolean deleteRequest(String Id) {
		
		int convertedID = Integer.parseInt(Id);
		
		try {
			con = RequestDBConnector.getConnection();
			stmt = con.createStatement();
			String sql = "delete from special_request where request_id='"+convertedID+"'";
			int r = stmt.executeUpdate(sql);
			
			if(r>0) {
				isSuccess = true;
			}
			else {
				isSuccess = false;
			}
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
	}
	
	
     
}
