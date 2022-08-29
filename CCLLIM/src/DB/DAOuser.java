package DB;

import java.sql.*;
import java.util.ArrayList;

import javax.naming.NamingException;

import util.ConnectionPool;

public class DAOuser {

	public static int login(String user_id) throws NamingException, SQLException {
		Connection conn = null;
		PreparedStatement stmt = null;
		ResultSet rs = null; 
		
		int result = 0;
		
		String sql = "SELECT user_id FROM user WHERE user_id=?";
		conn= ConnectionPool.get();
		stmt = conn.prepareStatement(sql);
			stmt.setString(1, user_id);
			
		rs = stmt.executeQuery();
		
		if(rs.next()) {
			return 1;
		} //회원
		
		return 2; //회원아이디가 틀리면
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
		
		DTOuser list = new DTOuser(user_id, user_no, user_pw, user_tel, user_email,user_addr, user_level, user_date
				);
		
		return list;
	}
}
