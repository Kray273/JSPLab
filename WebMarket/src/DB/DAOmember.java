package DB;

import java.sql.*;
import java.util.ArrayList;

import javax.naming.NamingException;

import util.*;

public class DAOmember {

	public static int join(String mname,String mpass, String mtel,String mgender,String memail, String maddr,String iname) throws NamingException, SQLException {
		
		Connection conn = null;
		PreparedStatement stmt = null;
		
		String sql = "INSERT INTO member(mname,mpass,mtel,mgender,memail,maddr,iname) VALUES(?,?,?,?,?,?,?)";
		conn= ConnectionPool.get();
		
		stmt = conn.prepareStatement(sql);
			stmt.setString(1, mname);
			stmt.setString(2, mpass);		
			stmt.setString(3, mtel);		
			stmt.setString(4, mgender);		
			stmt.setString(5, memail);				
			stmt.setString(6, maddr);		
			stmt.setString(7, iname);		
			
		int result = stmt.executeUpdate();
		
		return result;
	}
	
	public static int login(String mname, String mpass) throws NamingException, SQLException {
		Connection conn = null;
		PreparedStatement stmt = null;
		ResultSet rs = null; 
		
		int result = 0;
		
		String sql = "SELECT mname, mpass FROM member WHERE mname=?";
		conn= ConnectionPool.get();
		stmt = conn.prepareStatement(sql);
			stmt.setString(1, mname);
			
		rs = stmt.executeQuery();
		
		if(!rs.next()) {
			return 3;
		} //비회원
	
		if(mpass.equals(rs.getString("mpass"))) {
			return 1;
		} //문제없는 회원
		
		return 2; //비번이 틀릴때
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
