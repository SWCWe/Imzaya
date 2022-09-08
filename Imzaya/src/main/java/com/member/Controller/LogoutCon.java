package com.member.Controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.frontcontroller.Command;

public class LogoutCon implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		
		
		System.out.println("세션 지우는중");
		
		
		HttpSession session = request.getSession();
		session.removeAttribute("vo");
		
		
		
		
		return "../i_index/index_notlog.html";
		
		
		
		
		
	}

}
