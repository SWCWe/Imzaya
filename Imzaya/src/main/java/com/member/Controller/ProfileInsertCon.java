package com.member.Controller;

import java.io.UnsupportedEncodingException;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.ProfileDAO;
import com.VO.ProfileVO;
import com.frontcontroller.Command;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class ProfileInsertCon implements Command {
	ServletContext _servletContext;
	
	public ProfileInsertCon(ServletContext servletContext) {
		_servletContext = servletContext;
	}
	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		
		HttpSession session = request.getSession();
		String mId = (String)session.getAttribute("mId");
		String chooseFile = request.getParameter("chooseFile");
		
		String fileName = null;
		int cnt = 0;
		
		ProfileDAO pdao = new ProfileDAO();
		System.out.println(mId);
		
		
		try {
			request.setCharacterEncoding("UTF-8");
		} catch (UnsupportedEncodingException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		String savePath = "upload";
		// 최대 업로드 파일 크기 5MB로 제한
		int uploadFileSizeLimit = 5 * 1024 * 1024;
		String encType = "UTF-8";
		String uploadFilePath = _servletContext.getRealPath(savePath);
		System.out.println("서버상의 실제 디렉토리 :");
		System.out.println(uploadFilePath);
		try {
			MultipartRequest multi = new MultipartRequest(request, // request 객체
					uploadFilePath, // 서버상의 실제 디렉토리
					uploadFileSizeLimit, // 최대 업로드 파일 크기
					encType, // 인코딩 방법
					// 동일한 이름이 존재하면 새로운 이름이 부여됨
					new DefaultFileRenamePolicy());
			// 업로드된 파일의 이름 얻기
			fileName = multi.getFilesystemName("chooseFile");
			String mInfo = multi.getParameter("info");
			System.out.println("문제가 되는 부분은 여기입니다.");
			System.out.println(mInfo);
			cnt = pdao.ProfileInsert(mId, fileName, mInfo);
			
			System.out.println(mId);
			System.out.println(fileName);
			System.out.println(mInfo);
			if (fileName == null) { // 파일이 업로드 되지 않았을때
				System.out.print("파일 업로드 되지 않았음");
			}
			System.out.println(fileName);
		} catch (Exception e) {
			e.printStackTrace();
		} // catch		
		if(cnt>0) {

			System.out.println("프로필 작성 성공");

		}
		else {
			System.out.println("수정실패");
		}
		
		

		return "../i_login/Hobby_Join.html";

	}

}
