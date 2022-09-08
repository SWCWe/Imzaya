<%@page import="com.VO.MeetVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.DAO.MeetDAO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="utf-8">
<title>Insert title here</title>

  <% MeetDAO dao = new MeetDAO();%>
  <% ArrayList<MeetVO>list = dao.MeetNineSelect();%>
	<link rel="stylesheet" href="../assets/css/main.css" />
		<noscript><link rel="stylesheet" href="../assets/css/noscript.css" /></noscript>

		<!--글씨폰트 태그-->
		<link rel="preconnect" href="https://fonts.googleapis.com">
		<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
		<link href="https://fonts.googleapis.com/css2?family=Jua&display=swap" rel="stylesheet">



		<!--커뮤니티 메인 링크-->
		<!-- Swiper CSS -->
		<link rel="stylesheet" href="../assets/css/swiper-bundle.min.css">

		<!-- CSS -->
	   <link rel="stylesheet" href="../assets/css/style2.css">
	   <!-- Favicon-->
	   <link rel="icon" type="image/x-icon" href="../assets/favicon.ico" />
	   <!-- Bootstrap icons-->
	   <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
	   <!-- Core theme CSS (includes Bootstrap)-->
	   <link href="../assets/css/styles.css" rel="stylesheet" />

		
		<style>
		
		
		body{
			font-family: 'Jua', sans-serif;
			background-color:#ffff;
		}
		
		.button1{
			color: black;
			font-size: 25px;
			
			
			
			
	
	
	/*======슬라이드부분 스타일적용=======*/
		}
		.button{
		    color: #ffffff;
		   
		    background-color: #ffc3dc;
		
		    font-family: 'Jua', sans-serif;
		    font-size: 17px;
		
		    border-radius: 48px;
		}
		
		.swiper-button-next{
  
			  left: 96%;
			  height: 10%
			 
			}
		.swiper-button-prev{
		  left: 2%;
		  height: 10%
		}	
		
		
		.container {
			margin-top: 0px;
		}
		
		
		</style>

</head>




<body class="is-preload">

		<!-- Wrapper -->
			<div id="wrapper">


					<!-- Header -->

				
				<header id="header" class="alt" style="background-color: #ffd9e9;">    <!--메뉴상단 배경색깔-->
					<a href="../i_index/index.jsp" class="logo"  style=" font-size: 38px; color: white; "> 임자야</a>
					<nav>
						<a href="#menu" style=" font-size: 25px; color: white; ">Menu</a>
					</nav>
				</header>

				<!-- Menu -->
					<nav id="menu">
						<ul class="links">
							<li><a href="../i_date/date.jsp">인연찾기</a></li>
							<li><a href="../i_community/community.jsp">모임찾기</a></li>
							<li><a href="../i_profile/profile.jsp">프로필</a></li>
							<li><a href="../i_message/message.jsp">메세지</a></li>
						</ul>
						<ul class="actions stacked" style="font-size: 1.1em;">
							<li><a href="../i_index/index.jsp" class="button primary fit" >홈으로</a></li>
							<li><a href="LogoutCon.do" class="button fit">로그아웃</a></li>
						</ul>
					</nav>

				<!--콘텐츠 부분 시작-->
					


				<!-- Header-->
				<header class="bg-dark py-5">
					<div class="container px-4 px-lg-5 my-5">
						<div class="text-center text-white">
							<h1 class="display-4 fw-bolder">임자야와 모임찾기</h1>
							
						</div>
					</div>
				</header>
				<div class="container1" style="display: flex; justify-content: center;">
					
						<button class="button" style="border-radius: 10px;">

							<a href="meet_gen.jsp">모임생성</a>

						</button>
						
						<button class="button" style="border-radius: 10px;">

							<a href="find_filter.html">지역 / 모임 카테고리</a>

						</button>
				
				
				</div>
				
				
				
				<!-- Section-->
				
				<div class="slide-container swiper">
					<div class="slide-content">
						<div class="card-wrapper swiper-wrapper">
							
							<% for(int i=0; i<list.size(); i++)
								{%>
							<div class="card swiper-slide">
								<div class="image-content">
									<span class="overlay"></span>
									<div class="card-image">
								<img src="../upload/<%=list.get(i).getMeetPhoto()%>" alt=""
									class="card-img" />
								
							</div>
								</div>
								<div class="card-content">
									<h2 class="name"><%=list.get(i).getMeetName() %></h2>
									<p class="description"><%=list.get(i).getMeetContent() %></p>
		                             
		                             <button type="button" class="button"
						onClick="location.href='detail_page.jsp?mt_seq=<%=list.get(i).getMeetSeq()%>'">가입 하기</button>
								<%System.out.print(list.get(i).getMeetSeq()); %>
								</div>
							</div>
							<% } %>
							
						</div>
					</div>
		
					<div class="swiper-button-next swiper-navBtn"></div>
					<div class="swiper-button-prev swiper-navBtn"></div>
					<div class="swiper-pagination"></div>
				</div>
				



			

			</div>

		<!-- Scripts -->
			<script src="../assets/js/jquery.min.js"></script>
			<script src="../assets/js/jquery.scrolly.min.js"></script>
			<script src="../assets/js/jquery.scrollex.min.js"></script>
			<script src="../assets/js/browser.min.js"></script>
			<script src="../assets/js/breakpoints.min.js"></script>
			<script src="../assets/js/util.js"></script>
			<script src="../assets/js/main.js"></script>


			 <!-- Swiper JS -->
			 <script src="../assets/js/swiper-bundle.min.js"></script>

			 <!-- JavaScript -->
			 <script src="../assets/js/script.js"></script>
			 <!-- Bootstrap core JS-->
			 <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
			 <!-- Core theme JS-->
			 <script src="../assets/js/scripts.js"></script>

	</body>

</html>