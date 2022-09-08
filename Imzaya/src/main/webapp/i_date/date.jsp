<%@page import="java.sql.Date"%>


<%@page import="com.DAO.ProfileDAO"%>
<%@page import="com.VO.ProfileVO"%>
<%@page import="com.VO.FriendVO"%>
<%@page import="com.DAO.FriendDAO"%>
<%@page import="com.DAO.MeetingDAO"%>
<%@page import="com.VO.MemberVO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>


<link rel="stylesheet" href="../assets/css/main.css" />
<noscript>
	<link rel="stylesheet" href="../assets/css/noscript.css" />
</noscript>

<!--글씨폰트 태그-->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Jua&display=swap"
	rel="stylesheet">


<!-- Swiper CSS -->
<link rel="stylesheet" href="../assets/css/swiper-bundle.min.css">

<!-- CSS -->
<link rel="stylesheet" href="../assets/css/style2.css">

<!--message.html  링크-->
<meta name="viewport" content="width=device-width, initial-scale=1">
<script src="https://code.jquery.com/jquery-1.10.2.min.js"></script>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.0/dist/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.0/dist/js/bootstrap.bundle.min.js"></script>

<link
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"
	rel="stylesheet" />






<style>
body {
	font-family: 'Jua', sans-serif;
	/* background-color:#ffd9e9; */
	min-height: 100vh;
	display: flex;
	align-items: center;
}

.button {
	color: #ffffff;
	background-color: #ffc3dc;
	font-family: 'Jua', sans-serif;
	font-size: 0.8em;
	border-radius: 25px;
}

/*message부분 스타일 적용*/
.col-lg-12 {
	margin-top: 80px;
}

* {
	margin: 0;
	padding: 0;
	border: 0;
	font-size: 100%;
	font: inherit;
	vertical-align: baseline;
}

a {
	-moz-transition: color 0.2s ease-in-out, border-bottom-color 0.2s
		ease-in-out;
	-webkit-transition: color 0.2s ease-in-out, border-bottom-color 0.2s
		ease-in-out;
	-ms-transition: color 0.2s ease-in-out, border-bottom-color 0.2s
		ease-in-out;
	transition: color 0.2s ease-in-out, border-bottom-color 0.2s ease-in-out;
	/* border-bottom: dotted 1px; */
	color: inherit;
	text-decoration: none;
}

#header .logo {
	border: 0;
	display: inline-block;
	font-size: 0.8em;
	height: inherit;
	line-height: inherit;
	padding: 0 1.5em;
}

a:hover {
	border-bottom-color: transparent;
	text-decoration-line: none;
}

.menu_bar {
	background-color: #ffd9e9;
}

body {
	background-color: #fff;
}

.card {
	background: #fff;
	transition: .5s;
	border: 0;
	margin-bottom: 30px;
	border-radius: .55rem;
	position: relative;
	width: 100%;
	box-shadow: 0 1px 2px 0 rgb(0 0 0/ 10%);
}

.chat-app .people-list {
	width: 280px;
	position: absolute;
	left: 0;
	top: 0;
	padding: 20px;
	z-index: 7
}

.chat-app .chat {
	margin-left: 280px;
	border-left: 1px solid #eaeaea
}

.people-list {
	-moz-transition: .5s;
	-o-transition: .5s;
	-webkit-transition: .5s;
	transition: .5s
}

.people-list .chat-list li {
	padding: 10px 15px;
	list-style: none;
	border-radius: 3px
}

.people-list .chat-list li:hover {
	background: #efefef;
	cursor: pointer
}

.people-list .chat-list li.active {
	background: #efefef
}

.people-list .chat-list li .name {
	font-size: 15px
}

.people-list .chat-list img {
	width: 45px;
	border-radius: 50%
}

.people-list img {
	float: left;
	border-radius: 50%
}

.people-list .about {
	float: left;
	padding-left: 8px
}

.people-list .status {
	color: #999;
	font-size: 13px
}

.chat .chat-header {
	padding: 15px 20px;
	border-bottom: 2px solid #f4f7f6
}

.chat .chat-header img {
	float: left;
	border-radius: 40px;
	width: 40px
}

.chat .chat-header .chat-about {
	float: left;
	padding-left: 10px
}

.chat .chat-history {
	padding: 20px;
	border-bottom: 2px solid #fff
}

.chat .chat-history ul {
	padding: 0
}

.chat .chat-history ul li {
	list-style: none;
	margin-bottom: 30px
}

.chat .chat-history ul li:last-child {
	margin-bottom: 0px
}

.chat .chat-history .message-data {
	margin-bottom: 15px
}

.chat .chat-history .message-data img {
	border-radius: 40px;
	width: 40px
}

.chat .chat-history .message-data-time {
	color: #434651;
	padding-left: 6px
}

.chat .chat-history .message {
	color: #444;
	padding: 18px 20px;
	line-height: 26px;
	font-size: 16px;
	border-radius: 7px;
	display: inline-block;
	position: relative
}

.chat .chat-history .message:after {
	bottom: 100%;
	left: 7%;
	border: solid transparent;
	content: " ";
	height: 0;
	width: 0;
	position: absolute;
	pointer-events: none;
	border-bottom-color: #fff;
	border-width: 10px;
	margin-left: -10px
}

.chat .chat-history .my-message {
	background: #efefef
}

.chat .chat-history .my-message:after {
	bottom: 100%;
	left: 30px;
	border: solid transparent;
	content: " ";
	height: 0;
	width: 0;
	position: absolute;
	pointer-events: none;
	border-bottom-color: #efefef;
	border-width: 10px;
	margin-left: -10px
}

.chat .chat-history .other-message {
	background: #e8f1f3;
	text-align: right
}

.chat .chat-history .other-message:after {
	border-bottom-color: #e8f1f3;
	left: 93%
}

.chat .chat-message {
	padding: 20px
}

.online, .offline, .me {
	margin-right: 2px;
	font-size: 8px;
	vertical-align: middle
}

.online {
	color: #86c541
}

.offline {
	color: #e47297
}

.me {
	color: #1d8ecd
}

.float-right {
	float: right
}

.clearfix:after {
	visibility: hidden;
	display: block;
	font-size: 0;
	content: " ";
	clear: both;
	height: 0
}

@media only screen and (max-width: 767px) {
	.chat-app .people-list {
		height: 465px;
		width: 100%;
		overflow-x: auto;
		background: #fff;
		left: -400px;
		display: none
	}
	.chat-app .people-list.open {
		left: 0
	}
	.chat-app .chat {
		margin: 0
	}
	.chat-app .chat .chat-header {
		border-radius: 0.55rem 0.55rem 0 0
	}
	.chat-app .chat-history {
		height: 300px;
		overflow-x: auto
	}
}

@media only screen and (min-width: 768px) and (max-width: 992px) {
	.chat-app .chat-list {
		height: 650px;
		overflow-x: auto
	}
	.chat-app .chat-history {
		height: 600px;
		overflow-x: auto
	}
}

@media only screen and (min-device-width: 768px) and (max-device-width:
	1024px) and (orientation: landscape) and
	(-webkit-min-device-pixel-ratio: 1) {
	.chat-app .chat-list {
		height: 480px;
		overflow-x: auto
	}
	.chat-app .chat-history {
		height: calc(100vh - 350px);
		overflow-x: auto
	}
}

.swiper-button-next {
    left: 85%;
    height: 30vh;
}

.swiper-button-prev {
    left: 34%;
    height: 30vh;
}


.clearfix{
    display: flex;
    justify-content: space-between;
}
.msgbtn {


}

.swiper-horizontal>.swiper-pagination-bullets.swiper-pagination-bullets-dynamic, .swiper-pagination-horizontal.swiper-pagination-bullets.swiper-pagination-bullets-dynamic {
    
    width: 80px;
    height: 5vh;
    left: 60%;
}

</style>

</head>
<body class="is-preload">

	<%//랜덤으로 뽑은 9명의 매칭 리스트 
	MemberVO vo = (MemberVO)session.getAttribute("vo");
	
	String gender = vo.getmGender();

	
	MeetingDAO mdao = new MeetingDAO();
	ProfileDAO pdao = new ProfileDAO();
	FriendDAO fdao = new FriendDAO();
	
	ArrayList<MemberVO> list = null;
	
	ProfileVO profilelist = pdao.ProfileSelect(vo.getmId());
	ArrayList<FriendVO> FriendList = fdao.FriendSelect(vo.getmId());
	//로그인 한사람이    남자면 ---> 여자 매칭 |||  여자면--> 남자 매칭
	
	if(gender.equals("M")) {   				
		list = mdao.matchingF();
		
	}else if (gender.equals("F")) {
		
		list = mdao.matchingM();
	
	}


	
	
%>
 
	

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
				
		<p></p>


		<div class="slide-container swiper" style="margin-left: 30vh; padding: 0px; ">


			<div class="date-header" style="text-align: center;">
				<h1 >인연찾기</h1>
			</div>

			<!--친구목록+사진 전체 감싸는부분-->
			<div style="display: flex;">



				<!--친구목록 시작-->


			
				<div id="plist" class="people-list" style="width: 40%;">
					<div class="input-group">
						<div class="input-group-prepend">
							<span class="input-group-text"><i class="fa fa-search"></i></span>
							
						</div>
						<input type="text" class="form-control" placeholder="Search...">
					</div>
					<ul class="list-unstyled chat-list mt-2 mb-0">
						<!-- -#########친구목록 시작 -->
						
					<% for (int i=0; i<FriendList.size(); i++){ %>
						<li class="clearfix"><img
							src="../upload/<%=FriendList.get(i).getfPhoto() %>"
							alt="avatar">
							
							<div class="about">
							
								<div class="name"><%=FriendList.get(i).getfNick() %></div>
	
							</div>
							<div class=msgbtn > 
							<!-- 메세지페이지 이동 버튼 -->
								<a href="../i_message/message.jsp?fnick=<%= FriendList.get(i).getfNick()%>" > <img alt="msgbtn" src="../images/msgbtn1.png" > </a>
							
							</div>
							
						</li>
						<% }%>
						
						
						
						
		
					</ul>
				</div>

				<!--친구목록 끝-->

				<!--슬라이드 부분시작-->
				<div class="slide-content" style="width: 100%;">
					<div
						style="text-align: right; margin-bottom: 20px; margin-right: 10px;">

						<button class="button" style="border-radius: 10px;">

							<a href="../i_date/MatchingCon.do">랜덤찾기</a>

						</button>

						<button class="button" style="border-radius: 10px;">

							<a href="../i_date/date_filter.html">지역 / 관심사 / 나이</a>

						</button>

					</div>
					<div class="card-wrapper swiper-wrapper">
					<%for(int i=0; i<list.size(); i++) {%>
						<div class="card swiper-slide">
							<div class="image-content">
								<span class="overlay"></span>
					
								<div class="card-image">
									<img src="../upload/<%=pdao.ProfileSelect(list.get(i).getmId()).getmPhoto()%>" alt="" class="card-img">
								</div>
							</div>
							<!--#############랜덤 매칭 9명 부분  -->
							<div class="card-content">
								<h2 class="name"><%=list.get(i).getmNick() %></h2>
								<p class="description">
									
									<% String date = (list.get(i).getmBirthdate()).substring(0,10);%>
									<%=date %>
									<br>
									<br>
									<%=pdao.ProfileSelect(list.get(i).getmId()).getmInfo() %>
									<br>
									<br>
									<%=list.get(i).getmLocation() %>
									<br>
									<br>
								</p>
								<button class="button"
									onClick="location.href='../i_date/FriendInsertCon.do?fId=<%=list.get(i).getmId() %>&fNick=<%=list.get(i).getmNick() %>&fPhoto=<%=pdao.ProfileSelect(list.get(i).getmId()).getmPhoto() %>'">친구해요🤍</button>
							
							</div>
						</div>
						<%} %>
							</div>
						</div>
					</div>
				</div>
				<!--슬라이드 부분 끝-->

			</div>
			<!--전체감싸는부분 끝-->


			<div class="swiper-button-next swiper-navBtn"></div>
			<div class="swiper-button-prev swiper-navBtn"></div>
			<div class="swiper-pagination"></div>
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
</body>
</html>