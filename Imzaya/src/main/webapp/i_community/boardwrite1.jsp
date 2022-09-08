<%@page import="com.VO.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>

<link rel="stylesheet" href="../assets/css/main.css" />
		<link rel="stylesheet" href="../assets/css/noscript.css" />

		<!--글씨폰트 태그-->
		<link rel="preconnect" href="https://fonts.googleapis.com">
		<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
		<link href="https://fonts.googleapis.com/css2?family=Jua&display=swap" rel="stylesheet">
		
		<!-- 글작성 css -->
		
		<link rel="stylesheet" href="../assets/css/write.css" />
		
<style>


body{
	font-family: 'Jua', sans-serif;

}

	

	
	.button{
    color: #ffffff;
   
    background-color: #ffc3dc;

    font-family: 'Jua', sans-serif;
    font-size: 0.8em;

    border-radius: 25px;
}


</style>



</head>

<body>

<!-- Header -->
<%
	MemberVO vo = (MemberVO)session.getAttribute("vo");
	String seq = request.getParameter("seq");
	
	
	
%>

				
				<header id="header" class="alt" style="background-color: #ffd9e9;">    <!--메뉴상단 배경색깔-->
					<a href="./index.jsp" class="logo"  style=" font-size: 38px; color: white; "> 임자야</a>
					<nav>
						<a href="#menu" style=" font-size: 25px; color: white; ">Menu</a>
					</nav>
				</header>

				<!-- Menu -->
					<nav id="menu">
						<ul class="links">
							<li><a href="../i_date/date.html">인연찾기</a></li>
							<li><a href="../i_community/community.jsp">모임찾기</a></li>
							<li><a href="../i_profile/profile.jsp">프로필</a></li>
							<li><a href="../i_message/message.html">메세지</a></li>
						</ul>
						<ul class="actions stacked" style="font-size: 1.1em;">
							<li><a href="../i_index/index.jsp" class="button primary fit" >홈으로</a></li>
							<li><a href="LogoutCon.do" class="button fit">로그아웃</a></li>
						</ul>
					</nav>

				<!--콘텐츠 부분 시작-->

					 
				
					 
					 <div class="content" style=" width: 100%; display: flex; align-content: center; justify-content: center; " >
							
							
							<form action="BoardWriteCon.do" style="margin-top: 5%;  width: 800px ;"  method="post" >
								<div class="fields">
									<div class="field half">
										<span style="font-size: 35px; ">게시글 작성</span> 
										<input type="text" name="name" id="name" placeholder="제목을 입력해주세요" />
									</div>
									
								</div>				
									
									<div class="field">
										<textarea name="content" id="message" placeholder="글 내용을 작성해주세요" rows="7"></textarea>
									</div>
										
										
									<input type="text" name="seq"  value="<%=seq%>" >
									
									
									<input type="submit" value="글작성 완료" class="button primary"  style="margin-top: 10px; font-family: 'Jua', sans-serif; " />
							
								</div>
								
									
							</form>
						
					 
					 
			
			 
				
			
	
		</div>  
		
		
		
		


			<script src="../assets/js/jquery.min.js"></script>
			<script src="../assets/js/jquery.scrolly.min.js"></script>
			<script src="../assets/js/jquery.scrollex.min.js"></script>
			<script src="../assets/js/browser.min.js"></script>
			<script src="../assets/js/breakpoints.min.js"></script>
			<script src="../assets/js/util.js"></script>
			<script src="../assets/js/main.js"></script>



</body>
</html>