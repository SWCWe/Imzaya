package com.meet.Controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.BoardDAO;
import com.VO.BoardVO;
import com.VO.MemberVO;
import com.frontcontroller.Command;

public class boardSelectCon implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		
		
		HttpSession session = request.getSession();
	
		String art_seq = request.getParameter("seq");
	
				
		
	
		
		BoardDAO dao = new BoardDAO();
		
		
		
		BoardVO bvo = dao.BoardClick(art_seq);
	
		
		if(bvo != null ) {
			System.out.println("게시물클릭 성공");
			
			
			
			
			session.setAttribute("bvo", bvo);
		}
		else {
			System.out.println("게시물클릭 실패");
	
		}
		return "../i_community/boardSelect.jsp";
		
		
		
		
		
		
		
		
		
		
		
		
		
	}//

}//
