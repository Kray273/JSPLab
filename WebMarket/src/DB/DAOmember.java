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
	
	public static int kakaologin(String mname) throws NamingException, SQLException {
		Connection conn = null;
		PreparedStatement stmt = null;
		ResultSet rs = null; 
		
		int result = 0;
		
		String sql = "SELECT mname, memail FROM member WHERE mname=?";
		conn= ConnectionPool.get();
		stmt = conn.prepareStatement(sql);
			stmt.setString(1, mname);
			
		rs = stmt.executeQuery();
		
		if(!rs.next()) {
			return 3;
		} //비회원
		
		return 1; //임시 
	}
	
	public static ArrayList<DTOmember> getList() throws NamingException, SQLException{
		Connection conn = null;
		PreparedStatement stmt = null;
		ResultSet rs = null; 
		
		String sql = "SELECT * FROM member";
	
		conn= ConnectionPool.get();
		stmt = conn.prepareStatement(sql);
		rs = stmt.executeQuery();
		
		ArrayList<DTOmember> lists = new ArrayList<DTOmember>();
		while(rs.next()) {
			lists.add(new DTOmember(rs.getString(1),
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
	
	public static DTOmember memberDetail(String mname) throws NamingException, SQLException {
		Connection conn = null;
		PreparedStatement stmt = null;
		ResultSet rs = null; 
		
		String sql = "SELECT * FROM member WHERE mname=? ";
		conn= ConnectionPool.get();
		stmt = conn.prepareStatement(sql);
			stmt.setString(1, mname);	
		rs = stmt.executeQuery();
		
		rs.next();
		
		String mno = rs.getString(1);
		mname = rs.getString(2);
		String mpass = rs.getString(3);
		String mtel = rs.getString(4);
		String memail = rs.getString(5);
		String mgender = rs.getString(6);
		String maddr = rs.getString(7);
		String mlevel = rs.getString(8);
		String iname = rs.getString(9);
		String mdate = rs.getString(10);
		
		
		DTOmember list = new DTOmember(mno,mname,mpass,mtel,memail,mgender,maddr,mlevel,iname,mdate);
		
		return list;
	}
	
	public static DTOmember Detail(String mno) throws NamingException, SQLException {
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
		String mpass = rs.getString(3);
		String mtel = rs.getString(4);
		String memail = rs.getString(5);
		String mgender = rs.getString(6);
		String maddr = rs.getString(7);
		String mlevel = rs.getString(8);
		String iname = rs.getString(9);
		String mdate = rs.getString(10);
		
		
		DTOmember list = new DTOmember(mno,mname,mpass,mtel,memail,mgender,maddr,mlevel,iname,mdate);
		
		return list;
	}
	
	public static int memberout(String mname, String mpass) throws NamingException, SQLException  {
		Connection conn = null;
		PreparedStatement stmt = null;
		int result = 0;
		
		String sql = "DELETE FROM member WHERE (mname=?) and (mpass=?) ";
		
		conn= ConnectionPool.get();
		
		stmt = conn.prepareStatement(sql);
			stmt.setString(1, mname);
			stmt.setString(2, mpass);			
			
		result = stmt.executeUpdate();
		// 결과가 성공1 과 실패 0으로 넘어 온다. 
		
		return result;	
	}
}
