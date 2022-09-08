package com.DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.VO.MeetVO;
import com.VO.MemberVO;


public class MeetDAO {
	private Connection conn =null;
	private PreparedStatement psmt = null;
	private int cnt = 0;
	private ResultSet rs = null;
	private MemberVO vo = null;
	private ArrayList<MeetVO> list = new ArrayList<>();
	private MeetVO mtvo = null;
	private int meet_seq = 0;

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
	public int meetSeqReturn () {
		try {
			getConn();
			
			String sql = "SELECT mt_seq FROM(SELECT * FROM meet ORDER BY ROWNUM DESC)WHERE ROWNUM = 1";
			
			psmt =conn.prepareStatement(sql);
			
			
			//sql준비
			
			rs = psmt.executeQuery();
			//sql실행
			
			while (rs.next()){
				// 쿠기를 활용한 로그인 처리
				//Cookie cookie= new Cookie("id", id);
				//response.addCookie(cookie);
				
				meet_seq = rs.getInt(1);
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
		return (meet_seq+2);
	}
	public int MeetInsert(String name, String ctg, String photo, String content,
			String loc, String mId) {

		// OJDBC6.jar 파일가져오기
		// DB에 Table 만들기
		// JDBC코드 작성
		// 동적로딩
		try {

			getConn();
			String sql = "INSERT INTO MEET VALUES(meet_Seq.nextval,?, ?, ?,?,?,?)";
			psmt =conn.prepareStatement(sql);
			psmt.setString(1, name);
			psmt.setString(2, ctg);
			psmt.setString(3, photo);
			psmt.setString(4, content);
			psmt.setString(5, loc);
			psmt.setString(6,mId);
			
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
	
	
	public ArrayList<MeetVO> MeetAllSelect() {
		// 1. 보내온 이메일에 해당하는 메세지를 검색하여 리턴하시오. (rec)
		try {
			getConn();
			
			String sql = "SELECT * FROM MEET ";
			
			psmt =conn.prepareStatement(sql);
			
			
			//sql준비
			
			rs = psmt.executeQuery();
			//sql실행
			
			while (rs.next()){
				// 쿠기를 활용한 로그인 처리
				//Cookie cookie= new Cookie("id", id);
				//response.addCookie(cookie);
				
				int meet_Seq = rs.getInt(1);
				String meet_Name = rs.getString(2);
				String meet_Category = rs.getString(3);
				String meet_Photo = rs.getString(4); 
				String meet_Content = rs.getString(5); 
				String meet_Location = rs.getString(6); 
				String m_Id = rs.getString(7); 
				
				// 쿠키는 text만 담김
				// 세션에 저장되는 데이터는 어떠한 형태로든 타입
				mtvo = new MeetVO(meet_Seq,meet_Name, meet_Category,meet_Photo,meet_Content, meet_Location,m_Id);
				list.add(mtvo);
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
	
	////###############find
	
	public ArrayList<MeetVO> MeetFind(String location, String ctg) {
		
		System.out.println("sql문 실행전");
	
		try {
			getConn();
			
			String sql = "SELECT * FROM (select * from meet order by DBMS_RANDOM.RANDOM) "
					+ "WHERE mt_location =? and mt_category = ? and rownum<=9 ";
			
			psmt =conn.prepareStatement(sql);
			psmt.setString(1, location);
			psmt.setString(2, ctg);
			
			rs = psmt.executeQuery();
		
			
			while (rs.next()){
				
				
				int meet_Seq = rs.getInt(1);
				String meet_Name = rs.getString(2);
				String meet_Category = rs.getString(3);
				String meet_Photo = rs.getString(4); 
				String meet_Content = rs.getString(5);  
				String meet_Location = rs.getString(6); 
				String m_Id = rs.getString(7); 
				
				
				mtvo = new MeetVO(meet_Seq,meet_Name, meet_Category,meet_Photo,meet_Content, meet_Location,m_Id);
				list.add(mtvo);
				
				System.out.println("리스트 담는중");
				
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
		
		System.out.println("리스트 확인"+list);
		return list;
	}
	
	//-=------------9명 select
	
	
	
	public ArrayList<MeetVO> MeetNineSelect() {
		// 1. 보내온 이메일에 해당하는 메세지를 검색하여 리턴하시오. (rec)
		try {
			getConn();
			
			String sql = "SELECT * FROM (select * from meet order by DBMS_RANDOM.RANDOM) where rownum<=9";
			
			psmt =conn.prepareStatement(sql);
			
			
			//sql준비
			
			rs = psmt.executeQuery();
			//sql실행
			
			while (rs.next()){
				// 쿠기를 활용한 로그인 처리
				//Cookie cookie= new Cookie("id", id);
				//response.addCookie(cookie);
				
				int meet_Seq = rs.getInt(1);
				String meet_Name = rs.getString(2);
				String meet_Category = rs.getString(3);
				String meet_Photo = rs.getString(4); 
				String meet_Content = rs.getString(5); 
				String meet_Location = rs.getString(6); 
				String m_Id = rs.getString(7); 
				
				// 쿠키는 text만 담김
				// 세션에 저장되는 데이터는 어떠한 형태로든 타입
				mtvo = new MeetVO(meet_Seq,meet_Name, meet_Category,meet_Photo,meet_Content, meet_Location,m_Id);
				list.add(mtvo);
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
	
	////모임 하나 선택 --->>상세페이지 이동시/////
	
	
	
	public MeetVO MeetSelect( int seq) {
		// 1. 보내온 이메일에 해당하는 메세지를 검색하여 리턴하시오. (rec)
		try {
			getConn();
			
			String sql = "SELECT * FROM meet where mt_seq = ? ";
			
			psmt =conn.prepareStatement(sql);
			psmt.setInt(1, seq);
			
			//sql준비
			
			rs = psmt.executeQuery();
			//sql실행
			
			while(rs.next()) {
				
				int meet_Seq = rs.getInt(1);
				String meet_Name = rs.getString(2);
				String meet_Category = rs.getString(3);
				String meet_Photo = rs.getString(4); 
				String meet_Content = rs.getString(5); 
				String meet_Location = rs.getString(6); 
				String m_Id = rs.getString(7); 
				
				
				mtvo = new MeetVO(meet_Seq,meet_Name, meet_Category,meet_Photo,meet_Content, meet_Location,m_Id);
					
				
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
		return mtvo;
	}

	
}///
