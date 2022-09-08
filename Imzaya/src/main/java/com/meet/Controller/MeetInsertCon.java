package com.meet.Controller;

import java.io.UnsupportedEncodingException;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.MeetDAO;
import com.VO.MemberVO;
import com.frontcontroller.Command;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class MeetInsertCon implements Command {
	ServletContext _servletContext;

	public MeetInsertCon(ServletContext servletContext) {
		_servletContext = servletContext;
	}

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {

		int cnt = 0;
		HttpSession session = request.getSession();
		
		
		MemberVO vo = (MemberVO)session.getAttribute("vo");
		
		
		String id = vo.getmId();
		String chooseFile = request.getParameter("chooseFile");
		
		
		System.out.println(id);
		System.out.println(chooseFile);
		
		int meet_seq = 0;
		
		
		
		
		
		String fileName = null;
		
		MeetDAO mdao = new MeetDAO ();
		
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
			
			String name = multi.getParameter("name");
			String ctg = multi.getParameter("ctg");
			String content = multi.getParameter("content");
			String loc = multi.getParameter("loc");
			meet_seq = Integer.parseInt(multi.getParameter("mts_seq"));
			
			 cnt = mdao.MeetInsert(name, ctg,fileName , content, loc, id);
			
			
			
			
			System.out.println(chooseFile);
			System.out.println(name);
			System.out.println(ctg);
			System.out.println(content);
			System.out.println(loc);
			
			
			
			if (fileName == null) { // 파일이 업로드 되지 않았을때
				System.out.print("파일 업로드 되지 않았음");
			}
			System.out.println(fileName);
		} catch (Exception e) {
			e.printStackTrace();
		} // catch
		
	
		
		System.out.println(id);
		System.out.println(fileName);
		
		if(cnt>0) {
		
			
			System.out.println("모임생성 성공");
			
		}
		else {
			System.out.println("모임생성 실패");
		}
		
		

		return "../i_community/detail_page.jsp?mt_seq="+meet_seq;
		
		
	}

}
