package com.hobby.Controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.HobbyDAO;
import com.frontcontroller.Command;

public class HobbyDeleteCon implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		HttpSession session = request.getSession();

		int [] hsq = (int[])session.getAttribute("hobbyseq");

	    HobbyDAO hdao = new HobbyDAO();
		int cnt = hdao.HobbyDelete(hsq);
		if(cnt>0) {
			System.out.println("해당 사용자에 관한 취미 삭제 성공");
		}else {
			System.out.println("취미 삭제 실패");
		}
		return "../i_index/index.jsp";
	}

}
