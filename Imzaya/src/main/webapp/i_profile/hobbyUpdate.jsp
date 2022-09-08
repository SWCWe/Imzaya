<%@page import="com.VO.HobbyVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.DAO.HobbyDAO"%>
<%@page import="com.VO.ProfileVO"%>
<%@page import="com.DAO.ProfileDAO"%>
<%@page import="com.VO.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>

<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description"
	content="Appley is a Responsive HTML5 CSS3 Theme perfect for your business and presentation of your application.">
<meta name="keywords"
	content="Software, Html5, Responsive Template, Landing Page, Landing Template, Bootstrap Responsive Template, Bottstrap Design, App, App Template">
<meta name="robots" content="index,follow">

<title>Appley - Responsive Landing Multipurpose App Template |
	ThemezHub</title>

<!-- All Plugins Css -->
<link href="../assets/css/pluginsProfile.css" rel="stylesheet">

<!-- Custom style -->
<link href="../assets/css/overwriteProfile.css" rel="stylesheet">
<link href="../assets/css/styleProfile.css" rel="stylesheet">


<!--구글 폰트 적용 링크-->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Jua&display=swap"
	rel="stylesheet">



<link rel="stylesheet" href="../assets/css/main.css" />
<link rel="stylesheet" href="../assets/css/myProfile.css" />


<style>
body {
	font-family: 'Jua', sans-serif;
}

.button {
	color: #ffffff;
	background-color: #ffc3dc;
	font-family: 'Jua', sans-serif;
	font-size: 0.8em;
	border-radius: 25px;
}

.col-md-7 {
	font-family: 'Jua', sans-serif;
	font-size: 35px;
	color: whitesmoke;
}

#my-navigation>li>a {
	font-size: x-large;
	font-family: 'Jua', sans-serif;
}

.banner-btn {
	font-family: 'Jua', sans-serif;
	font-size: 25px;
}

#text_main2 {
	font-size: 35px;
}

#profile_box {
	border: black 2px solid;
	border-style: dotted;
	border-color: black;
	padding-left: 5em;
	padding-right: 5em;
	padding-top: 1em;
	padding-bottom: 3em;
}

.image-box {
	height: 150px;
	width: 150px;
	display: block;
	margin-top: 100px;
	margin-bottom: 30px;
	margin-left: auto;
	margin-right: auto;
	/* margin : auto; */
	/* 이미지 둥그랗게 */
	border-radius: 70%;
	overflow: hidden;
}

.input-box {
	height: 25px;
	display: block;
	margin-top: auto;
	margin-bottom: 5px;
	margin-left: auto;
	margin-right: auto;
	/* margin : auto; */
	text-align: center;
}

.input-button {
	height: 10pt;
	width: 10pt;
	display: block;
	/* margin : auto; */
	margin-top: auto;
	margin-bottom: 1px;
	margin-left: auto;
	margin-right: auto;
}

#profileTable {
	color: black;
}

.hobbyButton {
	-moz-transition: background-color 0.2s ease-in-out, box-shadow 0.2s
		ease-in-out, color 0.2s ease-in-out;
	-webkit-transition: background-color 0.2s ease-in-out, box-shadow 0.2s
		ease-in-out, color 0.2s ease-in-out;
	-ms-transition: background-color 0.2s ease-in-out, box-shadow 0.2s
		ease-in-out, color 0.2s ease-in-out;
	transition: background-color 0.2s ease-in-out, box-shadow 0.2s
		ease-in-out, color 0.2s ease-in-out;
	background-color: transparent;
	border: 0;
	border-radius: 0;
	box-shadow: inset 0 0 0 2px #ffffff;
	color: #ffffff;
	cursor: pointer;
	display: inline-block;
	font-size: 0.8em;
	font-weight: 600;
	height: 3.5em;
	letter-spacing: 0.25em;
	line-height: 3.5em;
	padding: 0 1.75em;
	text-align: center;
	text-decoration: none;
	text-transform: uppercase;
	white-space: nowrap;
}

/* 체크박스 디자인*/
* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
	font-family: 'Poppins'
}

body {
	background: #ffffff
}

.content {
	margin: auto;
	padding: 15px;
	max-width: 800px;
	text-align: center;
}

.dpx {
	display: flex;
	align-items: center;
	justify-content: space-around;
	margin-top: 50px;
}

h1 {
	font-size: 28px;
	line-height: 28px;
	margin-bottom: 15px;
}

label {
	display: block;
	line-height: 60px;
	display: -webkit-box;
	width: 200px;
	color: black;
}

.option-input {
	-webkit-appearance: none;
	-moz-appearance: none;
	-ms-appearance: none;
	-o-appearance: none;
	appearance: none;
	position: relative;
	top: 13.33333px;
	right: 0;
	bottom: 0;
	left: 0;
	height: 40px;
	width: 40px;
	transition: all 0.15s ease-out 0s;
	background: #cbd1d8;
	border: none;
	color: #fff;
	cursor: pointer;
	display: inline-block;
	margin-right: 0.5rem;
	outline: none;
	position: relative;
	z-index: 1000;
}

.option-input:hover {
	background: #9faab7;
}

.option-input:checked {
	background: #ffd9e9;
}

.option-input:checked::before {
	width: 40px;
	height: 40px;
	display: flex;
	content: '\f00c';
	font-size: 25px;
	font-weight: bold;
	position: absolute;
	align-items: center;
	justify-content: center;
	font-family: 'Font Awesome 5 Free';
}

.option-input:checked::after {
	-webkit-animation: click-wave 0.65s;
	-moz-animation: click-wave 0.65s;
	animation: click-wave 0.65s;
	background: #40e0d0;
	content: '';
	display: block;
	position: relative;
	z-index: 100;
}

.option-input.radio {
	border-radius: 50%;
}

.option-input.radio::after {
	border-radius: 50%;
}

@
keyframes click-wave { 0% {
	height: 40px;
	width: 40px;
	opacity: 0.35;
	position: relative;
}

100
%
{
height
:
200px;
width
:
200px;
margin-left
:
-80px;
margin-top
:
-80px;
opacity
:
0;
}
}
input[type=checkbox]:focus {
	outline: none;
	margin-right: 5px;
}
</style>


</head>


<body class="is-preload">


	<%
		MemberVO vo = (MemberVO)session.getAttribute("vo");
		ProfileDAO pdao = new ProfileDAO();
		ProfileVO pvo = pdao.ProfileSelect(vo.getmId());
		session.setAttribute("pvo", pvo);

	%>

	<!-- Start Navigation -->
	<nav
		class="navbar navbar-default navbar-fixed white bootsnav on no-full">

		<div class="container">
			<!-- End Atribute Navigation -->

			<!-- Start Header Navigation -->
			<div id="wrapper">


				
			<!-- Header -->

				
				<header id="header" class="alt" style="background-color: #ffd9e9;">    <!--메뉴상단 배경색깔-->
					<a href="./index.jsp" class="logo"  style=" font-size: 38px; color: white; "> 임자야</a>
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

			</div>
		</div>
	</nav>
	<!-- End Navigation -->




	<!-- Header -->
	<header id="header1">
		<div class="inner" style="text-align: center;">
			<br>
			<% if(pvo == null) { %>
			<img src="../images/고양이 사진.jpg" alt="" class="image avatar"
				style="height: 200px; width: 200px;">

			<% } else { %>
			<img src="../upload/<%= pvo.getmPhoto() %>" alt=""
				class="image avatar" style="height: 200px; width: 200px;" />
			<% System.out.println(pvo.getmPhoto()); %>
			<% } %>

			<form style="text-align: right;">
				<!-- <a href="#" class="image avatar" style="height: 200px; width: 200px;"><img src="./img/고양이 사진.jpg" alt="" style="height: 200px; width: 200px;"></a> -->
				<button type="button" style="color: black"
					onClick="location.href='photoChange.jsp'">사진 변경</button>
			</form>
			<form>
				<table>
					<tr style="background-color: rgb(255, 229, 233); color: black;">
						<td colspan="2">
							<!-- 상태메시지 출력 --> <% if(pvo == null) { %> <% } else { %> <%= pvo.getmInfo() %>
							<% } %>


						</td>

						<td><button type="button" id="profileTable"
								onClick="location.href='MessageChange.html'">변경</button></td>
					</tr>
					<tr style="background-color: rgb(255, 229, 233); color: black;">
						<td>닉네임</td>

						<td>
							<!-- 닉네임 출력 부분 --> <% if(vo == null) { %> <% } else { %> <%= vo.getmNick() %>
							<% } %>

						</td>
						<td><button type="button" id="profileTable"
								onClick="location.href='nickChange.html'">변경</button></td>
					</tr>
					<tr style="background-color: rgb(255, 229, 233); color: black;">
						<td>사는 곳</td>
						<td>
							<!-- 지역 출력 부분 --> <% if(vo == null) { %> <% } else { %> <%=vo.getmLocation() %>
							<% } %>
						</td>
						<td><button type="button" id="profileTable"
								onClick="location.href='./cityChange.html'">변경</button></td>
					</tr>

					<tr style="background-color: rgb(255, 229, 233); color: black;">
						<td>성별</td>
						<td>
							<% if(vo == null) { %> <% } else { %> <%=vo.getmGender() %> <% } %>
						</td>
						<td></td>
					</tr>

					<tr style="background-color: rgb(255, 229, 233); color: black;">
						<td>생년월일</td>
						<td>
							<% if(vo == null) { %> <% } else { %> <% String mdate =  (vo.getmBirthdate()).substring(0,10); %><%=mdate %> <% } %>
						</td>
						
			
						
						
						<td></td>
					</tr>

				</table>
			</form>

		</div>
	</header>

	<!-- Main -->
	<br>



	<div id="main" style="background-color: white">

		<!-- One -->
		<section id="one">
			<header class="major" style="text-align: center;">
				<h2 style="color: black;">변경할 취미를 선택해 주세요</h2>
			</header>

			<!-- <p>축구, 농구, 야구, 등산</p> -->



			<form action="HobbyUpdateCon.do" method="post">
				<!--###################취미통합구역-->

				<!-- 체크박스 개수제한(3) 스크립트 -->
				<script src="../assets/js/checkbox_limit3.js"></script>
				<div style="text-align: left;">
					<!--취미12-->
					<div style="display: flex;">
						<!--취미1-->
						<div class='px'>
							<%
						HobbyDAO hdao = new HobbyDAO();
	            		ArrayList<HobbyVO> hobbyList = hdao.HobbySelect(vo.getmId());
						if(hobbyList.get(0).getHobbyName().equals("등산")||hobbyList.get(1).getHobbyName().equals("등산")||hobbyList.get(2).getHobbyName().equals("등산"))
						{%>

							<label> <input type="checkbox"
								class="option-input checkbox" name="chk"
								onclick="count_check(this);" value="등산" checked /> 등산
							</label>
							<%} else{%>
							<label> <input type="checkbox"
								class="option-input checkbox" name="chk"
								onclick="count_check(this);" value="등산" /> 등산
							</label>
							<%} %>
							<%
						if(hobbyList.get(0).getHobbyName().equals("여행")||hobbyList.get(1).getHobbyName().equals("여행")||hobbyList.get(2).getHobbyName().equals("여행"))
						{%>

							<label> <input type="checkbox"
								class="option-input checkbox" name="chk"
								onclick="count_check(this);" value="여행" checked /> 여행
							</label>
							<%} else{%>
							<label> <input type="checkbox"
								class="option-input checkbox" name="chk"
								onclick="count_check(this);" value="여행" /> 여행
							</label>
							<%} %>
							<%
						if(hobbyList.get(0).getHobbyName().equals("캠핑")||hobbyList.get(1).getHobbyName().equals("캠핑")||hobbyList.get(2).getHobbyName().equals("캠핑"))
						{%>

							<label> <input type="checkbox"
								class="option-input checkbox" name="chk"
								onclick="count_check(this);" value="캠핑" checked /> 캠핑
							</label>
							<%} else{%>
							<label> <input type="checkbox"
								class="option-input checkbox" name="chk"
								onclick="count_check(this);" value="캠핑" /> 캠핑
							</label>
							<%} %>
							<%
						if(hobbyList.get(0).getHobbyName().equals("골프")||hobbyList.get(1).getHobbyName().equals("골프")||hobbyList.get(2).getHobbyName().equals("골프"))
						{%>

							<label> <input type="checkbox"
								class="option-input checkbox" name="chk"
								onclick="count_check(this);" value="골프" checked /> 골프
							</label>
							<%} else{%>
							<label> <input type="checkbox"
								class="option-input checkbox" name="chk"
								onclick="count_check(this);" value="골프" /> 골프
							</label>
							<%} %>
							<%
						if(hobbyList.get(0).getHobbyName().equals("스포츠")||hobbyList.get(1).getHobbyName().equals("스포츠")||hobbyList.get(2).getHobbyName().equals("스포츠"))
						{%>

							<label> <input type="checkbox"
								class="option-input checkbox" name="chk"
								onclick="count_check(this);" value="스포츠" checked /> 스포츠
							</label>
							<%} else{%>
							<label> <input type="checkbox"
								class="option-input checkbox" name="chk"
								onclick="count_check(this);" value="스포츠" /> 스포츠
							</label>
							<%} %>
							<%
						if(hobbyList.get(0).getHobbyName().equals("낚시")||hobbyList.get(1).getHobbyName().equals("낚시")||hobbyList.get(2).getHobbyName().equals("낚시"))
						{%>

							<label> <input type="checkbox"
								class="option-input checkbox" name="chk"
								onclick="count_check(this);" value="낚시" checked /> 낚시
							</label>
							<%} else{%>
							<label> <input type="checkbox"
								class="option-input checkbox" name="chk"
								onclick="count_check(this);" value="낚시" /> 낚시
							</label>
							<%} %>
						</div>
						<!--취미2-->
						<div class='px'>

							<%
						if(hobbyList.get(0).getHobbyName().equals("사교/인맥")||hobbyList.get(1).getHobbyName().equals("사교/인맥")||hobbyList.get(2).getHobbyName().equals("사교/인맥"))
						{%>

							<label> <input type="checkbox"
								class="option-input checkbox" name="chk"
								onclick="count_check(this);" value="사교/인맥" checked /> 사교/인맥
							</label>
							<%} else{%>
							<label> <input type="checkbox"
								class="option-input checkbox" name="chk"
								onclick="count_check(this);" value="사교/인맥" /> 사교/인맥
							</label>
							<%} %>
							<%
						if(hobbyList.get(0).getHobbyName().equals("반려동물")||hobbyList.get(1).getHobbyName().equals("반려동물")||hobbyList.get(2).getHobbyName().equals("반려동물"))
						{%>

							<label> <input type="checkbox"
								class="option-input checkbox" name="chk"
								onclick="count_check(this);" value="반려동물" checked /> 반려동물
							</label>
							<%} else{%>
							<label> <input type="checkbox"
								class="option-input checkbox" name="chk"
								onclick="count_check(this);" value="반려동물" /> 반려동물
							</label>
							<%} %>

							<%
						if(hobbyList.get(0).getHobbyName().equals("댄스/음악/악기")||hobbyList.get(1).getHobbyName().equals("댄스/음악/악기")||hobbyList.get(2).getHobbyName().equals("댄스/음악/악기"))
						{%>

							<label> <input type="checkbox"
								class="option-input checkbox" name="chk"
								onclick="count_check(this);" value="댄스/음악/악기" checked />
								댄스/음악/악기
							</label>
							<%} else{%>
							<label> <input type="checkbox"
								class="option-input checkbox" name="chk"
								onclick="count_check(this);" value="댄스/음악/악기" /> 댄스/음악/악기
							</label>
							<%} %>
							<%
						if(hobbyList.get(0).getHobbyName().equals("책/글/사진")||hobbyList.get(1).getHobbyName().equals("책/글/사진")||hobbyList.get(2).getHobbyName().equals("책/글/사진"))
						{%>

							<label> <input type="checkbox"
								class="option-input checkbox" name="chk"
								onclick="count_check(this);" value="책/글/사진" checked /> 책/글/사진
							</label>
							<%} else{%>
							<label> <input type="checkbox"
								class="option-input checkbox" name="chk"
								onclick="count_check(this);" value="책/글/사진" /> 책/글/사진
							</label>
							<%} %>
							<%
						if(hobbyList.get(0).getHobbyName().equals("차/오토바이")||hobbyList.get(1).getHobbyName().equals("차/오토바이")||hobbyList.get(2).getHobbyName().equals("차/오토바이"))
						{%>

							<label> <input type="checkbox"
								class="option-input checkbox" name="chk"
								onclick="count_check(this);" value="차/오토바이" checked /> 차/오토바이
							</label>
							<%} else{%>
							<label> <input type="checkbox"
								class="option-input checkbox" name="chk"
								onclick="count_check(this);" value="차/오토바이" /> 차/오토바이
							</label>
							<%} %>
							<%
						if(hobbyList.get(0).getHobbyName().equals("공예/만들기")||hobbyList.get(1).getHobbyName().equals("공예/만들기")||hobbyList.get(2).getHobbyName().equals("공예/만들기"))
						{%>

							<label> <input type="checkbox"
								class="option-input checkbox" name="chk"
								onclick="count_check(this);" value="공예/만들기" checked /> 공예/만들기
							</label>
							<%} else{%>
							<label> <input type="checkbox"
								class="option-input checkbox" name="chk"
								onclick="count_check(this);" value="공예/만들기" /> 공예/만들기
							</label>
							<%} %>
						</div>
					</div>
					<!--취미12-->
				</div>
				<!--취미통합구역-->
				<ul class="actions">
					<li><button type="submit" id="profileTable"
							style="background-color: rgb(255, 229, 233); box-shadow: inset 0 0 0 2px white; border-radius: 10px;  ">변경
							완료</button></li>
				</ul>
			</form>
		</section>

		<br> <br> <br> <br>
	</div>
	<!--메뉴 bar인 듯-->

	<script src="../assets/js/jquery.min.js"></script>
	<script src="../assets/js/jquery.scrolly.min.js"></script>
	<script src="../assets/js/jquery.scrollex.min.js"></script>
	<script src="../assets/js/browser.min.js"></script>
	<script src="../assets/js/breakpoints.min.js"></script>
	<script src="../assets/js/util.js"></script>
	<script src="../assets/js/main.js"></script>
</body>
</html>