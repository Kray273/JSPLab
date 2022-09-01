package DB;

import java.sql.*;
import java.util.ArrayList;

import javax.naming.NamingException;

import util.ConnectionPool;

public class DAOuser {
	
	public static int login(String user_id, String user_pw) throws NamingException, SQLException {
		Connection conn = null;
		PreparedStatement stmt = null;
		ResultSet rs = null; 
		
		int result = 0;
		
		String sql = "SELECT user_id, user_pw FROM user WHERE user_id=?";
		conn= ConnectionPool.get();
		stmt = conn.prepareStatement(sql);
			stmt.setString(1, user_id);
			
		rs = stmt.executeQuery();
		
		if(!rs.next()) {
			return 3;
		} //비회원
	
		if(user_pw.equals(rs.getString("user_pw"))) {
			return 1;
		} //문제없는 회원
		
		return 2; //비번이 틀릴때
	}

	
	public static int singup(String user_id,String user_pw, String user_tel,String user_email,String user_addr) throws NamingException, SQLException {
		
		Connection conn = null;
		PreparedStatement stmt = null;
		
		String sql = "INSERT INTO user(user_id, user_pw, user_tel, user_email, user_addr) VALUES(?,?,?,?,?)";
		conn= ConnectionPool.get();
		
		stmt = conn.prepareStatement(sql);
			stmt.setString(1, user_id);
			stmt.setString(2, user_pw);		
			stmt.setString(3, user_tel);		
			stmt.setString(4, user_email);		
			stmt.setString(5, user_addr);						
			
		int result = stmt.executeUpdate();
		
		return result;
	}
	
	public static int drop(String user_id, String user_pw) throws NamingException, SQLException  {
		Connection conn = null;
		PreparedStatement stmt = null;
		int result = 0;
		
		String sql = "DELETE FROM user WHERE (user_id=?) and (user_pw=?) ";
		
		conn= ConnectionPool.get();
		
		stmt = conn.prepareStatement(sql);
			stmt.setString(1, user_id);
			stmt.setString(2, user_pw);			
			
		result = stmt.executeUpdate();
		// 결과가 성공1 과 실패 0으로 넘어 온다. 
		
		return result;	
	}
	
	public static DTOuser detail(String user_id) throws NamingException, SQLException {
		Connection conn = null;
		PreparedStatement stmt = null;
		ResultSet rs = null; 
		
		String sql = "SELECT * FROM user WHERE user_id=? ";
		conn= ConnectionPool.get();
		stmt = conn.prepareStatement(sql);
			stmt.setString(1, user_id);	
		rs = stmt.executeQuery();
		
		rs.next();
		
		user_id = rs.getString(1);
		String user_no = rs.getString(2);
		String user_pw = rs.getString(3);
		String user_tel = rs.getString(4);
		String user_email = rs.getString(5);
		String user_addr = rs.getString(6);
		String user_level = rs.getString(7);
		String user_date = rs.getString(8);
		
		DTOuser list = new DTOuser(user_id, user_no, user_pw, user_tel, user_email,user_addr, user_level, user_date	);
		
		return list;
	}
	
	public static int kakaologin(String user_id) throws NamingException, SQLException {
		Connection conn = null;
		PreparedStatement stmt = null;
		ResultSet rs = null; 
		
		int result = 0;
		
		String sql = "SELECT user_id FROM user WHERE user_id=?";
		conn= ConnectionPool.get();
		stmt = conn.prepareStatement(sql);
			stmt.setString(1, user_id);
			
		rs = stmt.executeQuery();
		
		if(!rs.next()) {
			return 3;
		} //비회원
		
		return 1; //임시 
	}
	
	public static ArrayList<DTOuser> getList() throws NamingException, SQLException{
		Connection conn = null;
		PreparedStatement stmt = null;
		ResultSet rs = null; 
		
		String sql = "SELECT * FROM user";
	
		conn= ConnectionPool.get();
		stmt = conn.prepareStatement(sql);
		rs = stmt.executeQuery();
		
		ArrayList<DTOuser> lists = new ArrayList<DTOuser>();
		while(rs.next()) {
			lists.add(new DTOuser(rs.getString(1),
									rs.getString(2),
									rs.getString(3),
									rs.getString(4),
									rs.getString(5),
									rs.getString(6),
									rs.getString(7),
									rs.getString(8)));
									
		}
		return lists;
	}

	
	public static int edit(String user_id, String user_tel,String user_email,String user_addr,String user_level) throws NamingException, SQLException {	
		Connection conn = null;	
		PreparedStatement stmt = null;
		
		String sql = "UPDATE user SET user_id=?, user_tel=?, user_email=?, user_addr=?, user_level=? WHERE user_id=?";
		
			
		conn= ConnectionPool.get();
		
		stmt = conn.prepareStatement(sql);
			stmt.setString(1, user_id);
			stmt.setString(2, user_tel);		
			stmt.setString(3, user_email);		
			stmt.setString(4, user_addr);		
			stmt.setString(5, user_level);	
			stmt.setString(6, user_id);
				
			
		int result = stmt.executeUpdate(); 
		
		return result;
	}
	public static int editU(String user_id, String user_tel,String user_email,String user_addr) throws NamingException, SQLException {	
		Connection conn = null;	
		PreparedStatement stmt = null;
		
		String sql = "UPDATE user SET user_id=?, user_tel=?, user_email=?, user_addr=? WHERE user_id=?";
		
			
		conn= ConnectionPool.get();
		
		stmt = conn.prepareStatement(sql);
			stmt.setString(1, user_id);
			stmt.setString(2, user_tel);		
			stmt.setString(3, user_email);		
			stmt.setString(4, user_addr);	
			stmt.setString(5, user_id);
				
			
		int result = stmt.executeUpdate(); 
		
		return result;
	}
}
