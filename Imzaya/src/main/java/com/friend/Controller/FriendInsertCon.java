package com.friend.Controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.FriendDAO;
import com.VO.MemberVO;
import com.frontcontroller.Command;

public class FriendInsertCon implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		
		HttpSession session = request.getSession();
		MemberVO vo = (MemberVO)session.getAttribute("vo");
		
		String myId = vo.getmId();
		String friendId = request.getParameter("fId");
		System.out.println(friendId);
		String friendNick = request.getParameter("fNick");
		String friendPhoto = request.getParameter("fPhoto");
		
		FriendDAO fdao = new FriendDAO();
		int cnt = fdao.FriendInsert(myId, friendId, friendNick,friendPhoto);
		
		if(cnt>0) {
			System.out.println("친구 추가 선공");
		}
		else {
			System.out.println("친구 추가 실패");
		}
		return "../i_date/date.jsp";
	}

}
