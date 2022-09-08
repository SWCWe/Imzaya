package com.meet.Controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.xml.stream.events.Comment;

import com.DAO.BoardDAO;
import com.DAO.CommentDAO;
import com.VO.BoardVO;
import com.VO.MemberVO;
import com.frontcontroller.Command;

public class ComWriteCon implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		
		
		
			HttpSession session = request.getSession();
		
		
		
	
		String content = request.getParameter("content");
		
		
		MemberVO vo  = (MemberVO)session.getAttribute("vo");
		BoardVO bvo = (BoardVO)session.getAttribute("bvo");
		
		String id = vo.getmId();
		int art_seq = bvo.getArticleSeq();
		
		CommentDAO cdao = new CommentDAO();
		int cnt =  cdao.ComWrite(art_seq, content,id);
		
		
		
		
		if(cnt>0) {
			System.out.println("댓글 작성 성공");
			
		}
		else {
			System.out.println("댓글 작성 실패");
	
		}
		return "../i_community/boardSelect.jsp";
		
		
		
		
		
	}

}
