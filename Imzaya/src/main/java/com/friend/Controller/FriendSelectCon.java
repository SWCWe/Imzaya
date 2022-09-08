package com.friend.Controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.FriendDAO;
import com.VO.FriendVO;
import com.VO.MemberVO;
import com.frontcontroller.Command;

public class FriendSelectCon implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		HttpSession session = request.getSession();
		MemberVO vo = (MemberVO)session.getAttribute("vo");
		
		String myId = vo.getmId();
		
		FriendDAO fdao = new FriendDAO();
		ArrayList<FriendVO> friendlist = fdao.FriendSelect(myId);
		
		
		request.setAttribute("friendlist", friendlist);
		return "../i_date/date.html";
	}

}
