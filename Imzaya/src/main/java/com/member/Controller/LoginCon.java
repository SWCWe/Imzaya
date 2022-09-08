package com.member.Controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.MemberDAO;
import com.VO.MemberVO;
import com.frontcontroller.Command;

public class LoginCon implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		
		String mId = request.getParameter("id");
		String mPw = request.getParameter("pw");
		                                                                
		System.out.println("넘어온id : " + mId );
		System.out.println("넘어온pw : " + mPw );
		
		

		MemberDAO dao = new MemberDAO();
		MemberVO vo = dao.Login(mId, mPw);

		if (vo != null) {
			HttpSession session = request.getSession();
			session.setAttribute("vo", vo);

			
			return "../i_index/index.jsp";
			
		} else {
			
			System.out.println("로그인실패");
			return "LoginF.html";
		}
		
		
		
	}

	
	
	
	
	
	
	
}
