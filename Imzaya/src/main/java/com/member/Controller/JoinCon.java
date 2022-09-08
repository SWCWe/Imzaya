package com.member.Controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.MemberDAO;
import com.frontcontroller.Command;

public class JoinCon implements Command {

	public String execute(HttpServletRequest request, HttpServletResponse response) {
		HttpSession session = request.getSession();
		String mId = request.getParameter("id");
		String mPw = request.getParameter("pw");
		String mName = request.getParameter("name");
		String mNick = request.getParameter("nick");
		String mBirthdate = request.getParameter("birthdate");
		String mGender = request.getParameter("gender");
		String mPhone = request.getParameter("phone");
		String mLocation = request.getParameter("location");
		String mType = "N";
		session.setAttribute("mId", mId);
		
		
		MemberDAO dao = new MemberDAO();
		int cnt = dao.Join(mId, mPw, mName, mNick, mBirthdate, mGender, mPhone, mLocation, mType);
		
		if(cnt>0) {
			System.out.println("회원가입 성공");
			return "../i_login/Profile_Join.jsp";
		}
		else {
			System.out.println("입력실패");
		}
		return "../i_index/index_notlog.html";
	}

}
