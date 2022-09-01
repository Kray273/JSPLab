package DB;

import java.sql.*;
import java.util.ArrayList;

import javax.naming.NamingException;

import util.ConnectionPool;

public class DAOmade {
	
	public static int insert( String user_id, String made_title, String made_content, String made_status) throws NamingException, SQLException {
		
		Connection conn = null;
		PreparedStatement stmt = null;
		
		String sql = "INSERT INTO made (user_id, made_title, made_content, made_status) VALUES(?,?,?,?)";

		conn= ConnectionPool.get();
		
		stmt = conn.prepareStatement(sql);
			stmt.setString(1, user_id);
			stmt.setString(2, made_title);		
			stmt.setString(3, made_content);		
			stmt.setString(4, made_status);
		int result = stmt.executeUpdate(); 
		
		return result;
	}
	
	public static ArrayList<DTOmade> getList() throws NamingException, SQLException{
		Connection conn = null;
		PreparedStatement stmt = null;
		ResultSet rs = null; 
		
		String sql = "SELECT * FROM made";
	
		conn= ConnectionPool.get();
		stmt = conn.prepareStatement(sql);
		rs = stmt.executeQuery();
		
		ArrayList<DTOmade> lists = new ArrayList<DTOmade>();
		while(rs.next()) {
			lists.add(new DTOmade(rs.getString(1),
									rs.getString(2),
									rs.getString(3),
									rs.getString(4),
									rs.getString(5),
									rs.getString(6),
									rs.getString(7)));
									
		}
		return lists;
	}
	
	public static ArrayList<DTOmade> getListU(String user_id) throws NamingException, SQLException{
		Connection conn = null;
		PreparedStatement stmt = null;
		ResultSet rs = null; 
	
		String sql = "SELECT * FROM made WHERE user_id=?";
	
		conn= ConnectionPool.get();
		stmt = conn.prepareStatement(sql);
				stmt.setString(1, user_id);	
		rs = stmt.executeQuery();
		
		ArrayList<DTOmade> lists = new ArrayList<DTOmade>();
		while(rs.next()) {
			lists.add(new DTOmade(rs.getString(1),
									rs.getString(2),
									rs.getString(3),
									rs.getString(4),
									rs.getString(5),
									rs.getString(6),
									rs.getString(7)));
									
		}
		return lists;
	}
	
	public static ArrayList<DTOmade> getStatus1() throws NamingException, SQLException{
		Connection conn = null;
		PreparedStatement stmt = null;
		ResultSet rs = null; 
		
		String sql = "SELECT * FROM made WHERE made_status=1";
	
		conn= ConnectionPool.get();
		stmt = conn.prepareStatement(sql);
		
		rs = stmt.executeQuery();
		
		ArrayList<DTOmade> lists = new ArrayList<DTOmade>();
		while(rs.next()) {
			lists.add(new DTOmade(rs.getString(1),
									rs.getString(2),
									rs.getString(3),
									rs.getString(4),
									rs.getString(5),
									rs.getString(6),
									rs.getString(7)));
									
		}
		return lists;
	}
	
	public static ArrayList<DTOmade> getStatus2() throws NamingException, SQLException{
		Connection conn = null;
		PreparedStatement stmt = null;
		ResultSet rs = null; 
		
		String sql = "SELECT * FROM made WHERE made_status=2";
	
		conn= ConnectionPool.get();
		stmt = conn.prepareStatement(sql);
		
		rs = stmt.executeQuery();
		
		ArrayList<DTOmade> lists = new ArrayList<DTOmade>();
		while(rs.next()) {
			lists.add(new DTOmade(rs.getString(1),
									rs.getString(2),
									rs.getString(3),
									rs.getString(4),
									rs.getString(5),
									rs.getString(6),
									rs.getString(7)));
									
		}
		return lists;
	}
	public static ArrayList<DTOmade> getStatus3() throws NamingException, SQLException{
		Connection conn = null;
		PreparedStatement stmt = null;
		ResultSet rs = null; 
		
		String sql = "SELECT * FROM made WHERE made_status=3";
	
		conn= ConnectionPool.get();
		stmt = conn.prepareStatement(sql);
		
		rs = stmt.executeQuery();
		
		ArrayList<DTOmade> lists = new ArrayList<DTOmade>();
		while(rs.next()) {
			lists.add(new DTOmade(rs.getString(1),
									rs.getString(2),
									rs.getString(3),
									rs.getString(4),
									rs.getString(5),
									rs.getString(6),
									rs.getString(7)));
									
		}
		return lists;
	}
	public static ArrayList<DTOmade> getStatus4() throws NamingException, SQLException{
		Connection conn = null;
		PreparedStatement stmt = null;
		ResultSet rs = null; 
		
		String sql = "SELECT * FROM made WHERE made_status=4";
	
		conn= ConnectionPool.get();
		stmt = conn.prepareStatement(sql);
		
		rs = stmt.executeQuery();
		
		ArrayList<DTOmade> lists = new ArrayList<DTOmade>();
		while(rs.next()) {
			lists.add(new DTOmade(rs.getString(1),
									rs.getString(2),
									rs.getString(3),
									rs.getString(4),
									rs.getString(5),
									rs.getString(6),
									rs.getString(7)));
									
		}
		return lists;
	}
	public static ArrayList<DTOmade> getStatus123() throws NamingException, SQLException{
		Connection conn = null;
		PreparedStatement stmt = null;
		ResultSet rs = null; 
		
		String sql = "SELECT * FROM made WHERE made_status in('1','2','3') ORDER BY made_no";
	
		conn= ConnectionPool.get();
		stmt = conn.prepareStatement(sql);
		
		rs = stmt.executeQuery();
		
		ArrayList<DTOmade> lists = new ArrayList<DTOmade>();
		while(rs.next()) {
			lists.add(new DTOmade(rs.getString(1),
									rs.getString(2),
									rs.getString(3),
									rs.getString(4),
									rs.getString(5),
									rs.getString(6),
									rs.getString(7)));
									
		}
		return lists;
	}
	
	public static DTOmade detail(String made_no) throws NamingException, SQLException {
		Connection conn = null;
		PreparedStatement stmt = null;
		ResultSet rs = null; 
		
		String sql = "SELECT * FROM made WHERE made_no=? ";
		conn= ConnectionPool.get();
		stmt = conn.prepareStatement(sql);
			stmt.setString(1, made_no);	
		rs = stmt.executeQuery();
		
		rs.next();
		
		made_no = rs.getString(1);
		String user_id = rs.getString(2);
		String made_title = rs.getString(3);
		String made_content = rs.getString(4);
		String made_raw = rs.getString(5);
		String made_status = rs.getString(6);
		String made_date = rs.getString(7);
		
		
		DTOmade list = new DTOmade(made_no,user_id, made_title, made_content,made_raw, made_status,made_date );
		
		return list;
	}
	
	public static ArrayList<DTOmade> getListU123(String user_id) throws NamingException, SQLException{
		Connection conn = null;
		PreparedStatement stmt = null;
		ResultSet rs = null; 
	
		String sql = "SELECT * FROM made WHERE (made_status in('1','2','3'))AND (user_id=?)";
	
		conn= ConnectionPool.get();
		stmt = conn.prepareStatement(sql);
				stmt.setString(1, user_id);	
		rs = stmt.executeQuery();
		
		ArrayList<DTOmade> lists = new ArrayList<DTOmade>();
		while(rs.next()) {
			lists.add(new DTOmade(rs.getString(1),
									rs.getString(2),
									rs.getString(3),
									rs.getString(4),
									rs.getString(5),
									rs.getString(6),
									rs.getString(7)));
									
		}
		return lists;
	}
}
