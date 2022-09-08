package com.member.Controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.ProfileDAO;
import com.VO.MemberVO;
import com.VO.ProfileVO;
import com.frontcontroller.Command;

public class ProfileInfoUpdateCon implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		
		HttpSession session = request.getSession();
		ProfileVO pvo = (ProfileVO)session.getAttribute("pvo");
		String id = pvo.getmId();
		String info = request.getParameter("info");
		
		ProfileDAO pdao = new ProfileDAO();
		
		int cnt = pdao.ProfileInfoUpdate(id, info);
		
		System.out.println(id);
		System.out.println(info);
		
		if(cnt>0) {
			pvo.setmInfo(info);
			session.setAttribute("pvo", pvo);
			System.out.println("수정성공");
		}
		else {
			System.out.println("수정실패");
		}
		
		return "../i_profile/profile.jsp";
	}

}
