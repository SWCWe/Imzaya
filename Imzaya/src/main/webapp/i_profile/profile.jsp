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
	font-family: 'Font Awesome 5 Free';-
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


.profileTable{
		color: black;

		font-size: 15px;
}


tr{
background-color: rgb(255 235 235);

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
				
				
			</div>
		</div>
	</nav>
	<!-- End Navigation -->




	<!-- Header -->
	<header id="header1" style="padding-bottom: 0px;" >
	
		<h2 style="color: black; text-align:left; margin-top: 45px; font-size: 2em; margin-top: 0px; ">나의 프로필</h2>
			
		<div class="inner" style="text-align: center;">
		
		

			<% if(pvo == null) { %>
			<img src="../images/고양이 사진.jpg" alt="" class="image avatar"
				style="height: 200px; width: 200px;">

			<% } else { %>
			<img src="../upload/<%= pvo.getmPhoto() %>" alt=""
				class="image avatar" style="height: 200px; width: 200px;" />
			<% System.out.println(pvo.getmPhoto()); %>
			<% } %>

			<form style="text-align: right; display: flex; " >
				<!-- <a href="#" class="image avatar" style="height: 200px; width: 200px;"><img src="./img/고양이 사진.jpg" alt="" style="height: 200px; width: 200px;"></a> -->
				
				
					
					
						<button type="button" class="profileTable"
						style="background-color: rgb(255, 229, 233); font-size:15px;"
						onClick="location.href='myInfo.jsp'">내 정보 변경</button>
				
					
						<button type="button" class="profileTable"
						style="background-color: rgb(255, 229, 233); font-size:15px;"
						onClick="location.href='hobbyUpdate.jsp'">취미 변경</button>
						
						<button type="button" id="profileTable"
						style="background-color: rgb(255, 229, 233); font-size:15px;"
						onClick="location.href='photoChange.jsp'">사진 수정</button>
				
				
				
			</form>
			<form>
						
				
				<table style="height: 240px;" >
					<tr>
						<td colspan="2"  style="
								    display: flex;
								    background-color: rgb(255, 229, 233);
								    color: black;
								    font-size: 25px;
								    align-items: center;
								    justify-content: space-between;
								    height: 65px;
								">
								
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;상태메세지
						<button type="button" id="profileTable"
						style="background-color: rgb(255, 229, 233); font-size:15px;"
						onClick="location.href='MessageChange.jsp'">수정</button>
						
						</td>
						
						
					</tr  >
				
				
					<tr    style="background-color: rgb(255, 229, 233); color: black; font-size:25px; height: 172px; ">
					
						<td colspan="2" >
				
							<% if(pvo == null) { %> 
							<% } else { %> 
							<%= pvo.getmInfo() %>
							<% } %>
							
						</td>
						
						
						
					</tr>
					
				
					
					
				</table>
				
			
				 
				 
				 
				 
					
					

				
				
				
				
			</form>

		</div>
	</header>

	<!-- Main -->
	<br>



	<div id="main" style="background-color: white;">

		<!-- One -->
		<section id="one" style="margin-top: 0px;">
			<header class="major" style="text-align: center;">
				<ul class="actions" style="margin-top: 25px; display: flex;">
				<!-- <li><a href="hobbyChange.html" id="profileTable" class="hobbyButton">취미 변경</a></li> -->
				<li><h2 style="width: 300px; text-align:left; margin-right: 250px;">나의 정보</h2></li>
				<li><h2 style="width: 300px; text-align:left;">나의 취미</h2></li>
			</ul>
			</header>

			<!-- <p>축구, 농구, 야구, 등산</p> -->




			<!--###################취미통합구역-->

			<!-- 체크박스 개수제한(3) 스크립트 -->
			<script src="../assets/js/checkbox_limit3.js"></script>
			<div style="text-align: left;">
				<!--취미12-->
				<div style="display: flex;">
					
					
					
					
					<form style="padding-right: 100px">
						<table style="  height: 460px;
									    width: 400px;
									    text-align: center;
									    display: -webkit-inline-box;
									    align-items: center;
									    font-size: 22px;">
					
					<tr style="background-color: rgb(255, 229, 233); color: black;">
						<td style=" width: 124px;
    								height: 70px;">
    								닉네임
    					</td>

						<td>
							<!-- 닉네임 출력 부분 --> 
							<% if(vo == null) { %> 
							<% } else { %> 
							<%= vo.getmNick() %>
							<% } %>

						</td>
						<td><button type="button" class="profileTable"
								onClick="location.href='nickChange.jsp'">변경</button></td>
					</tr>
					<tr style="background-color: rgb(255, 229, 233); color: black;">
						<td style="width: 124px;
    								height: 70px;" >
    								사는 지역
    					</td>
    
						<td>
							<!-- 지역 출력 부분 --> 
							<% if(vo == null) { %> 
							<% } else { %> 
							<%=vo.getmLocation() %>
							<% } %>
						</td>
						<td><button type="button" class="profileTable"
								onClick="location.href='cityChange.jsp'">변경</button></td>
					</tr>

					<tr style="background-color: rgb(255, 229, 233); color: black;">
						<td style="width: 124px;
    								height: 70px;" >성별</td>
						<td colspan="2">
							<% if(vo == null) { %> <% } else { %> <%=vo.getmGender() %> <% } %>
						</td>
						
					</tr>

					<tr style="background-color: rgb(255, 229, 233); color: black;">
						<td style="width: 124px;
    								height: 70px;" >생년월일</td>
						<td colspan="2">
							<% if(vo == null) { %> 
							<% } else {
								String Birthdate=vo.getmBirthdate().substring(0, 10);%>
								<%=Birthdate %> 
							<% } %>
						</td>
						
					</tr>

				</table>
					</form>
				
				
				
				
				
					<!--취미1-->
					<div class='px'>
						<%
						HobbyDAO hdao = new HobbyDAO();
	            		ArrayList<HobbyVO> hobbyList = hdao.HobbySelect(vo.getmId());
	            		session.setAttribute("hobbyList", hobbyList);
	            		
						if(hobbyList.get(0).getHobbyName().equals("등산")||hobbyList.get(1).getHobbyName().equals("등산")||hobbyList.get(2).getHobbyName().equals("등산"))
						{%>

						<label> <input type="checkbox"
							class="option-input checkbox" name="chk"
							onclick="count_check(this);" value="" disabled checked /> 등산
						</label>
						<%} else{%>
						<label> <input type="checkbox"
							class="option-input checkbox" name="chk"
							onclick="count_check(this);" value="" disabled /> 등산
						</label>
						<%} %>
						<%
						if(hobbyList.get(0).getHobbyName().equals("여행")||hobbyList.get(1).getHobbyName().equals("여행")||hobbyList.get(2).getHobbyName().equals("여행"))
						{%>

						<label> <input type="checkbox"
							class="option-input checkbox" name="chk"
							onclick="count_check(this);" value="" disabled checked /> 여행
						</label>
						<%} else{%>
						<label> <input type="checkbox"
							class="option-input checkbox" name="chk"
							onclick="count_check(this);" value="" disabled /> 여행
						</label>
						<%} %>
						<%
						if(hobbyList.get(0).getHobbyName().equals("캠핑")||hobbyList.get(1).getHobbyName().equals("캠핑")||hobbyList.get(2).getHobbyName().equals("캠핑"))
						{%>

						<label> <input type="checkbox"
							class="option-input checkbox" name="chk"
							onclick="count_check(this);" value="" disabled checked /> 캠핑
						</label>
						<%} else{%>
						<label> <input type="checkbox"
							class="option-input checkbox" name="chk"
							onclick="count_check(this);" value="" disabled /> 캠핑
						</label>
						<%} %>
						<%
						if(hobbyList.get(0).getHobbyName().equals("골프")||hobbyList.get(1).getHobbyName().equals("골프")||hobbyList.get(2).getHobbyName().equals("골프"))
						{%>

						<label> <input type="checkbox"
							class="option-input checkbox" name="chk"
							onclick="count_check(this);" value="" disabled checked /> 골프
						</label>
						<%} else{%>
						<label> <input type="checkbox"
							class="option-input checkbox" name="chk"
							onclick="count_check(this);" value="" disabled /> 골프
						</label>
						<%} %>
						<%
						if(hobbyList.get(0).getHobbyName().equals("스포츠")||hobbyList.get(1).getHobbyName().equals("스포츠")||hobbyList.get(2).getHobbyName().equals("스포츠"))
						{%>

						<label> <input type="checkbox"
							class="option-input checkbox" name="chk"
							onclick="count_check(this);" value="" disabled checked /> 스포츠
						</label>
						<%} else{%>
						<label> <input type="checkbox"
							class="option-input checkbox" name="chk"
							onclick="count_check(this);" value="" disabled /> 스포츠
						</label>
						<%} %>
						<%
						if(hobbyList.get(0).getHobbyName().equals("낚시")||hobbyList.get(1).getHobbyName().equals("낚시")||hobbyList.get(2).getHobbyName().equals("낚시"))
						{%>

						<label> <input type="checkbox"
							class="option-input checkbox" name="chk"
							onclick="count_check(this);" value="" disabled checked /> 낚시
						</label>
						<%} else{%>
						<label> <input type="checkbox"
							class="option-input checkbox" name="chk"
							onclick="count_check(this);" value="" disabled /> 낚시
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
							onclick="count_check(this);" value="" disabled checked /> 사교/인맥
						</label>
						<%} else{%>
						<label> <input type="checkbox"
							class="option-input checkbox" name="chk"
							onclick="count_check(this);" value="" disabled /> 사교/인맥
						</label>
						<%} %>
						<%
						if(hobbyList.get(0).getHobbyName().equals("반려동물")||hobbyList.get(1).getHobbyName().equals("반려동물")||hobbyList.get(2).getHobbyName().equals("반려동물"))
						{%>

						<label> <input type="checkbox"
							class="option-input checkbox" name="chk"
							onclick="count_check(this);" value="" disabled checked /> 반려동물
						</label>
						<%} else{%>
						<label> <input type="checkbox"
							class="option-input checkbox" name="chk"
							onclick="count_check(this);" value="" disabled /> 반려동물
						</label>
						<%} %>

						<%
						if(hobbyList.get(0).getHobbyName().equals("댄스/음악/악기")||hobbyList.get(1).getHobbyName().equals("댄스/음악/악기")||hobbyList.get(2).getHobbyName().equals("댄스/음악/악기"))
						{%>

						<label> <input type="checkbox"
							class="option-input checkbox" name="chk"
							onclick="count_check(this);" value="" disabled checked />
							댄스/음악/악기
						</label>
						<%} else{%>
						<label> <input type="checkbox"
							class="option-input checkbox" name="chk"
							onclick="count_check(this);" value="" disabled /> 댄스/음악/악기
						</label>
						<%} %>
						<%
						if(hobbyList.get(0).getHobbyName().equals("책/글/사진")||hobbyList.get(1).getHobbyName().equals("책/글/사진")||hobbyList.get(2).getHobbyName().equals("책/글/사진"))
						{%>

						<label> <input type="checkbox"
							class="option-input checkbox" name="chk"
							onclick="count_check(this);" value="" disabled checked /> 책/글/사진
						</label>
						<%} else{%>
						<label> <input type="checkbox"
							class="option-input checkbox" name="chk"
							onclick="count_check(this);" value="" disabled /> 책/글/사진
						</label>
						<%} %>
						<%
						if(hobbyList.get(0).getHobbyName().equals("차/오토바이")||hobbyList.get(1).getHobbyName().equals("차/오토바이")||hobbyList.get(2).getHobbyName().equals("차/오토바이"))
						{%>

						<label> <input type="checkbox"
							class="option-input checkbox" name="chk"
							onclick="count_check(this);" value="" disabled checked /> 차/오토바이
						</label>
						<%} else{%>
						<label> <input type="checkbox"
							class="option-input checkbox" name="chk"
							onclick="count_check(this);" value="" disabled /> 차/오토바이
						</label>
						<%} %>
						<%
						if(hobbyList.get(0).getHobbyName().equals("공예/만들기")||hobbyList.get(1).getHobbyName().equals("공예/만들기")||hobbyList.get(2).getHobbyName().equals("공예/만들기"))
						{%>

						<label> <input type="checkbox"
							class="option-input checkbox" name="chk"
							onclick="count_check(this);" value="" disabled checked /> 공예/만들기
						</label>
						<%} else{%>
						<label> <input type="checkbox"
							class="option-input checkbox" name="chk"
							onclick="count_check(this);" value="" disabled /> 공예/만들기
						</label>
						<%} %>
					</div>
				</div>
				<!--취미12-->
			</div>
			<!--취미통합구역-->
		
				
				
			
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