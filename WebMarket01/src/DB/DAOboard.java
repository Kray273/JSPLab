package DB;

import java.sql.*;
import java.util.ArrayList;

import javax.naming.NamingException;

import util.ConnectionPool;

public class DAOboard {

	public static int boardinsert(String title, String content,String author) throws NamingException, SQLException {
		
		Connection conn = null;
		PreparedStatement stmt = null;
		
		String sql = "INSERT INTO board (title, content,author) VALUES(?,?,?)";

		conn= ConnectionPool.get();
		
		stmt = conn.prepareStatement(sql);
			stmt.setString(1, title);
			stmt.setString(2, content);		
			stmt.setString(3, author);		
			
		int result = stmt.executeUpdate(); 
		
		return result;
	}
	
	public static ArrayList<DTOboard> getList() throws NamingException, SQLException{
		Connection conn = null;
		PreparedStatement stmt = null;
		ResultSet rs = null; 
		
		String sql = "SELECT * FROM board";
	
		conn= ConnectionPool.get();
		stmt = conn.prepareStatement(sql);
		rs = stmt.executeQuery();
		
		ArrayList<DTOboard> lists = new ArrayList<DTOboard>();
		while(rs.next()) {
			lists.add(new DTOboard(rs.getString(1),
									rs.getString(2),
									rs.getString(3),
									rs.getString(4),
									rs.getString(5)));
		}
		return lists;
	}
	
	public static DTOboard Detail(String bid) throws NamingException, SQLException {
		Connection conn = null;
		PreparedStatement stmt = null;
		ResultSet rs = null; 
		
		String sql = "SELECT * FROM board WHERE bid=? ";
		conn= ConnectionPool.get();
		stmt = conn.prepareStatement(sql);
			stmt.setString(1, bid);	
		rs = stmt.executeQuery();
		
		rs.next();
		
		bid = rs.getString(1);
		String title = rs.getString(2);
		String content = rs.getString(3);
		String author = rs.getString(4);
		String bdate = rs.getString(5);	
		
		DTOboard list = new DTOboard(bid,title,content,author,bdate);
		
		return list;
	}
	public static int boardupdate(String bid,String title, String content) throws NamingException, SQLException {
		
		Connection conn = null;	
		PreparedStatement stmt = null;
		
		String sql = "UPDATE board SET title=?, content=? WHERE bid=?";
		
			
		conn= ConnectionPool.get();
		
		stmt = conn.prepareStatement(sql);
			stmt.setString(1, title);
			stmt.setString(2, content);		
			stmt.setString(3, bid);		
			
		int result = stmt.executeUpdate(); 
		
		return result;
	}
}
