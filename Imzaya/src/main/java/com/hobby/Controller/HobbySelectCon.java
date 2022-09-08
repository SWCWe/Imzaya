package com.hobby.Controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.HobbyDAO;
import com.VO.HobbyVO;
import com.VO.MemberVO;
import com.frontcontroller.Command;

public class HobbySelectCon implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		HttpSession session = request.getSession();
		MemberVO vo = (MemberVO)session.getAttribute("vo");
		HobbyDAO dao = new HobbyDAO();
		ArrayList<HobbyVO> list = dao.HobbySelect(vo.getmId());
		request.setAttribute("Hobbylist", list);
		return "../i_profile/profile.jsp";
	}

}
