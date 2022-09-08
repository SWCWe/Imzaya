package com.frontcontroller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.friend.Controller.FriendInsertCon;
import com.friend.Controller.FriendSelectCon;
import com.hobby.Controller.HobbyInsertCon;
import com.hobby.Controller.HobbySelectCon;
import com.hobby.Controller.HobbyUpdateCon;
import com.meet.Controller.BoardWriteCon;

import com.meet.Controller.ComWriteCon;
import com.meet.Controller.MeetFindCon;
import com.meet.Controller.MeetInsertCon;
import com.meet.Controller.boardSelectCon;
import com.member.Controller.JoinCon;
import com.member.Controller.LoginCon;
import com.member.Controller.LogoutCon;
import com.member.Controller.MatchingCon;
import com.member.Controller.MatchingFilterCon;
import com.member.Controller.ProfileInfoUpdateCon;
import com.member.Controller.ProfileInsertCon;
import com.member.Controller.ProfileLocationCon;
import com.member.Controller.ProfileNickUpdateCon;
import com.member.Controller.ProfilePhotoUpdateCon;
import com.member.Controller.UpdateCon;
import com.message.Controller.MessageInsertCon;

@WebServlet("*.do")
public class FrontController extends HttpServlet {
	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// Client가 요청한 URI주소 가져오기
				String requestURI = request.getRequestURI();
				// 컨텍스트 패스(프로젝트명) 가져오기
				String contextPath = request.getContextPath();
				// 클라이언트 요청 구분
				String requestUrl = requestURI.substring(contextPath.length());
			
				request.setCharacterEncoding("utf-8");
				System.out.println(requestUrl);
				Command command = null;
//				
				
				//// 로그인, 회원가입, 로그아웃 요청////
				if(requestUrl.equals("/i_login/LoginCon.do")) {
					System.out.println("로그인 요청");
					command = new LoginCon();
				}else if(requestUrl.equals("/i_login/JoinCon.do")) {
					System.out.println("회원가입 요청");
					command = new JoinCon();
				}
				else if(requestUrl.equals("/i_index/LogoutCon.do")) {
					System.out.println("로그아웃 요청");
					command = new LogoutCon();
				}
				
				
				// 프로필 관련 요청
				else if(requestUrl.equals("/i_login/ProfileInsertCon.do")) {
					System.out.println("프로필 작성 삽입 요청");
					command = new ProfileInsertCon(getServletContext());
				}
				
				else if(requestUrl.equals("/i_profile/ProfilePhotoUpdateCon.do")) {
					System.out.println("프로필 사진 변경 요청");
					command = new ProfilePhotoUpdateCon(getServletContext());
				}
				else if(requestUrl.equals("/i_profile/ProfileInfoUpdateCon.do")) {
					System.out.println("프로필 상태 메시지 수정 요청");
					command = new ProfileInfoUpdateCon();
				}
				
				
				// 개인 정보 관련 요청
				else if (requestUrl.equals("/i_login/HobbyInsertCon.do")) {
					System.out.println("취미 삽입 요청");
					command = new HobbyInsertCon();
				}else if (requestUrl.equals("/i_profile/HobbySelectCon.do")) {
					System.out.println("사용자 취미 정보 요청");
					command = new HobbySelectCon();
				}else if (requestUrl.equals("/i_profile/HobbyUpdateCon.do")) {
					System.out.println("취미 변경 요청");
					command = new HobbyUpdateCon();
				}
				
				else if(requestUrl.equals("/i_profile/ProfileNickUpdateCon.do")) {
					System.out.println("닉네임 변경 요청");
					command = new ProfileNickUpdateCon();
				}
				else if(requestUrl.equals("/i_profile/ProfileLocationCon.do")) {
					System.out.println("지역 변경 요청");
					command = new ProfileLocationCon();
				} else if (requestUrl.equals("/i_profile/UpdateCon.do")) {
					System.out.println("회원정보 변경 요청");
					command = new UpdateCon();
				}
				
				// 친구 관련 요청
				else if (requestUrl.equals("/i_date/FriendInsertCon.do")) {
					System.out.println("친구 추가 요청");
					command = new FriendInsertCon();
				}

				// 친구 관련 요청
				else if(requestUrl.equals("/i_date/FriendSelectCon.do")) {
					System.out.println("친구 목록 보기");
					command = new FriendSelectCon();
				}
				
				// 메세지 관련 요청
				else if (requestUrl.equals("/i_message/MessageInsertCon.do")) {
					System.out.println("메세지 작성 요청");
					command = new MessageInsertCon();
				}
				
				
				//===========랜덤매칭=============
				else if (requestUrl.equals("/i_date/MatchingCon.do")) {
					System.out.println("랜덤 매칭 요청");
					command = new MatchingCon();
				}else if (requestUrl.equals("/i_date/MatchingFilterCon.do")) {
					System.out.println("필터링 매칭 요청");
					command = new MatchingFilterCon();
				}
				
				//===============================================================
				
			///////==========  모임찾기 필터링 ==============
				
					else if (requestUrl.equals("/i_community/MeetFindCon.do")) {
						System.out.println("모임 필터링 요청");
						command = new MeetFindCon();
					}
					
					
					/////===========모임생성(사진포함) -=-----
					
					else if (requestUrl.equals("/i_community/MeetInsertCon.do")) {
						System.out.println("모임생성(사진) 요청");
						command = new MeetInsertCon(getServletContext());
					}
				
					////=============== 게시판 글 작성 ===============
					else if (requestUrl.equals("/i_community/BoardWriteCon.do")) {
						System.out.println("모임생성(사진) 요청");
						command = new BoardWriteCon();
					}
				
				//=================댓글 작성
				
					else if (requestUrl.equals("/i_community/ComWriteCon.do")) {
						System.out.println("댓글작성 요청");
						command = new ComWriteCon();
						
						//====게시판 클릭 
					}else if (requestUrl.equals("/i_community/boardSelectCon.do")) {
						System.out.println("게시판 클릭 요청");
						command = new boardSelectCon();
					}
				
			
					
					///==================url 반환 부분 ==============
					String moveUrl = command.execute(request, response);
					
						if(moveUrl.equals("../i_date/date.jsp")) {
							RequestDispatcher rd = request.getRequestDispatcher("../i_date/date.jsp");
							rd.forward(request, response);
							
						}else if(moveUrl.equals("../i_community/community_F.jsp")) {
							RequestDispatcher rd = request.getRequestDispatcher("../i_community/community_F.jsp");
							rd.forward(request, response);
							
						}
						
						else {
							response.sendRedirect(moveUrl);
						}
					
					
					/////
		/////
	}
}