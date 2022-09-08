package com.DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.VO.MemberHobbyVO;



public class MemberHobbyDAO {

	private Connection conn =null;
	private PreparedStatement psmt = null;
	private int cnt = 0;
	
	private ResultSet rs = null;
	private MemberHobbyVO mhvo = null;
	private int [] hobbySeq = null;
	private int count = 0;

	public void getConn() {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			String url = "jdbc:oracle:thin:@127.0.0.1:1521:xe";
			String dbid = "hr";
			String dbpw = "hr";
			conn = DriverManager.getConnection(url,dbid,dbpw);
			
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	public void close() {
		
		try {
			if(psmt!=null) {
				psmt.close();
			}
			if(conn!=null) {
				conn.close();
			}
		}catch(Exception e2) {
			e2.printStackTrace();
		}
	}
	
	public int MemberHobbyInsert(int[] hobbySeq, String mId) {

		// OJDBC6.jar 파일가져오기
		// DB에 Table 만들기
		// JDBC코드 작성
		// 동적로딩
		try {

			getConn();
			String sql = "INSERT ALL\r\n"
					+ "INTO i_member_hobby (hobby_seq, m_id)\r\n"
					+ "VALUES (?, ?)\r\n"
					+ "INTO i_member_hobby (hobby_seq, m_id)\r\n"
					+ "VALUES (?, ?)\r\n"
					+ "INTO i_member_hobby (hobby_seq, m_id)\r\n"
					+ "VALUES (?, ?)\r\n"
					+ "SELECT * FROM DUAL;";
			psmt =conn.prepareStatement(sql);
			psmt.setInt(1, hobbySeq[0]);
			psmt.setString(2, mId);
			psmt.setInt(3, hobbySeq[1]);
			psmt.setString(4, mId);
			psmt.setInt(5, hobbySeq[2]);
			psmt.setString(6, mId);
			
			//sql준비
			
			cnt = psmt.executeUpdate();
			//sql실행
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			try {
				close();	
			}catch(Exception e2) {
				e2.printStackTrace();
			}
		}
		return cnt;
	}
	
	public int[] HobbyMemberSelect(String mId) {
		
		try {
			getConn();
			String sql = "SELECT HOBBY_SEQ FROM I_MEMBER_HOBBY WHERE M_ID=?";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, mId);
			rs = psmt.executeQuery();
			while(rs.next()) {
				int gethobbySeq = rs.getInt(2);
				hobbySeq[count++]=gethobbySeq;
			}
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			try {
				close();
			}catch(Exception e2) {
				e2.printStackTrace();
			}
		}
		return hobbySeq;
	}
	public int MemberHobbyDelete(String mId) {
		
		try {

			getConn();
			String sql = "DELETE FROM I_MEMBER_HOBBY WHERE M_ID = ?";
			psmt =conn.prepareStatement(sql);
			psmt.setString(1, mId);
			
			//sql준비
			
			cnt = psmt.executeUpdate();
			//sql실행
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close();
		}
		return cnt;
	}

}
