package com.DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import com.VO.BoardVO;
import com.VO.MeetVO;
import com.VO.ProfileVO;

public class BoardDAO {
	
	private Connection conn =null;
	private PreparedStatement psmt = null;
	private int cnt = 0;
	
	private ResultSet rs = null;
	private ArrayList<BoardVO> list = new ArrayList<>();
	private BoardVO bvo = null;


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
	
	
//	public BoardVO BoardSelect(String mId) {
//			
//			try {
//				getConn();
//				String sql = "SELECT * FROM I_PROFILE WHERE M_ID=?";
//				psmt = conn.prepareStatement(sql);
//				psmt.setString(1, mId);
//				rs = psmt.executeQuery();
//				if(rs.next()) {
//					String getmPhoto = rs.getString(2);
//					String getmInfo = rs.getString(3);
//					bvo = new BoardVO(mId, getmPhoto,getmInfo);
//				}
//				
//			} catch (Exception e) {
//				// TODO Auto-generated catch block
//				e.printStackTrace();
//			}finally {
//				try {
//					close();
//					System.out.println(bvo);
//				}catch(Exception e2) {
//					e2.printStackTrace();
//				}
//			}
//			return bvo;
//			
//	}
	
	///////
	
	
//	public ArrayList<BoardVO> boardList() {
//			
//			ArrayList<BoardVO> list = new ArrayList<BoardVO>();
//			
//			try {
//				getConn();
//				String sql = "select * from board WHERE ";
//				
//				psmt = conn.prepareStatement(sql);
//				rs = psmt.executeQuery();
//				
//				
//				while(rs.next()) {
//					
//					int articleSeq =rs.getInt(1);
//					String articleTitle =rs.getString(2);
//					String articleContent =rs.getString(3);
//					String articleFile =rs.getString(4);
//					String articleDate =rs.getString(5);
//					String mId = rs.getString(6);
//					int articleCNT = rs.getInt(7);
//					
//					BoardVO vo = new BoardVO(articleSeq, articleTitle, articleContent, articleFile, articleDate, mId, articleCNT);
//					list.add(vo);
//					
//				}
//				
//			} catch (ClassNotFoundException e) {
//				
//				e.printStackTrace();
//			} catch (SQLException e) {
//				
//				e.printStackTrace();
//			}
//			finally {
//				try {
//					
//					if(rs != null){
//						rs.close();
//					}
//					if(psmt != null){
//						psmt.close();
//					}
//					if(conn != null){
//						conn.close();
//					}
//		
//				} catch (SQLException e) {
//					
//					e.printStackTrace();
//				}
//			
//			}
//			
//			
//			
//			return list;
//			
//	}
	
	
	
	public int BoardWrite(String articleTitle, String articleContent, String articleFile, String mId) {

		// OJDBC6.jar 파일가져오기
		// DB에 Table 만들기
		// JDBC코드 작성
		// 동적로딩
		try {

			getConn();
			String sql = "INSERT INTO i_community values(I_COMMUNITY_SEQ.nextval, ?, ?, ?, sysdate, ?, 0)";
			psmt =conn.prepareStatement(sql);
			
			psmt.setString(1, articleTitle);
			psmt.setString(2, articleContent);
			psmt.setString(3, articleFile);
			psmt.setString(4, mId);
			
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
	
	
	
	
	public BoardVO BoardClick(String seq ) {
		try {
			getConn();
			
			String sql = "SELECT * FROM i_community where article_seq = ?";
			
			
			
			
			psmt =conn.prepareStatement(sql);
			
			psmt.setString(1, seq);
			
			//sql준비
			
			rs = psmt.executeQuery();
			//sql실행
			
			while (rs.next()){
				
				
				int articleSeq = rs.getInt(1);
				String articleTitle = rs.getString(2);
				String articleContent = rs.getString(3);
				String articleFile = rs.getString(4); 
				String articleDate = rs.getString(5); 
				String mId = rs.getString(6); 
				int articleCNT = rs.getInt(7); 
				
				// 쿠키는 text만 담김
				// 세션에 저장되는 데이터는 어떠한 형태로든 타입
				bvo = new BoardVO(articleSeq, articleTitle , articleContent, articleFile , articleDate, mId, articleCNT);
				list.add(bvo);
				
			
				
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
		return bvo;
	}
	
	
	public ArrayList<BoardVO> BoardWriteSelect(String seq) {
		try {
			getConn();
			
			String sql = "SELECT * FROM i_community where article_file = ?";
			
			
			psmt =conn.prepareStatement(sql);
			
			psmt.setString(1, seq);
			
			//sql준비
			
			rs = psmt.executeQuery();
			//sql실행
			
			while (rs.next()){
				
				
				int articleSeq = rs.getInt(1);
				String articleTitle = rs.getString(2);
				String articleContent = rs.getString(3);
				String articleFile = rs.getString(4); 
				String articleDate = rs.getString(5); 
				String mId = rs.getString(6); 
				int articleCNT = rs.getInt(7); 
				
				// 쿠키는 text만 담김
				// 세션에 저장되는 데이터는 어떠한 형태로든 타입
				bvo = new BoardVO(articleSeq, articleTitle , articleContent, articleFile , articleDate, mId, articleCNT);
				list.add(bvo);
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
	
	//0==============조회수 -=======
	
	
	public  void UpdateCnt(int cnt , int seq) {
		try {
			getConn();
			
			String sql = "update i_community set ARTICLE_CNT= ? where ARTICLE_SEQ  = ? ";
			
			
			psmt =conn.prepareStatement(sql);
			
			psmt.setInt(1, cnt+1);
			psmt.setInt(2, seq);
			
			
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
		
	}
	
	
	
	
	

}///
