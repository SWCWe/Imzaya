package com.meet.Controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.BoardDAO;
import com.VO.MemberVO;
import com.frontcontroller.Command;

public class BoardWriteCon implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		
		HttpSession session = request.getSession();
		
		
		
		String articleTitle = request.getParameter("name");
		String articleContent = request.getParameter("content");
		String articleFile = request.getParameter("seq");
		MemberVO vo  = (MemberVO)session.getAttribute("vo");
		
		
		
		
		System.out.println(articleTitle);
		System.out.println(articleContent);
		System.out.println(articleFile);
		System.out.println(articleFile);
		
		BoardDAO dao = new BoardDAO();
		int cnt = dao.BoardWrite(articleTitle, articleContent, articleFile, vo.getmId());
		if(cnt>0) {
			System.out.println("게시글 작성 성공");
			
		}
		else {
			System.out.println("게시글 작성 실패");
	
		}
		return "../i_community/detail_page.jsp?mt_seq="+articleFile;
		
		
		
	}///

}////
