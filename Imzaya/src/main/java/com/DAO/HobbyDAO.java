package com.DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.VO.HobbyVO;
import com.VO.MemberVO;
import com.VO.ProfileVO;

public class HobbyDAO {
	
	private Connection conn =null;
	private PreparedStatement psmt = null;
	private int cnt = 0;
	
	private ResultSet rs = null;
	private HobbyVO hvo = null;
	private ArrayList<HobbyVO> list = new ArrayList<>();


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
	
	public int HobbyInsert3(String[] hobbyName, String mId) {

		// OJDBC6.jar 파일가져오기
		// DB에 Table 만들기
		// JDBC코드 작성
		// 동적로딩
		try {

			getConn();
			for(int i=0; i<3; i++) {
				String sql = "Insert into i_hobby values (i_hobby_seq.nextval,?,?)";
				psmt =conn.prepareStatement(sql);
				psmt.setString(1, hobbyName[i]);
				psmt.setString(2, mId);
				cnt = psmt.executeUpdate();
			}
			//sql준비
			

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
	
	
	public ArrayList<HobbyVO> HobbySelect(String mId) {
		
		try {
			getConn();
			String sql = "SELECT * FROM I_HOBBY WHERE m_id = ?";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, mId);

			rs = psmt.executeQuery();
			while(rs.next()) {
				int getHobbySeq = rs.getInt(1);
				String getHobbyName = rs.getString(2);
				String getMid = rs.getString(3);
				hvo = new HobbyVO(getHobbySeq, getHobbyName,getMid);
				list.add(hvo);
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
		return list;
	}
	
	public int HobbyDelete(int[] hobbySeq) {
		
		try {

			getConn();
			String sql = "DELETE FROM I_HOBBY WHERE HOBBY_SEQ = ? OR HOBBY_SEQ = ? OR HOBBY_SEQ = ?";
			psmt =conn.prepareStatement(sql);
			psmt.setInt(1, hobbySeq[0]);
			psmt.setInt(2, hobbySeq[1]);
			psmt.setInt(3, hobbySeq[2]);
			
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
	public ArrayList<HobbyVO> HobbyUpdate(ArrayList<HobbyVO> hobbylist, String[] hobbyName, String mId) {
		try {

			getConn();
			for(int i=0; i<hobbylist.size(); i++) {
				String sql = "UPDATE I_HOBBY SET HOBBY_NAME = ? WHERE HOBBY_SEQ = ?";
				psmt =conn.prepareStatement(sql);
				psmt.setString(1, hobbyName[i]);
				psmt.setInt(2, hobbylist.get(i).getHobbySeq());
				cnt = psmt.executeUpdate();
			}

			//sql실행
			for(int i=0; i<hobbylist.size(); i++) {
				hvo = new HobbyVO(hobbylist.get(i).getHobbySeq(), hobbyName[i], mId);
				list.add(hvo);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close();
		}
		return list;
	}
	

}
