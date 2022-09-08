package com.DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.VO.MemberVO;

public class MeetingDAO {

	private Connection conn = null;
	private PreparedStatement psmt = null;
	private int cnt = 0;
	private ResultSet rs = null;
	private MemberVO vo = null;
	private ArrayList<MemberVO> list = new ArrayList<>();

	public void getConn() {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			String url = "jdbc:oracle:thin:@127.0.0.1:1521:xe";
			String dbid = "hr";
			String dbpw = "hr";
			conn = DriverManager.getConnection(url, dbid, dbpw);

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public void close() {

		try {
			if (psmt != null) {
				psmt.close();
			}
			if (conn != null) {
				conn.close();
			}
			if (rs != null) {
				rs.close();
			}
		} catch (Exception e2) {
			e2.printStackTrace();
		}
	}

	//===================================매칭 부분 메소드 시작=================================
    
	 // ####여성회원만 매칭

	 	public ArrayList<MemberVO> matchingF() {

	 		try {
	 			getConn();

	 			String sql = "select * from (select * from i_member order by DBMS_RANDOM.RANDOM) where m_gender= 'F' and rownum <= 9";

	 			psmt = conn.prepareStatement(sql);
	 			// sql준비

	 			rs = psmt.executeQuery();
	 			// sql실행

	 			while (rs.next()) {

	 				String id = rs.getString(1);
	 				String pw = rs.getString(2);
	 				String name = rs.getString(3);
	 				String nick = rs.getString(4);
	 				String birthdate = rs.getString(5);
	 				String gender = rs.getString(6);
	 				String phone = rs.getString(7);
	 				String location = rs.getString(8);

	 				String type = rs.getString(10);

	 				MemberVO vo = new MemberVO(id, pw, name, nick, birthdate, gender, phone, location, type);
	 				list.add(vo);
	 			}

	 		} catch (Exception e) {
	 			e.printStackTrace();
	 		} finally {
	 			try {
	 				close();
	 			} catch (Exception e2) {
	 				e2.printStackTrace();
	 			}
	 		}
	 		return list;
	 	}

	 	// ####남성 회원만 매칭
	 	public ArrayList<MemberVO> matchingM() {

	 		try {
	 			getConn();

	 			String sql = "select * from (select * from i_member order by DBMS_RANDOM.RANDOM) where m_gender= 'M' and rownum <= 9";

	 			psmt = conn.prepareStatement(sql);
	 			// sql준비

	 			rs = psmt.executeQuery();
	 			// sql실행

	 			while (rs.next()) {

	 				String id = rs.getString(1);
	 				String pw = rs.getString(2);
	 				String name = rs.getString(3);
	 				String nick = rs.getString(4);
	 				String birthdate = rs.getString(5);
	 				String gender = rs.getString(6);
	 				String phone = rs.getString(7);
	 				String location = rs.getString(8);

	 				String type = rs.getString(10);

	 				MemberVO vo = new MemberVO(id, pw, name, nick, birthdate, gender, phone, location, type);
	 				list.add(vo);
	 			}

	 		} catch (Exception e) {
	 			e.printStackTrace();
	 		} finally {
	 			try {
	 				close();
	 			} catch (Exception e2) {
	 				e2.printStackTrace();
	 			}
	 		}
	 		return list;
	 	}

	 	
	 	
	 	// 필터링 매칭
	 	public ArrayList<MemberVO> matchingFilter(String gender, String location, String[] hobbyName, String age) {

	 	
	 	

	 		try {
	 			getConn();
	 			////
	 			
	 			
	 			//=====성별 구분 ======
	 			String gender1 = "";
	 			
	 			
	 			if(gender.equals("F")) {
	 				
	 				gender1 = "M";
	 			}else if (gender.equals("M")) {
	 				gender1 = "F";
	 				
	 			}
	 				
		
	 			String age1 = ""; 
		 		String age2 = "";
		 		
		 		
		 		//=====나이 필터링 부분======
		 		if(age.equals("41-45")) {
		 			
		 			age1 = "78/01/01"; 
		 			age2 = "81/12/31";
		 			
		 		}else if (age.equals("46-50")) {
		 			
		 			age1 = "73/01/01"; 
		 			age2 = "77/12/31";
		 		}else if (age.equals("51-55")) {
		 			
		 			age1 = "68/01/01"; 
		 			age2 = "72/12/31";
		 		}
		 		else if (age.equals("56-60")) {
		 					
		 			age1 = "63/01/01"; 
		 			age2 = "67/12/31";
		 				}
		 		else if (age.equals("61-70")) {
		 			
		 			age1 = "22/01/01"; 
		 			age2 = "22/12/31";
		 			
		 			
		 			//age1 = "53/01/01"; 
		 			//age2 = "62/12/31";
		 		}
		 		
		 		String hobby1 = hobbyName[0];
		 		String hobby2 = hobbyName[1];
		 		String hobby3 = hobbyName[2];
		 				
		 		System.out.println("dao if문"+age1);
		 		System.out.println(age2);
		 		System.out.println(hobby1);
		 		System.out.println(hobby2);
		 		System.out.println(hobby3);
	 			
	 			
	 			
	 			//====== 랜덤 필터링 SQL문 ========
	 			String sql = "select * from "
	 					+ "(select * from i_member order by DBMS_RANDOM.RANDOM) "
	 					
	 					+ "where m_gender= ? and rownum <= 9 and m_location = ? and m_birthdate  between ? and ? and m_id in  "
	 					
	 					+ "(select m_id from i_hobby where hobby_name in ? or  hobby_name in ? or  hobby_name in ? )";          

	 					
	 					
	 					
//	 					"select * from (select * from i_member order by DBMS_RANDOM.RANDOM)"	 			 			
//	 					+ " where m_gender= ? and rownum <= 9 and m_location = ? and m_birthdate "
//	 					+ "between ? and ?	 				 			
	 				//	and m_id in "
 			
//	 					+ "(select m_id from i_hobby where hobby_name in ? or  hobby_name in ? or  hobby_name in ? )";
	 			
	 					
	 					
	 					
	 			psmt =conn.prepareStatement(sql);
	 			//sql준비
	 			psmt.setString(1, gender1);
	 			psmt.setString(2, location);
	 			psmt.setString(3, age1);
	 			psmt.setString(4, age2);
	 			psmt.setString(5, hobby1);
	 			psmt.setString(6, hobby2);
	 			psmt.setString(7, hobby3);
	 			

	 			rs = psmt.executeQuery();
	 			//sql실행
	 
	 			System.out.println(rs);
	 			
	 			while (rs.next()){
	 			
	 				String mid = rs.getString(1);
	 				String mpw = rs.getString(2);
	 				String mname = rs.getString(3);
	 				String mnick = rs.getString(4);
	 				String mbirthdate = rs.getString(5);
	 				String mgender = rs.getString(6);
	 				String mphone = rs.getString(7);
	 				String mlocation = rs.getString(8);
	 				
	 				String mtype = rs.getString(10);
	 				
	 		
	 				MemberVO vo = new MemberVO(mid, mpw, mname, mnick, mbirthdate, mgender, mphone, mlocation, mtype);
	 				
	 				System.out.println("while문 안"+vo.getmId());
	 				
	 				list.add(vo);
	 				
	 				
	 			}
	 			
	 			System.out.println("리스트 담는중");
	 		
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

}//
