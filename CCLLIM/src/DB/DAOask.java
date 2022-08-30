package DB;

import java.sql.*;
import java.util.ArrayList;

import javax.naming.NamingException;

import util.ConnectionPool;

public class DAOask {
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
	
}
