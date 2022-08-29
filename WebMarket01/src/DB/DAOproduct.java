package DB;

import java.sql.*;
import java.util.ArrayList;

import javax.naming.NamingException;

import util.*;

public class DAOproduct {
	
	public static int insert(String pid,String pname, String pprice,String pdesc, String iname1, String iname2, String iname3 ) throws NamingException, SQLException {
		
		Connection conn = null;
		PreparedStatement stmt = null;
		
		String sql = "INSERT INTO product (pid,pname,pprice,pdesc,iname1,iname2,iname3) VALUES(?,?,?,?,?,?,?)";
	
		conn= ConnectionPool.get();
		
		stmt = conn.prepareStatement(sql);
			stmt.setString(1, pid);
			stmt.setString(2, pname);
			stmt.setString(3, pprice);			
			stmt.setString(4, pdesc);
			stmt.setString(5, iname1);
			stmt.setString(6, iname2);
			stmt.setString(7, iname3);
			
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
									rs.getString(9)));
		}
		return lists;
	}
	
	public static DTOproduct fileDetail(String pno) throws NamingException, SQLException {
		Connection conn = null;
		PreparedStatement stmt = null;
		ResultSet rs = null; 
		
		String sql = "SELECT * FROM product WHERE pno=? ";
		conn= ConnectionPool.get();
		stmt = conn.prepareStatement(sql);
			stmt.setString(1, pno);	
		rs = stmt.executeQuery();
		
		rs.next();
		
		pno = rs.getString(1);
		String pid = rs.getString(2);
		String pname = rs.getString(3);
		String pprice = rs.getString(4);
		String pdesc = rs.getString(5);
		String iname1 = rs.getString(6);
		String iname2 = rs.getString(7);
		String iname3 = rs.getString(8);
		String pdate = rs.getString(9);
		
		
		DTOproduct list = new DTOproduct(pno,pid,pname,pprice,pdesc,iname1,iname2,iname3,pdate);
		
		return list;
	}

}
