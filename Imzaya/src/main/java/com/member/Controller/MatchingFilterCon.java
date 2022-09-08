package com.member.Controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.MeetingDAO;
import com.VO.MemberVO;
import com.frontcontroller.Command;

public class MatchingFilterCon implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
	
		
		
		
		HttpSession session = request.getSession();
		MemberVO vo = (MemberVO)session.getAttribute("vo");
		
		String gender = vo.getmGender();
				
		String location = request.getParameter("location");
		String[] hobbyName = request.getParameterValues("chk");
		String age  = request.getParameter("age");
		
		System.out.println(location);
		System.out.println(hobbyName[0]);
		System.out.println(hobbyName[1]);
		System.out.println(hobbyName[2]);
		System.out.println(age);
		
		MeetingDAO mdao = new MeetingDAO();
		ArrayList<MemberVO> list = null;
		
		
		//로그인 한사람이    남자면 ---> 여자 매칭 |||  여자면--> 남자 매칭
		
		list= mdao.matchingFilter(gender,location,hobbyName,age);
		
		
		if(list != null) {
			System.out.println("리스트 널 아님");
			System.out.println(list.size());
			
			
		}else {
			System.out.println("리스트 널");
		}
			
		
		request.setAttribute("list", list);

		return "../i_date/date.jsp";
		
		
		
		
		
		
		
		
		
		
		
		
		
	
	}//

}//
