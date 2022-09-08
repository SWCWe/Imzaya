package com.member.Controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.MeetingDAO;
import com.DAO.MemberDAO;
import com.DAO.ProfileDAO;
import com.VO.MemberVO;
import com.VO.ProfileVO;
import com.frontcontroller.Command;

public class MatchingCon implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
	
		
		
		
		HttpSession session = request.getSession();
		MemberVO vo = (MemberVO)session.getAttribute("vo");
		
		String gender = vo.getmGender();
		
		
		MeetingDAO mdao = new MeetingDAO();
		ArrayList<MemberVO> list = null;
		
		
		//로그인 한사람이    남자면 ---> 여자 매칭 |||  여자면--> 남자 매칭
		if(gender.equals("M")) {   				
			list = mdao.matchingF();
			
		}else if (gender.equals("F")) {
			
			list = mdao.matchingM();
		
		}
		
		
		
		request.setAttribute("list", list);

		return "../i_date/date.jsp";
		
		

		
	}//

}//
