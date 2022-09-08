package com.DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.VO.MessageVO;


public class MessageDAO {
	
	private Connection conn =null;
	private PreparedStatement psmt = null;
	private int cnt = 0;
	private ResultSet rs = null;
	private ArrayList<MessageVO> mflist = new ArrayList<>();
	private ArrayList<MessageVO> fmlist = new ArrayList<>();
	private MessageVO vo= null;

	// 1. 기능들이 자주 사용하는 멤버변수를 설정하시오.
	// 2. getConn(), close() 메소드를 선언하시오.
	// 3. MessageInsert 기능을 정의하여 사용자가 입력한 값을 Message테이블에 입력하시오.
	
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
	
	
	public int MessageInsert(String msgContent, String senderId, String receiverId) {

		// OJDBC6.jar 파일가져오기
		// DB에 Table 만들기
		// JDBC코드 작성
		// 동적로딩
		try {

			getConn();
			String sql = "INSERT INTO i_msg values(I_MSG_SEQ.NEXTVAL,?,?,?,sysdate)";
			psmt =conn.prepareStatement(sql);
			
			psmt.setString(1, msgContent);
			psmt.setString(2, senderId);
			psmt.setString(3, receiverId);
			
			
			//sql준비
			
			cnt = psmt.executeUpdate();
			//sql실행
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			close();
		}
		return cnt;
	}
	
	
	// ##############  형 보여줄때 이메소드 사용하면 됨
	public ArrayList<MessageVO> SendReciviceSpecific(String send, String rec) {
		
		try {
			getConn();
			//======= 메세지 : 나 ---> 친구 ======
			String sql = "SELECT * FROM I_MSG WHERE SENDER_ID = ? AND RECEIVER_ID = ? order by msg_date ";
			
			psmt =conn.prepareStatement(sql);
			psmt.setString(1, send);
			psmt.setString(2, rec);
			
			//sql준비
			
			rs = psmt.executeQuery();
			//sql실행
			
			while (rs.next()){
				// 쿠기를 활용한 로그인 처리
				//Cookie cookie= new Cookie("id", id);
				//response.addCookie(cookie);
				int msgSeq = rs.getInt(1);
				String msgContent = rs.getString(2);
				String senderId = rs.getString(3);
				String receiverId = rs.getString(4); // email
				String msgDate = rs.getString(5);
				// 쿠키는 text만 담김
				// 세션에 저장되는 데이터는 어떠한 형태로든 타입
				vo = new MessageVO(msgSeq,msgContent,senderId,receiverId,msgDate);
				mflist.add(vo);
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
		return mflist;
	}
	
	
	public ArrayList<MessageVO> FriendSendMe(String friend, String me) {
		// 1. 보내온 이메일에 해당하는 메세지를 검색하여 리턴하시오. (rec)
		try {
			getConn();
			//===== 메세지 : 친구 ---> 나 =====
			String sql = "SELECT * FROM I_MSG WHERE SENDER_ID = ? AND RECEIVER_ID = ? order by msg_date";
			
			psmt =conn.prepareStatement(sql);
			psmt.setString(1, friend);
			psmt.setString(2, me);
			
			//sql준비
			
			rs = psmt.executeQuery();
			//sql실행
			
			while (rs.next()){
				// 쿠기를 활용한 로그인 처리
				//Cookie cookie= new Cookie("id", id);
				//response.addCookie(cookie);
				int msgSeq = rs.getInt(1);
				String msgContent = rs.getString(2);
				String senderId = rs.getString(3);
				String receiverId = rs.getString(4); // email
				String msgDate = rs.getString(5);
				// 쿠키는 text만 담김
				// 세션에 저장되는 데이터는 어떠한 형태로든 타입
				vo = new MessageVO(msgSeq,msgContent,senderId,receiverId,msgDate);
				fmlist.add(vo);
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
		return fmlist;
	}
	
	
	public int MessageDelete(int num) {
		
		try {

			getConn();
			String sql = "DELETE FROM MESSAGE WHERE NUM = ?";
			psmt =conn.prepareStatement(sql);
			psmt.setInt(1, num);
			
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
