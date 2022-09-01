package DB;

import java.sql.*;
import java.util.ArrayList;

import javax.naming.NamingException;

import util.ConnectionPool;

public class DAOproduct {
	
	public static int insert( String product_code, String product_name, String product_price, String product_amount,
			String product_desc, String product_img1, String product_img2, String product_img3,	String product_launch) throws NamingException, SQLException {
		
		Connection conn = null;
		PreparedStatement stmt = null;
		
		String sql = "INSERT INTO product (product_code, product_name, product_price, product_amount, product_desc,  product_img1, product_img2, product_img3,product_launch) VALUES(?,?,?,?,?,?,?,?,?)";

		conn= ConnectionPool.get();
		
		stmt = conn.prepareStatement(sql);
			stmt.setString(1, product_code);
			stmt.setString(2, product_name);		
			stmt.setString(3, product_price);		
			stmt.setString(4, product_amount);
			stmt.setString(5, product_desc);		
			stmt.setString(6, product_img1);		
			stmt.setString(7, product_img2);
			stmt.setString(8, product_img3);		
			stmt.setString(9, product_launch);		
			
		int result = stmt.executeUpdate(); 
		
		return result;
	}
	
	public static ArrayList<DTOproduct> getList() throws NamingException, SQLException{
		Connection conn = null;
		PreparedStatement stmt = null;
		ResultSet rs = null; 
		
		String sql = "SELECT * FROM product";
	
		conn= ConnectionPool.get();
		stmt = conn.prepareStatement(sql);
		rs = stmt.executeQuery();
		
		ArrayList<DTOproduct> lists = new ArrayList<DTOproduct>();
		while(rs.next()) {
			lists.add(new DTOproduct(rs.getString(1),
									rs.getString(2),
									rs.getString(3),
									rs.getString(4),
									rs.getString(5),
									rs.getString(6),
									rs.getString(7),
									rs.getString(8),
									rs.getString(9),
									rs.getString(10)));
									
		}
		return lists;
	}
	public static ArrayList<DTOproduct> getList1() throws NamingException, SQLException{
		Connection conn = null;
		PreparedStatement stmt = null;
		ResultSet rs = null; 
		
		String sql = "SELECT * FROM product WHERE product_launch=1";
		
		conn= ConnectionPool.get();
		stmt = conn.prepareStatement(sql);
		rs = stmt.executeQuery();
		
		ArrayList<DTOproduct> lists = new ArrayList<DTOproduct>();
		while(rs.next()) {
			lists.add(new DTOproduct(rs.getString(1),
									rs.getString(2),
									rs.getString(3),
									rs.getString(4),
									rs.getString(5),
									rs.getString(6),
									rs.getString(7),
									rs.getString(8),
									rs.getString(9),
									rs.getString(10)));
									
		}
		return lists;
	}
	public static ArrayList<DTOproduct> getList2() throws NamingException, SQLException{
		Connection conn = null;
		PreparedStatement stmt = null;
		ResultSet rs = null; 
		
		String sql = "SELECT * FROM product WHERE product_launch=2";
	
		conn= ConnectionPool.get();
		stmt = conn.prepareStatement(sql);
		rs = stmt.executeQuery();
		
		ArrayList<DTOproduct> lists = new ArrayList<DTOproduct>();
		while(rs.next()) {
			lists.add(new DTOproduct(rs.getString(1),
									rs.getString(2),
									rs.getString(3),
									rs.getString(4),
									rs.getString(5),
									rs.getString(6),
									rs.getString(7),
									rs.getString(8),
									rs.getString(9),
									rs.getString(10)));
									
		}
		return lists;
	}
	public static ArrayList<DTOproduct> getList4() throws NamingException, SQLException{
		Connection conn = null;
		PreparedStatement stmt = null;
		ResultSet rs = null; 
		
		String sql = "SELECT * FROM product WHERE product_launch=4";
	
		conn= ConnectionPool.get();
		stmt = conn.prepareStatement(sql);
		rs = stmt.executeQuery();
		
		ArrayList<DTOproduct> lists = new ArrayList<DTOproduct>();
		while(rs.next()) {
			lists.add(new DTOproduct(rs.getString(1),
									rs.getString(2),
									rs.getString(3),
									rs.getString(4),
									rs.getString(5),
									rs.getString(6),
									rs.getString(7),
									rs.getString(8),
									rs.getString(9),
									rs.getString(10)));
									
		}
		return lists;
	}
	
	public static ArrayList<DTOproduct> getListA() throws NamingException, SQLException{
		Connection conn = null;
		PreparedStatement stmt = null;
		ResultSet rs = null; 
		
		String sql = "SELECT * FROM product WHERE product_launch IN('1','2','4') ORDER BY product_launch";
	
		conn= ConnectionPool.get();
		stmt = conn.prepareStatement(sql);
		rs = stmt.executeQuery();
		
		ArrayList<DTOproduct> lists = new ArrayList<DTOproduct>();
		while(rs.next()) {
			lists.add(new DTOproduct(rs.getString(1),
									rs.getString(2),
									rs.getString(3),
									rs.getString(4),
									rs.getString(5),
									rs.getString(6),
									rs.getString(7),
									rs.getString(8),
									rs.getString(9),
									rs.getString(10)));
									
		}
		return lists;
	}
	public static DTOproduct detail(String product_code) throws NamingException, SQLException {
		Connection conn = null;
		PreparedStatement stmt = null;
		ResultSet rs = null; 
		
		String sql = "SELECT * FROM product WHERE product_code=? ";
		conn= ConnectionPool.get();
		stmt = conn.prepareStatement(sql);
			stmt.setString(1, product_code);	
		rs = stmt.executeQuery();
		
		rs.next();
		
		product_code = rs.getString(1);
		String product_name = rs.getString(2);
		String product_price = rs.getString(3);
		String product_amount = rs.getString(4);
		String product_desc = rs.getString(5);
		String product_img1 = rs.getString(6);
		String product_img2 = rs.getString(7);
		String product_img3 = rs.getString(8);
		String product_date = rs.getString(9);
		String product_launch = rs.getString(10);
		
		
		DTOproduct list = new DTOproduct(product_code, product_name, product_price, product_amount, product_desc,  product_img1, product_img2, product_img3,product_date,product_launch);
		
		return list;
	}
	
	public static int edit(String product_code, String product_name, String product_price, String product_amount, String product_desc,String product_img1,String product_img2,String product_img3,String product_launch) throws NamingException, SQLException {
		
		Connection conn = null;	
		PreparedStatement stmt = null;
		
		String sql = "UPDATE product SET product_code=?, product_name=?, product_price=?, product_amount=?, product_desc=?, product_img1=?, product_img2=?, product_img3=?, product_launch=? WHERE product_code=?";
		
		conn= ConnectionPool.get();
		
		stmt = conn.prepareStatement(sql);
			stmt.setString(1, product_code);
			stmt.setString(2, product_name);		
			stmt.setString(3, product_price);		
			stmt.setString(4, product_amount);		
			stmt.setString(5, product_desc);		
			stmt.setString(6, product_img1);		
			stmt.setString(7, product_img2);		
			stmt.setString(8, product_img3);		
			stmt.setString(9, product_launch);		
			stmt.setString(10, product_code);	
				
			
		int result = stmt.executeUpdate(); 
		
		return result;
	}
	
	
	
}
