package DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Set;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NameNotFoundException;
import javax.naming.NamingException;
import javax.sql.DataSource;

import DTO.MemberDTO;

public class MemberDAO {
	Connection con = null;
	PreparedStatement pt = null;
	
	public int insertMember(MemberDTO dto) {
		int count = 0;
		try {
			Context initContext = new InitialContext(); 
			DataSource ds = (DataSource)initContext.lookup("java:/comp/env/jdbc/mydb"); 
			con = ds.getConnection(); 
			
			String sql = "insert into member values(?,?,?,?,?,?, now())";
			pt = con.prepareStatement(sql);
			pt.setString(1, dto.getId());
			pt.setString(2, dto.getPw());
			pt.setString(3, dto.getName());
			pt.setString(4, dto.getPhone());
			pt.setString(5, dto.getEmail());
			pt.setString(6, dto.getAddress());
			count = pt.executeUpdate();
			//dto 전달 내용을 member 테이블 입력
			//회원가입일 now() 설정
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				pt.close();
				con.close();
			} catch (Exception e) {
			}
		}
		return count;
	}//insertMember end

	public int getTotalMember() {
		int count = 0;
		try {
			Context initContext = new InitialContext(); 
			DataSource ds = (DataSource)initContext.lookup("java:/comp/env/jdbc/mydb"); 
			con = ds.getConnection(); 
			
			String sql = "select count(*) from member";//1행 1열(null / 숫자)
			pt = con.prepareStatement(sql);
			ResultSet rs = pt.executeQuery();
			rs.next();
			if (rs.getString("count(*)") == null) {
				count = 0;
			} else {
				count = rs.getInt("count(*)");
			}
			//dto 전달 내용을 member 테이블 입력
			//회원가입일 now() 설정
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				pt.close();
				con.close();
			} catch (Exception e) {
			}
		}
		return count;
	}//getTotal	

	public ArrayList<MemberDTO> getMemberList(int page, int memberPerPage) {
		ArrayList<MemberDTO> list = new ArrayList();
		int count = 0;
		try {
			Context initContext = new InitialContext(); 
			DataSource ds = (DataSource)initContext.lookup("java:/comp/env/jdbc/mydb"); 
			con = ds.getConnection(); 
			
			String sql =
					"SELECT id, insert(pw, 2, char_length(pw)-1, repeat(\"*\",char_length(pw)-1 ) ) as pw, "
							+ " name, indate FROM MEMBER ORDER BY INDATE LIMIT ?, ?";//1행 1열(null / 숫자)
			pt = con.prepareStatement(sql);
			pt.setInt(1, (page - 1) * memberPerPage);// page=1,2, 3   0,3, 6인덱스
			pt.setInt(2, memberPerPage);
			ResultSet rs = pt.executeQuery();
			while (rs.next()) {
				MemberDTO dto = new MemberDTO
						(rs.getString("id"), rs.getString("name"), rs.getString("indate"));
				dto.setPw(rs.getString("pw"));
				list.add(dto);
			}
			//dto 전달 내용을 member 테이블 입력
			//회원가입일 now() 설정
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				pt.close();
				con.close();
			} catch (Exception e) {
			}
		}
		return list;
	}//getMemberList	

	public MemberDTO getMember(String id, String pw) {
		//반복으로 인해 지역변수 사용
		//Connection con = null; 
		//PreparedStatement pt = null;
		MemberDTO dto = null;

		try {
			// 아래 기능을 톰켓에게 위임
			//Class.forName(ConnectionInform.DRIVER_CLASS);
			//con = DriverManager.getConnection(ConnectionInform.JDBC_URL, ConnectionInform.USERNAME,
			//		ConnectionInform.PASSWORD);
			Context initContext = new InitialContext(); // context.xml 준비
			DataSource ds = (DataSource)initContext.lookup("java:/comp/env/jdbc/mydb"); //자바 연관 설정
			con = ds.getConnection(); // 톰캣한테  커넥션 pool 빌려온다
			
			String sql = "SELECT * FROM member WHERE id =? ";
			pt = con.prepareStatement(sql);
			pt.setString(1, id);

			ResultSet rs = pt.executeQuery();

			if (rs.next()) {
				// db에서 pw가져옴
				String dbpw = rs.getString("pw");
				if (pw.equals(dbpw)) {
					// 암호도 맞다
					dto = new MemberDTO(rs.getString("id"), rs.getString("pw"), rs.getString("name"),
							rs.getString("email"), rs.getString("phone"),
							rs.getString("address"), rs.getString("indate"));
				} else { // id 존재 암호 불일치
					dto = new MemberDTO();
					dto.setId(rs.getString("id"));
					System.out.println("암호 맞지않습니다. 처음으로 돌아갑니다.");
				}

			} else { // id가 없다
				System.out.println("일치하는 ID가 없습니다. 회원가입이 필요합니다.");
			}

		} catch (Exception e  ) {
			e.printStackTrace();
		} finally {
			try {
				pt.close();
				con.close(); //Pool로 반납
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return dto;
	}

	public void updateMember(HashMap<String, String> updateMap) {
		try {
			Context initContext = new InitialContext(); 
			DataSource ds = (DataSource)initContext.lookup("java:/comp/env/jdbc/mydb"); 
			con = ds.getConnection(); 
			
			StringBuffer sql = new StringBuffer(); //16문자버퍼 +....
			sql.append("update member set ");
			Set<String> keys = updateMap.keySet();
			for (String k : keys) {
				if (!k.equals("id")) {
					sql.append(k + "= '" + updateMap.get(k) + "' ,");
				}
			}
			sql.deleteCharAt(sql.lastIndexOf(","));//마지막 ","를 빼라
			sql.append(" where id=?");
			System.out.println(sql); //쿼리 메인 확인
			pt = con.prepareStatement(sql.toString());
			pt.setString(1, updateMap.get("id"));
			pt.executeUpdate();

		} catch (SQLException | NamingException e) {
			e.printStackTrace();
		} finally {
			try {
				pt.close();
				con.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}

	} // updateMember

	public void deleteMember(String id) {
		try {
			Context initContext = new InitialContext(); 
			DataSource ds = (DataSource)initContext.lookup("java:/comp/env/jdbc/mydb"); 
			con = ds.getConnection(); 
			
			con.setAutoCommit(false); //수동으로 트렉젝션 설정 변경
			String sql1 = "insert into deletedmember select * FROM member WHERE id =? ";
			pt = con.prepareStatement(sql1);
			pt.setString(1, id);
			int insertCount = pt.executeUpdate(); // select

			String sql2 = "delete from member WHERE id =?";
			pt = con.prepareStatement(sql2);
			pt.setString(1, id);
			int deleteCount = pt.executeUpdate(); // select

			con.commit();
			System.out.println("회원탈퇴 처리 완료");

		} catch (SQLException | NamingException e) {
			System.out.println("회원 탈퇴 처리 중 문제 발생 - 취소");
			try {
				con.rollback();
			} catch (Exception s) {}
			// e.printStackTrace();
		} finally {
			try {
				pt.close();
				con.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	} //delete

}
