package com.member.Controller;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;
import java.util.Iterator;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.tomcat.util.http.fileupload.FileItem;
import org.apache.tomcat.util.http.fileupload.RequestContext;
import org.apache.tomcat.util.http.fileupload.disk.DiskFileItemFactory;
import org.apache.tomcat.util.http.fileupload.servlet.ServletFileUpload;

import com.DAO.MemberDAO;
import com.DAO.ProfileDAO;
import com.VO.MemberVO;
import com.VO.ProfileVO;
import com.frontcontroller.Command;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class ProfilePhotoUpdateCon implements Command {

	ServletContext _servletContext;

	public ProfilePhotoUpdateCon(ServletContext servletContext) {
		_servletContext = servletContext;
	}

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		
		HttpSession session = request.getSession();
		ProfileVO pvo = (ProfileVO)session.getAttribute("pvo");
		String id = pvo.getmId();
		String chooseFile = request.getParameter("chooseFile");
		String fileName = null;
		
		ProfileDAO pdao = new ProfileDAO();
		
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
			if (fileName == null) { // 파일이 업로드 되지 않았을때
				System.out.print("파일 업로드 되지 않았음");
			}
			System.out.println(fileName);
		} catch (Exception e) {
			e.printStackTrace();
		} // catch
		
		
		int cnt = pdao.ProfilePhotoUpdate(id, fileName);
		
		System.out.println(id);
		System.out.println(fileName);
		
		if(cnt>0) {
			pvo.setmPhoto(fileName);
			session.setAttribute("pvo", pvo);
			System.out.println("수정성공");
			System.out.println(id);
			System.out.println(fileName);
		}
		else {
			System.out.println("수정실패");
		}
		
		

		return "../i_profile/profile.jsp";

	}

}
