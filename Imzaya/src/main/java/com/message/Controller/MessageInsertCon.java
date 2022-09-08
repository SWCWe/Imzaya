package com.message.Controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.MessageDAO;

import com.VO.MemberVO;
import com.frontcontroller.Command;

public class MessageInsertCon implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		
		
		HttpSession session = request.getSession();
		MemberVO vo = (MemberVO)session.getAttribute("vo");
		MessageDAO mdao = new MessageDAO();
		
		String send = vo.getmId();
		String rec = request.getParameter("rec");
		String content = request.getParameter("msgContent");
		int cnt =mdao.MessageInsert(content,send, rec );
		
		if(cnt>0) {
			System.out.println("친구 추가 선공");
		}
		else {
			System.out.println("친구 추가 실패");
		}
		return "../i_message/message.jsp";
	}

}
