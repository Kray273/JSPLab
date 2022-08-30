package DB;

import java.sql.*;
import java.util.ArrayList;

import javax.naming.NamingException;

import util.ConnectionPool;

public class DAOraw {
	
	public static int insert( String raw_code, String raw_name, String raw_amount, String raw_image,String raw_location) throws NamingException, SQLException {
		
		Connection conn = null;
		PreparedStatement stmt = null;
		
		String sql = "INSERT INTO raw (raw_code, raw_name, raw_amount, raw_image, raw_location) VALUES(?,?,?,?,?)";

		conn= ConnectionPool.get();
		
		stmt = conn.prepareStatement(sql);
			stmt.setString(1, raw_code);
			stmt.setString(2, raw_name);		
			stmt.setString(3, raw_amount);		
			stmt.setString(4, raw_image);
			stmt.setString(5, raw_location);	
			
			
		int result = stmt.executeUpdate(); 
		
		return result;
	}
	
	public static ArrayList<DTOraw> getList() throws NamingException, SQLException{
		Connection conn = null;
		PreparedStatement stmt = null;
		ResultSet rs = null; 
		
		String sql = "SELECT * FROM raw";
	
		conn= ConnectionPool.get();
		stmt = conn.prepareStatement(sql);
		rs = stmt.executeQuery();
		
		ArrayList<DTOraw> lists = new ArrayList<DTOraw>();
		while(rs.next()) {
			lists.add(new DTOraw(rs.getString(1),
									rs.getString(2),
									rs.getString(3),
									rs.getString(4),
									rs.getString(5),
									rs.getString(6)));
									
		}
		return lists;
	}
	
	public static DTOraw detail(String raw_code) throws NamingException, SQLException {
		Connection conn = null;
		PreparedStatement stmt = null;
		ResultSet rs = null; 
		
		String sql = "SELECT * FROM raw WHERE raw_code=? ";
		conn= ConnectionPool.get();
		stmt = conn.prepareStatement(sql);
			stmt.setString(1, raw_code);	
		rs = stmt.executeQuery();
		
		rs.next();
		
		raw_code = rs.getString(1);
		String raw_name = rs.getString(2);
		String raw_amount = rs.getString(3);
		String raw_image = rs.getString(4);
		String raw_location = rs.getString(5);
		String raw_date = rs.getString(6);
		
		
		DTOraw list = new DTOraw(raw_code, raw_name, raw_amount, raw_image, raw_location,raw_date );
		
		return list;
	}
	
	public static int edit(String raw_code, String raw_name, String raw_amount, String raw_image, String raw_location) throws NamingException, SQLException {
			
			Connection conn = null;	
			PreparedStatement stmt = null;
			
			String sql = "UPDATE raw SET raw_code=?, raw_name=?, raw_amount=?, raw_image=?, raw_location=? WHERE raw_code=?";
			
				
			conn= ConnectionPool.get();
			
			stmt = conn.prepareStatement(sql);
				stmt.setString(1, raw_code);
				stmt.setString(2, raw_name);		
				stmt.setString(3, raw_amount);		
				stmt.setString(4, raw_image);		
				stmt.setString(5, raw_location);		
				stmt.setString(6, raw_code);		
				
			int result = stmt.executeUpdate(); 
			
			return result;
		}
}
