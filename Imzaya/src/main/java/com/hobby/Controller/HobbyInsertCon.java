package com.hobby.Controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.HobbyDAO;
import com.VO.MemberVO;
import com.frontcontroller.Command;

public class HobbyInsertCon implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		
		HttpSession session = request.getSession();
		String mId = (String)session.getAttribute("mId");
		
		String[] hobbyName = request.getParameterValues("chk");
		System.out.println(hobbyName[0]+hobbyName[1]+hobbyName[2]);
		
		HobbyDAO hdao = new HobbyDAO();
		int cnt = hdao.HobbyInsert3(hobbyName,mId);
		
		if(cnt>0) {
			System.out.println("취미 작성 선공");
		}
		else {
			System.out.println("취미 작성 실패");
		}
		return "../i_index/index_notlog.html";
	}

}
