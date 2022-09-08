package com.member.Controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.MemberDAO;
import com.DAO.MemberDAO;
import com.VO.MemberVO;
import com.frontcontroller.Command;

public class UpdateCon implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
	
		HttpSession session = request.getSession();
		// session을 열수있는 키가 쿠키로 되어있음.

		
		MemberVO vo = (MemberVO) session.getAttribute("vo");
		// session은 object니까 형변환(downcasting)
		String mId = vo.getmId();

		
		String mPw = request.getParameter("password"); // 수정할 비번(파라미터 형태)
		String mName = request.getParameter("username"); // 수정할 비번
		String mPhone = request.getParameter("tel"); // 수정할 비번

		if(mPw.equals("")) {
			System.out.println("메롱");
			System.out.println(mName);
			System.out.println(mPhone);
			
		}
		MemberDAO dao = new MemberDAO();
		int cnt = 0;
		if (!mPw.equals("") && !mName.equals("") && !mPhone.equals("")) {
			
			cnt = dao.UpdateAll(mId, mPw, mName, mPhone);
          
			
			if (cnt > 0) { // 수정에 성공했을 때
				vo.setmPw(mPw);
				vo.setmName(mName);
				vo.setmPhone(mPhone);
				// vo에 바뀐정보를 다시넣어준다(vo는 email,tel,address로 이뤄짐, email은 안바뀜)
				// 메인페이지로 전환하기 전에

				// session을 다시 덮어씌워줘야함(걍 똑같은vo)
				session.setAttribute("vo", vo); // 회원정보가 수정된

			}
		} else if (!mPw.equals("") && !mName.equals("")) {
			System.out.println("성공@");
			cnt = dao.Update1(mId, mPw, mName);
            System.out.println("성공1");
			if (cnt > 0) { // 수정에 성공했을 때
				vo.setmPw(mPw);
				vo.setmName(mName);
				vo.setmPhone(mId);
				// vo에 바뀐정보를 다시넣어준다(vo는 email,tel,address로 이뤄짐, email은 안바뀜)
				// 메인페이지로 전환하기 전에

				// session을 다시 덮어씌워줘야함(걍 똑같은vo)
				session.setAttribute("vo", vo); // 회원정보가 수정된

			}
		} else if (!mPw.equals("") && !mPhone.equals("")) {
			cnt = dao.Update2(mId, mPw, mPhone);
			System.out.println("성공2");
			if (cnt > 0) { // 수정에 성공했을 때
				vo.setmPw(mPw);
				vo.setmName(mPhone);
				vo.setmPhone(mId);
				// vo에 바뀐정보를 다시넣어준다(vo는 email,tel,address로 이뤄짐, email은 안바뀜)
				// 메인페이지로 전환하기 전에

				// session을 다시 덮어씌워줘야함(걍 똑같은vo)
				session.setAttribute("vo", vo); // 회원정보가 수정된

			}
		} else if (!mName.equals("") && !mPhone.equals("")) {
			cnt = dao.Update3(mId, mName, mPhone);
			System.out.println("성공3");
			if (cnt > 0) { // 수정에 성공했을 때

				vo.setmName(mName);
				vo.setmPhone(mId);
				vo.setmPhone(mPhone);

				// vo에 바뀐정보를 다시넣어준다(vo는 email,tel,address로 이뤄짐, email은 안바뀜)
				// 메인페이지로 전환하기 전에

				// session을 다시 덮어씌워줘야함(걍 똑같은vo)
				session.setAttribute("vo", vo); // 회원정보가 수정된

			}
		} else if (!mPw.equals("")) {
			cnt = dao.UpdatePw(mId, mPw);
			System.out.println("성공4");
			if (cnt > 0) { // 수정에 성공했을 때

				vo.setmPhone(mId);
				vo.setmPhone(mPw);

				// vo에 바뀐정보를 다시넣어준다(vo는 email,tel,address로 이뤄짐, email은 안바뀜)
				// 메인페이지로 전환하기 전에

				// session을 다시 덮어씌워줘야함(걍 똑같은vo)
				session.setAttribute("vo", vo); // 회원정보가 수정된

			}
		} else if (!mName.equals("")) {
			cnt = dao.UpdateName(mId, mName);
			System.out.println("성공5");
			if (cnt > 0) { // 수정에 성공했을 때

				vo.setmName(mName);
				vo.setmPhone(mId);

				// vo에 바뀐정보를 다시넣어준다(vo는 email,tel,address로 이뤄짐, email은 안바뀜)
				// 메인페이지로 전환하기 전에

				// session을 다시 덮어씌워줘야함(걍 똑같은vo)
				session.setAttribute("vo", vo); // 회원정보가 수정된

			}
		} else if (!mPhone.equals("")) {
			cnt = dao.UpdatePhone(mId, mPhone);
			System.out.println("성공6");
			if (cnt > 0) { // 수정에 성공했을 때

				vo.setmName(mPhone);
				vo.setmPhone(mId);

				// vo에 바뀐정보를 다시넣어준다(vo는 email,tel,address로 이뤄짐, email은 안바뀜)
				// 메인페이지로 전환하기 전에

				// session을 다시 덮어씌워줘야함(걍 똑같은vo)
				session.setAttribute("vo", vo); // 회원정보가 수정된

			}
		}
		return "../i_index/index.jsp";

	}
}
