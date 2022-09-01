package DB;

import java.sql.*;
import java.util.ArrayList;

import javax.naming.NamingException;

import util.ConnectionPool;

public class DAOdelivery {
	

	public static int insert( String product_code, String product_name, String user_id, String user_addr, String user_tel, String user_email) throws NamingException, SQLException {
		
		Connection conn = null;
		PreparedStatement stmt = null;
		
		String sql = "INSERT INTO delivery (product_code,product_name,user_id,user_addr,user_tel,user_email) VALUES(?,?,?,?,?,?)";
	
		conn= ConnectionPool.get();
		
		stmt = conn.prepareStatement(sql);
			stmt.setString(1, product_code);
			stmt.setString(2, product_name);		
			stmt.setString(3, user_id);		
			stmt.setString(4, user_addr);
			stmt.setString(5, user_tel);	
			stmt.setString(6, user_email);	
			
			
		int result = stmt.executeUpdate(); 
		
		return result;
	}
	
	public static ArrayList<DTOdelivery> getList() throws NamingException, SQLException{
		Connection conn = null;
		PreparedStatement stmt = null;
		ResultSet rs = null; 
		
		String sql = "SELECT * FROM delivery";
	
		conn= ConnectionPool.get();
		stmt = conn.prepareStatement(sql);
		rs = stmt.executeQuery();
		
		ArrayList<DTOdelivery> lists = new ArrayList<DTOdelivery>();
		while(rs.next()) {
			lists.add(new DTOdelivery(rs.getString(1),
									rs.getString(2),
									rs.getString(3),
									rs.getString(4),
									rs.getString(5),
									rs.getString(6),
									rs.getString(7),
									rs.getString(8),
									rs.getString(9),
									rs.getString(10),
									rs.getString(11)));
									
		}
		return lists;
	}
	
	public static ArrayList<DTOdelivery> getListU1(String user_id) throws NamingException, SQLException{
		Connection conn = null;
		PreparedStatement stmt = null;
		ResultSet rs = null; 
	
		String sql = "SELECT * FROM delivery WHERE user_id=?";
	
		conn= ConnectionPool.get();
		stmt = conn.prepareStatement(sql);
				stmt.setString(1, user_id);	
		rs = stmt.executeQuery();
		
		ArrayList<DTOdelivery> lists = new ArrayList<DTOdelivery>();
		while(rs.next()) {
			lists.add(new DTOdelivery(rs.getString(1),
									rs.getString(2),
									rs.getString(3),
									rs.getString(4),
									rs.getString(5),
									rs.getString(6),
									rs.getString(7),
									rs.getString(8),
									rs.getString(9),
									rs.getString(10),
									rs.getString(11)));
									
		}
		return lists;
	}
	
	public static ArrayList<DTOdelivery> getListU2(String user_id) throws NamingException, SQLException{
		Connection conn = null;
		PreparedStatement stmt = null;
		ResultSet rs = null; 
	
		String sql = "SELECT * FROM delivery WHERE (user_id=?) AND( delivery_done='1')";
	
		conn= ConnectionPool.get();
		stmt = conn.prepareStatement(sql);
				stmt.setString(1, user_id);	
		rs = stmt.executeQuery();
		
		ArrayList<DTOdelivery> lists = new ArrayList<DTOdelivery>();
		while(rs.next()) {
			lists.add(new DTOdelivery(rs.getString(1),
									rs.getString(2),
									rs.getString(3),
									rs.getString(4),
									rs.getString(5),
									rs.getString(6),
									rs.getString(7),
									rs.getString(8),
									rs.getString(9),
									rs.getString(10),
									rs.getString(11)));
									
		}
		return lists;
	}
}
