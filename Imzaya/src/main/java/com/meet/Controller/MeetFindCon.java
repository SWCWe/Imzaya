package com.meet.Controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.MeetDAO;
import com.VO.MeetVO;
import com.frontcontroller.Command;

public class MeetFindCon implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		HttpSession session = request.getSession();
		
		String location = request.getParameter("location");
		String ctg = request.getParameter("chk");
		
		
		System.out.println("location:"+location);
		System.out.println("findcon :"+ctg);
		
		MeetDAO mtdao = new MeetDAO();
		
		
		
		
		
		ArrayList<MeetVO> meetfindlist = mtdao.MeetFind(location , ctg);
		
		
		
		request.setAttribute("meetfindlist", meetfindlist);
		
		return "../i_community/community_F.jsp";
	}

}
