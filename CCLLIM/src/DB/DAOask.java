package DB;

import java.sql.*;
import java.util.ArrayList;

import javax.naming.NamingException;

import util.ConnectionPool;

public class DAOask {
	
	public static int insert( String ask_title, String user_id, String made_content, String ask_sol, String ask_sign, String ask_status, String made_date) throws NamingException, SQLException {
		
		Connection conn = null;
		PreparedStatement stmt = null;
		
		String sql = "INSERT INTO ask (ask_title, user_id, made_content, ask_sol,ask_sign,ask_status,made_date) VALUES(?,?,?,?,?,?,?)";
	
		conn= ConnectionPool.get();
		
		stmt = conn.prepareStatement(sql);
			stmt.setString(1, ask_title);
			stmt.setString(2, user_id);		
			stmt.setString(3, made_content);		
			stmt.setString(4, ask_sol);
			stmt.setString(5, ask_sign);	
			stmt.setString(6, ask_status);	
			stmt.setString(7, made_date);	
			
			
		int result = stmt.executeUpdate(); 
		
		return result;
	}
	public static ArrayList<DTOask> getList() throws NamingException, SQLException{
		Connection conn = null;
		PreparedStatement stmt = null;
		ResultSet rs = null; 
		
		String sql = "SELECT * FROM ask";
	
		conn= ConnectionPool.get();
		stmt = conn.prepareStatement(sql);
		rs = stmt.executeQuery();
		
		ArrayList<DTOask> lists = new ArrayList<DTOask>();
		while(rs.next()) {
			lists.add(new DTOask(rs.getString(1),
									rs.getString(2),
									rs.getString(3),
									rs.getString(4),
									rs.getString(5),
									rs.getString(6),
									rs.getString(7),
									rs.getString(8),
									rs.getString(9)));
									
		}
		return lists;
	}
	
	public static ArrayList<DTOask> getListU(String user_id) throws NamingException, SQLException{
		Connection conn = null;
		PreparedStatement stmt = null;
		ResultSet rs = null; 
		
		String sql = "SELECT * FROM ask WHERE user_id=?";
	
		conn= ConnectionPool.get();
		stmt = conn.prepareStatement(sql);
		stmt.setString(1, user_id);	
		rs = stmt.executeQuery();
		
		ArrayList<DTOask> lists = new ArrayList<DTOask>();
		while(rs.next()) {
			lists.add(new DTOask(rs.getString(1),
									rs.getString(2),
									rs.getString(3),
									rs.getString(4),
									rs.getString(5),
									rs.getString(6),
									rs.getString(7),
									rs.getString(8),
									rs.getString(9)));
									
		}
		return lists;
	}

	public static ArrayList<DTOask> getList12() throws NamingException, SQLException{
		Connection conn = null;
		PreparedStatement stmt = null;
		ResultSet rs = null; 
		
		String sql = "SELECT * FROM ask WHERE ask_status in('1','2') ORDER BY ask_status";
		
		
		conn= ConnectionPool.get();
		stmt = conn.prepareStatement(sql);
		rs = stmt.executeQuery();
		
		ArrayList<DTOask> lists = new ArrayList<DTOask>();
		while(rs.next()) {
			lists.add(new DTOask(rs.getString(1),
									rs.getString(2),
									rs.getString(3),
									rs.getString(4),
									rs.getString(5),
									rs.getString(6),
									rs.getString(7),
									rs.getString(8),
									rs.getString(9)));
									
		}
		return lists;
	}
	public static DTOask detail(String ask_no) throws NamingException, SQLException {
		Connection conn = null;
		PreparedStatement stmt = null;
		ResultSet rs = null; 
		
		String sql = "SELECT * FROM ask WHERE ask_no=? ";
		conn= ConnectionPool.get();
		stmt = conn.prepareStatement(sql);
			stmt.setString(1, ask_no);	
		rs = stmt.executeQuery();
		
		rs.next();
		
		ask_no = rs.getString(1);
		String ask_title = rs.getString(2);
		String user_id = rs.getString(3);
		String made_content = rs.getString(4);
		String ask_sol = rs.getString(5);
		String ask_sign = rs.getString(6);
		String ask_status = rs.getString(7);
		String ask_day = rs.getString(8);
		String made_date = rs.getString(9);
		
		DTOask list = new DTOask(ask_no, ask_title, user_id, made_content, ask_sol,ask_sign,ask_status,ask_day,made_date);
		
		return list;
	}
	
	public static int edit(String ask_no, String ask_title, String ask_sol, String ask_sign, String ask_status) throws NamingException, SQLException {
			
			Connection conn = null;	
			PreparedStatement stmt = null;
			
			String sql = "UPDATE ask SET ask_title=?, ask_sol=?, ask_sign=?, ask_status=? WHERE ask_no=?";
			
				
			conn= ConnectionPool.get();
			
			stmt = conn.prepareStatement(sql);
				stmt.setString(1, ask_title);
				stmt.setString(2, ask_sol);		
				stmt.setString(3, ask_sign);		
				stmt.setString(4, ask_status);		
				stmt.setString(5, ask_no);		
				
			int result = stmt.executeUpdate(); 
			
			return result;
		}
}
