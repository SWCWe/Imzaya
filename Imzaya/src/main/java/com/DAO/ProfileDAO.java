package com.DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.VO.ProfileVO;

public class ProfileDAO {
	
	private Connection conn =null;
	private PreparedStatement psmt = null;
	private int cnt = 0;
	
	private ResultSet rs = null;
	private ProfileVO pvo = null;
	String profilePhoto = "";

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
	
	public int ProfileInsert(String mId, String mPhoto, String mInfo) {

		// OJDBC6.jar 파일가져오기
		// DB에 Table 만들기
		// JDBC코드 작성
		// 동적로딩
		try {

			getConn();
			String sql = "INSERT INTO I_PROFILE VALUES(?, ?, ?)";
			psmt =conn.prepareStatement(sql);
			psmt.setString(1, mId);
			psmt.setString(2, mPhoto);
			psmt.setString(3, mInfo);
			
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
	
	public ProfileVO ProfileSelect(String mId) {
		
		try {
			getConn();
			String sql = "SELECT * FROM I_PROFILE WHERE M_ID=?";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, mId);
			rs = psmt.executeQuery();
			if(rs.next()) {
				String getmPhoto = rs.getString(2);
				String getmInfo = rs.getString(3);
				pvo = new ProfileVO(mId, getmPhoto,getmInfo);
			}
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			try {
				close();
				System.out.println(pvo);
			}catch(Exception e2) {
				e2.printStackTrace();
			}
		}
		return pvo;
	}
	
	public int ProfilePhotoUpdate(String mId, String mPhoto) {
		try {
			getConn();
			
			String sql = "UPDATE I_PROFILE SET M_PHOTO=? WHERE M_ID= ?";
			psmt =conn.prepareStatement(sql);
			psmt.setString(1, mPhoto);
			psmt.setString(2, mId);
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
	
	
	public int ProfileInfoUpdate(String mId, String mInfo) {
		try {
			getConn();
			
			String sql = "UPDATE I_PROFILE SET M_INFO=? WHERE M_ID= ?";
			psmt =conn.prepareStatement(sql);
			psmt.setString(1, mInfo);
			psmt.setString(2, mId);
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
	
	public String ProfileSelectPhoto(String mId) {
		try {
			getConn();
			
			String sql = "SELECT M_PHOTO FROM I_PROFILE WHERE M_ID = ?";

			psmt =conn.prepareStatement(sql);
			psmt.setString(1, mId);
			rs = psmt.executeQuery();
			
			//sql실행
			
			if(rs.next()) {
				profilePhoto = rs.getString(1);
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
		return profilePhoto;
	}
	
}
