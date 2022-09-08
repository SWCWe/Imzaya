package com.hobby.Controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.HobbyDAO;

import com.VO.HobbyVO;
import com.VO.MemberVO;

import com.frontcontroller.Command;

public class HobbyUpdateCon implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		
		HttpSession session = request.getSession();
		MemberVO vo = (MemberVO)session.getAttribute("vo");
		
		HobbyDAO hdao = new HobbyDAO();
		ArrayList<HobbyVO> hobbyList = (ArrayList<HobbyVO>)session.getAttribute("hobbyList");

		String [] hobbyName = request.getParameterValues("chk");
	
		HobbyDAO dao = new HobbyDAO();
		ArrayList<HobbyVO> hobbyChangeList = dao.HobbyUpdate(hobbyList, hobbyName, vo.getmId());
		
		if(hobbyChangeList !=null) {
			session.setAttribute("hobbylist", hobbyChangeList);
		}
		else {
			System.out.println("수정실패");
		}
		return "../i_profile/profile.jsp";
	}

}
