package com.DAO;

import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.VO.MemberVO;

public class MemberDAO {
	
	private Connection conn =null;
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
	
	
	public int Join(String mId, String mPw, String mName, String mNick, String mBirthdate, String mGender, String mPhone, String mLocation, String mType) {
		// OJDBC6.jar 파일가져오기
		// DB에 Table 만들기
		// JDBC코드 작성
		// 동적로딩
		try {
			getConn();
			String sql = "INSERT INTO I_MEMBER VALUES(?,?,?,?,?,?,?,?,sysdate,?)";
			psmt =conn.prepareStatement(sql);
			psmt.setString(1,mId);
			psmt.setString(2,mPw);
			psmt.setString(3,mName);
			psmt.setString(4,mNick);
			psmt.setString(5,mBirthdate);
			psmt.setString(6,mGender);
			psmt.setString(7,mPhone);
			psmt.setString(8,mLocation);
			psmt.setString(9,mType);
			//psmt.setString(5,dates);
			//sql준비
			
			 cnt = psmt.executeUpdate();
			//sql실행
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			
			System.out.println("##"+mId+"##"+mPw+"##"+mName+"##"+mNick+"##"+mBirthdate+"##"+mGender+"##"+mPhone+"##"+mLocation+"##"+mType );
			
			close();
		}
		return cnt;
	}
	
	
	
	public int UpdatePw(String mId, String mPw) {

		try {
			getConn();
			
			String sql = "UPDATE I_MEMBER SET M_PW=?, WHERE M_ID= ?";
			psmt =conn.prepareStatement(sql);
			psmt.setString(1, mPw);
			psmt.setString(2, mId);
			cnt = psmt.executeUpdate();
			//sql실행
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			close();
		}
		return cnt;
		
	}
	
	public int UpdateName(String mId, String mName) {

		try {
			getConn();
			
			String sql = "UPDATE I_MEMBER SET M_NAME=?, WHERE M_ID= ?";
			psmt =conn.prepareStatement(sql);
			psmt.setString(1, mName);
			psmt.setString(2, mId);
			cnt = psmt.executeUpdate();
			//sql실행
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			close();
		}
		return cnt;
		
	}
	
	public int UpdatePhone(String mId, String mPhone) {

		try {
			getConn();
			
			String sql = "UPDATE I_MEMBER SET M_PHONE=?, WHERE M_ID= ?";
			psmt =conn.prepareStatement(sql);
			psmt.setString(1, mPhone);
			psmt.setString(2, mId);
			cnt = psmt.executeUpdate();
			//sql실행
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			close();
		}
		return cnt;
		
	}
	
	
	public int Update1(String mId, String mPw, String mName) {

		try {
			getConn();
			
			String sql = "UPDATE I_MEMBER SET M_PW=?, M_NAME = ? WHERE M_ID= ?";
			psmt =conn.prepareStatement(sql);
			psmt.setString(1, mPw);
			psmt.setString(2, mName);
			psmt.setString(3, mId);
			cnt = psmt.executeUpdate();
			//sql실행
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			close();
		}
		return cnt;
		
	}
	
	public int Update2(String mId, String mPw, String mPhone) {

		try {
			getConn();
			
			String sql = "UPDATE I_MEMBER SET M_PW=?, M_PHONE = ? WHERE M_ID= ?";
			psmt =conn.prepareStatement(sql);
			psmt.setString(1, mPw);
			psmt.setString(2, mPhone);
			psmt.setString(3, mId);
			cnt = psmt.executeUpdate();
			//sql실행
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			close();
		}
		return cnt;
		
	}
	
	public int Update3(String mId, String mName, String mPhone) {

		try {
			getConn();
			
			String sql = "UPDATE I_MEMBER SET M_NAME=?, M_PHONE = ? WHERE M_ID= ?";
			psmt =conn.prepareStatement(sql);
			psmt.setString(1, mName);
			psmt.setString(2, mPhone);
			psmt.setString(3, mId);
			cnt = psmt.executeUpdate();
			//sql실행
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			close();
		}
		return cnt;
		
	}
	
	public int UpdateAll(String mId, String mPw, String mName, String mPhone) {


		
		try {
			getConn();
			
			String sql = "UPDATE I_MEMBER SET M_PW=?, M_NAME=?, M_PHONE=? WHERE M_ID= ?";
			psmt =conn.prepareStatement(sql);
			psmt.setString(1, mPw);
			psmt.setString(2, mName);
			psmt.setString(3, mPhone);
			psmt.setString(4, mId);
			cnt = psmt.executeUpdate();
			//sql실행
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			close();
		}
		return cnt;
		
	}
	
//	public ArrayList<MemberVO> selectAll() {
//
//
//		try {
//			getConn();
//			
//			String sql = "SELECT * FROM MESSAGE_MEMBER";
//			
//			psmt =conn.prepareStatement(sql);
//			//sql준비
//			
//			rs = psmt.executeQuery();
//			//sql실행
//			
//			while (rs.next()){
//				// 쿠기를 활용한 로그인 처리
//				//Cookie cookie= new Cookie("id", id);
//				//response.addCookie(cookie);
//				
//				String getemail = rs.getString(1); // email
//				String gettel = rs.getString(3); // tel
//				String getaddress = rs.getString(4); // address
//				// 쿠키는 text만 담김
//				// 세션에 저장되는 데이터는 어떠한 형태로든 타입
//				memberVO vo = new memberVO(getemail, gettel, getaddress);
//				list.add(vo);
//			}
//		
//		} catch (Exception e) {
//			e.printStackTrace();
//		}finally {
//			try {
//				close();
//			}catch(Exception e2) {
//				e2.printStackTrace();
//			}
//		}
//		return list;
//	}
	
	
	public MemberVO Login(String mId, String mPw) {
		try {
			getConn();
			
			String sql = "SELECT * FROM i_member WHERE (m_id = ? and m_pw = ?)";
			
			psmt =conn.prepareStatement(sql);
			psmt.setString(1, mId);
			psmt.setString(2, mPw);
			//sql준비
			              
			rs = psmt.executeQuery();
			//sql실행
			
			if (rs.next()){
				String getmId = rs.getString(1); // id
				String getmPw = rs.getString(2); // pw
				String getmName = rs.getString(3); // name
				String getmNick = rs.getString(4); // nick
				String getmBirhdate = rs.getString(5); // birthdate
				String getmGender = rs.getString(6); // gender
				String getmPhone = rs.getString(7); // phone
				String getmLocation = rs.getString(8); // location
				String getmType = rs.getString(10);
				
				vo = new MemberVO(getmId, getmPw, getmName, getmNick, getmBirhdate, getmGender, getmPhone, getmLocation, getmType);
			}
			
			
		
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			System.out.println(vo);
			try {
				close();
			}catch(Exception e2) {
				e2.printStackTrace();
			}
		}
		return vo;
	}
	public int UpdateNick(String mId, String mNick) {
        try {
            getConn();
            
            String sql = "UPDATE I_MEMBER SET M_NICK=? WHERE M_ID= ?";
            psmt =conn.prepareStatement(sql);
            
            psmt.setString(1, mNick);
            psmt.setString(2, mId);
            cnt = psmt.executeUpdate();
            //sql실행
            
        } catch (Exception e) {
            e.printStackTrace();
        }finally {
            close();
        }
        return cnt;
        
    }
    
    public int UpdateLocation(String mId, String mLocation) {
        try {
            getConn();
            
            String sql = "UPDATE I_MEMBER SET M_LOCATION=? WHERE M_ID= ?";
            psmt =conn.prepareStatement(sql);
            
            psmt.setString(1, mLocation);
            psmt.setString(2, mId);
            cnt = psmt.executeUpdate();
            //sql실행
            
        } catch (Exception e) {
            e.printStackTrace();
        }finally {
            close();
        }
        return cnt;
        
    }

	
	
}
