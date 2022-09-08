package com.DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.VO.BoardVO;
import com.VO.CommentVO;

public class CommentDAO {

	
	private Connection conn =null;
	private PreparedStatement psmt = null;
	private int cnt = 0;
	
	private ResultSet rs = null;
	private ArrayList<BoardVO> list = new ArrayList<>();
	private BoardVO bvo = null;
	private ArrayList<CommentVO> clist =new ArrayList<>();


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
	
	
	public int ComWrite(int art_seq, String content, String mId) {

		// OJDBC6.jar 파일가져오기
		// DB에 Table 만들기
		// JDBC코드 작성
		// 동적로딩
		try {

			getConn();
			String sql = "INSERT INTO i_comment values(I_COMMent_SEQ.nextval, ?, ?, sysdate, ?)";
			psmt =conn.prepareStatement(sql);
			
			psmt.setInt(1, art_seq);
			psmt.setString(2, content);		
			psmt.setString(3, mId);
			
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
	
	
	//############댓글 리스트 가져오기
	public ArrayList<CommentVO> ComWriteSelect(int seq) {
		try {
			getConn();
			
			String sql = "SELECT * FROM i_comment where article_seq = ?";
			
			
			psmt =conn.prepareStatement(sql);
			
			psmt.setInt(1, seq);
			
			//sql준비
			
			rs = psmt.executeQuery();
			//sql실행
			
			while (rs.next()){
				
				int c_seq = rs.getInt(1);
				int a_seq = rs.getInt(2);
				String content = rs.getString(3);
				String date = rs.getString(4);
				 
				String id = rs.getString(5); 
				
				
				// 쿠키는 text만 담김
				// 세션에 저장되는 데이터는 어떠한 형태로든 타입
				
				
				CommentVO cvo = new CommentVO(c_seq,a_seq,content,date,id);
				
				clist.add(cvo);
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
		return clist;
	}
	
	
	
	
}///
