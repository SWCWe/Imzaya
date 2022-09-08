package com.DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.VO.FriendVO;
import com.VO.MemberVO;

public class FriendDAO {
	private Connection conn =null;
	private PreparedStatement psmt = null;
	private int cnt = 0;
	private ResultSet rs = null;
	private MemberVO vo = null;
	private ArrayList<FriendVO> list = new ArrayList<>();
	private FriendVO fvo = null;

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
			if(rs!=null) {
				rs.close();
			}
		}catch(Exception e2) {
			e2.printStackTrace();
		}
	}
	
	public int FriendInsert(String mId, String fId, String fNick, String fPhoto) {

		// OJDBC6.jar 파일가져오기
		// DB에 Table 만들기
		// JDBC코드 작성
		// 동적로딩
		try {

			getConn();
			String sql = "INSERT INTO I_friend VALUES(i_friend_SEQ.nextval,?,?,?,?)";
			psmt =conn.prepareStatement(sql);
			psmt.setString(1, mId);
			psmt.setString(2, fId);
			psmt.setString(3, fNick);
			psmt.setString(4, fPhoto);
			
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
	
	
	public ArrayList<FriendVO> FriendSelect(String mId) {
		// 1. 보내온 이메일에 해당하는 메세지를 검색하여 리턴하시오. (rec)
		try {
			getConn();
			
			String sql = "SELECT * FROM I_FRIEND WHERE M_ID = ?";
			
			psmt =conn.prepareStatement(sql);
			psmt.setString(1, mId);
			
			//sql준비
			
			rs = psmt.executeQuery();
			//sql실행
			
			while (rs.next()){
				// 쿠기를 활용한 로그인 처리
				//Cookie cookie= new Cookie("id", id);
				//response.addCookie(cookie);
				int f_Seq = rs.getInt(1);
				String m_Id = rs.getString(2);
				String f_Id = rs.getString(3);
				String f_Nick = rs.getString(4); // email
				String f_photo = rs.getString(5);
				
				// 쿠키는 text만 담김
				// 세션에 저장되는 데이터는 어떠한 형태로든 타입
				fvo = new FriendVO(f_Seq,m_Id, f_Id,f_Nick,f_photo);
				list.add(fvo);
			}
		
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			try {
				close();
			}catch(Exception e2) {
				e2.printStackTrace();
			}
		}
		return list;
	}
	
	

	
}
