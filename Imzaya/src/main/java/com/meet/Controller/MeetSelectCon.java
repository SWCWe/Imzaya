package com.meet.Controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.FriendDAO;
import com.DAO.MeetDAO;
import com.VO.FriendVO;
import com.VO.MeetVO;
import com.VO.MemberVO;
import com.frontcontroller.Command;

public class MeetSelectCon implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		HttpSession session = request.getSession();
		//세션에 friend list로 담기
		
		MeetDAO mtdao = new MeetDAO();
		ArrayList<MeetVO> meetlist = mtdao.MeetAllSelect();
		
		
		request.setAttribute("meetlist", meetlist);
		return "selectMember.jsp";
	}

	}


