package DB;

import java.sql.*;
import java.util.ArrayList;

import javax.naming.NamingException;

import util.ConnectionPool;

public class DAOcustomer {

	public static int join(String id, String name, String pass) throws NamingException, SQLException {
		
		Connection conn = null;
		PreparedStatement stmt = null;
		int result = 0;
		
		String sql = "INSERT INTO customer (id, name, pass) VALUES(?,?,?)";
		
		conn= ConnectionPool.get();
		
		stmt = conn.prepareStatement(sql);
			stmt.setString(1, id);
			stmt.setString(2, name);
			stmt.setString(3, pass);		
			
		result = stmt.executeUpdate();
		
		return result;
	}
	
	public static int login(String id, String pass) throws NamingException, SQLException {
		Connection conn = null;
		PreparedStatement stmt = null;
		ResultSet rs = null; 
		
		int result = 0;
		
		String sql = "SELECT id, pass FROM customer WHERE id=?";
		conn= ConnectionPool.get();
		stmt = conn.prepareStatement(sql);
			stmt.setString(1, id);
			
		rs = stmt.executeQuery();
		
		if(!rs.next()) {
			return 3;
		}
		
		if(pass.equals(rs.getString("pass"))) {
			return 1;
		}
		
		return 2;
	}
	
	public static ArrayList<DTOcustomer> getList() throws NamingException, SQLException{
		Connection conn = null;
		PreparedStatement stmt = null;
		ResultSet rs = null; 
		
		String sql = "SELECT * FROM customer";
	
		conn= ConnectionPool.get();
		stmt = conn.prepareStatement(sql);
		rs = stmt.executeQuery();
		
		//여러데이터를 뽑을떄 배열을 이용하요 한번에 출력
		ArrayList<DTOcustomer> members = new ArrayList<DTOcustomer>();
		while(rs.next()) {
			members.add(new DTOcustomer(rs.getString(1),
										rs.getString(2),
										rs.getString(3),
										rs.getString(4),
										rs.getString(5)));
		}
		return members;
	}
	
	public static DTOcustomer getDetail(String no) throws NamingException, SQLException {
		Connection conn = null;
		PreparedStatement stmt = null;
		ResultSet rs = null; 
		
		String sql = "SELECT * FROM customer WHERE no=?";
	
		conn= ConnectionPool.get();
		stmt = conn.prepareStatement(sql);
			stmt.setString(1, no);
		rs = stmt.executeQuery();
		
		//1개의 데이터를 뽑아낼 때 객체만을 이용해 출력
		
		rs.next();
		
		no = rs.getString(1);
		String id = rs.getString(2);
		String name = rs.getString(3);
		String pass = rs.getString(4);
		String cdate = rs.getString(5);
		
		
		DTOcustomer member = new DTOcustomer(no,id,name,pass,cdate);
		return member;
		
	}
}
