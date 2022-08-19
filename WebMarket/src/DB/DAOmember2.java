package DB;

import java.sql.*;
import java.util.ArrayList;

import javax.naming.NamingException;

import util.*;

public class DAOmember2 {
	
	public static int memberinsert(String mname, String mtel, String iname) throws NamingException, SQLException {
		
		Connection conn = null;
		PreparedStatement stmt = null;
		
		String sql = "INSERT INTO member (mname, mtel, iname) VALUES(?,?,?)";
	
		conn= ConnectionPool.get();
		
		stmt = conn.prepareStatement(sql);
			stmt.setString(1, mname);
			stmt.setString(2, mtel);		
			stmt.setString(3, iname);	
			
		int result = stmt.executeUpdate();
		
		return result;
	}
	
	public static ArrayList<DTOmember2> getList() throws NamingException, SQLException{
		Connection conn = null;
		PreparedStatement stmt = null;
		ResultSet rs = null; 
		
		String sql = "SELECT * FROM member";
	
		conn= ConnectionPool.get();
		stmt = conn.prepareStatement(sql);
		rs = stmt.executeQuery();
		
		ArrayList<DTOmember2> lists = new ArrayList<DTOmember2>();
		while(rs.next()) {
			lists.add(new DTOmember2(rs.getString(1),
									rs.getString(2),
									rs.getString(3),
									rs.getString(4),
									rs.getString(5),
									rs.getString(6)));
		}
		return lists;
	}
	
	public static DTOmember2 fileDetail(String mno) throws NamingException, SQLException {
		Connection conn = null;
		PreparedStatement stmt = null;
		ResultSet rs = null; 
		
		String sql = "SELECT * FROM member WHERE mno=? ";
		conn= ConnectionPool.get();
		stmt = conn.prepareStatement(sql);
			stmt.setString(1, mno);	
		rs = stmt.executeQuery();
		
		rs.next();
		
		mno = rs.getString(1);
		String mname = rs.getString(2);
		String mtel = rs.getString(3);
		String iname = rs.getString(4);
		String mlevel = rs.getString(5);	
		String mdate = rs.getString(6);	
		
		DTOmember2 list = new DTOmember2(mno,mname,mtel,iname,mlevel,mdate);
		
		return list;
	}

}
