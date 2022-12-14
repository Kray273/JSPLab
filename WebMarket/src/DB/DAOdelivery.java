package DB;

import java.sql.*;
import java.util.ArrayList;

import javax.naming.NamingException;

import util.*;

public class DAOdelivery {
	
	
	public static int insert(String dpid,String dmid, String dmaddr,String dmtel, String dpname, String dpprice) throws NamingException, SQLException {
		
		Connection conn = null;
		PreparedStatement stmt = null;
		
		String sql = "INSERT INTO delivery (dpid,dmid,dmaddr,dmtel,dpname,dpprice) VALUES(?,?,?,?,?,?)";
	
		conn= ConnectionPool.get();
		
		stmt = conn.prepareStatement(sql);
			stmt.setString(1, dpid);
			stmt.setString(2, dmid);
			stmt.setString(3, dmaddr);			
			stmt.setString(4, dmtel);
			stmt.setString(5, dpname);
			stmt.setString(6, dpprice);
		
			
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
									rs.getString(10)));
		}
		return lists;
	}
	
	public static int statusup(String did) throws NamingException, SQLException {
		Connection conn = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;


		String sql = "SELECT did, dstatus FROM delivery WHERE did=? ";
			conn= ConnectionPool.get();
			stmt = conn.prepareStatement(sql);
				stmt.setString(1, did);
			rs = stmt.executeQuery();

			rs.next();

			String dstatus = rs.getString(2);

			int dstatusint = Integer.parseInt(dstatus);

			dstatusint++;

			String sql2 = "UPDATE delivery SET dstatus = ? WHERE did=?";
			conn= ConnectionPool.get();
			stmt = conn.prepareStatement(sql2);
				stmt.setInt(1, dstatusint);
				stmt.setString(2, did);

				int result = stmt.executeUpdate();

				return result;
		}

	
}
