package com.member.Controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.MemberDAO;
import com.DAO.ProfileDAO;
import com.VO.MemberVO;
import com.frontcontroller.Command;

public class ProfileNickUpdateCon implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		
		HttpSession session = request.getSession();
		MemberVO vo = (MemberVO)session.getAttribute("vo");
		
		String id = vo.getmId();
		String nick = request.getParameter("nick");
		
		MemberDAO dao = new MemberDAO();
		
		int cnt = dao.UpdateNick(id, nick);
		
		System.out.println(id);
		System.out.println(nick);
		
		if(cnt>0) {
			vo.setmNick(nick);
			session.setAttribute("vo", vo);

			System.out.println("수정성공");
		}
		else {
			System.out.println("수정실패");
		}
		
		return "../i_profile/profile.jsp";
	}

}
