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
<link href="https://fonts.googleapis.com/css2?family=Jua&display=swap"
	rel="stylesheet">



<style>
.button {
	color: #ffffff;
	background-color: #ffc3dc;
	font-family: 'Jua', sans-serif;
	font-size: 0.8em;
	border-radius: 25px;
}

body {
	font-family: 'Jua', sans-serif;
	/* background-color:#ffd9e9; */
}

.major>h3, p {
	color: black;
	font-family: 'Jua', sans-serif;
}

/*로그인 스타일 적용*/

/* body {
    background-color: #F3F4F9;
    margin: 0;
    padding: 0;
    font-family: Verdana, Geneva, Tahoma, sans-serif;
	} */
#form-container {
	height: 100%;
	display: flex;
	justify-content: center;
	align-items: center;
	margin-bottom: 10%;
}

#form-inner-container {
	background-color: white;
	max-width: 70%;
	border-radius: 8px;
	box-shadow: 0 0 20px gainsboro;
	margin-top: 3%;
	margin-bottom: 2%;
}

#sign-up-container, #sign-in-container {
	padding: 60px 80px;
	width: 320px;
	display: inline-block;
}

form input {
	display: block;
	margin-bottom: 30px;
	border: 1px solid #E5E9F5;
	background-color: #F6F7FA;
	padding: 20px;
	margin-top: 20px;
	border-radius: 10px;
	width: 100%;
}

#form-controls {
	margin-bottom: 20px;
	display: flex;
	justify-content: center;
	flex-direction: column;
}

h2, h3 {
	color: black;
	font-weight: 500;
	text-align: center;
	font-family: 'Jua', sans-serif;
}

label {
	color: #7369AB;
	font-size: 25px;
}

::placeholder {
	color: #C0C7DB;
	font-size: larger;
	letter-spacing: 1.2px;
}

#form-controls button {
	border: none;
	font-size: 120%;
}

#form-controls button:hover {
	cursor: pointer;
}

button[type="submit"] {
	padding: 1px 75px;
	background-color: #ffadcf;
	border-radius: 10px;
	color: white;
	font-family: 'Jua', sans-serif;
}

button[type="submit"]:hover {
	background-color: #f47685;
}

button[type="button"] {
	padding: 1px 75px;
	background-color: whitesmoke;
	border-radius: 10px;
	color: #ff85b8;
	font-family: 'Jua', sans-serif;
}

label[for="terms"] {
	display: inline-block;
	width: 80%;
	margin-left: 10px;
}

/* .hide {
		display: none!important;
	} */
#animation-container {
	display: inline-block;
}

/* responsive display */
@media ( max-width :1438px) {
	lottie-player {
		width: 300px !important;
	}
}

@media ( max-width :1124px) {
	#animation-container {
		display: none;
	}
	#form-inner-container {
		display: flex;
		justify-content: center;
	}
}

@media ( max-width : 684px) {
	#form-controls {
		text-align: center;
		margin: 0;
		padding: 0;
	}
	button {
		width: 100%;
	}
	form input {
		width: 100%;
	}
	#toggleSignIn, #toggleSignUp {
		padding: 16px 75px;
	}
	#terms {
		width: 20px;
		height: 20px;
	}
	label[for="terms"] {
		display: inline-block;
		font-size: smaller;
	}
}
</style>

</head>
<body>
	<!-- class="is-preload" -->

	<!-- Wrapper -->
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

		<!-- Banner -->

		<div id="form-container">
			<div id="form-inner-container">



				<!-- 회원가입 화면 -->

				<div id="sign-in-container" class="hide" style="width: 600px;">


					<form action="UpdateCon.do" method="post">

						<h1 style="text-align: center; margin-bottom: 50px;">내 정보 변경</h1>
						<p>* 변경하고자 하는 정보만 쓰세요.</p>

						<label for="username">변경할 이름</label> <input type="text"
							name="username" id="username" placeholder="이름 재입력"> <label
							for="username">변경할 전화번호</label> <input type="number" name="tel"
							id="tel" placeholder="- 없이 전화번호 입력"> <label
							for="password">변경할 비밀번호</label> <input type="password"
							name="password" id="password"
							placeholder="&#9679;&#9679;&#9679;&#9679;&#9679;&#9679;">

						<label for="password">변경할 비밀번호 재입력</label> <input type="password"
							name="password1" id="password1"
							placeholder="&#9679;&#9679;&#9679;&#9679;&#9679;&#9679;">


						<p></p>

						<div id="form-controls">
							<button type="submit">변경</button>
							<!-- <p></p>
							<button type="button" id="toggleSignUp">로그인</button> -->
						</div>


					</form>
				</div>

				<!-- Lottie animation -->
				<!-- <div id="animation-container">
						<lottie-player src="https://assets3.lottiefiles.com/packages/lf20_aesgckiv.json"  background="transparent"  speed="1"  style="width: 520px; height: 520px;" loop autoplay></lottie-player>
					  </div> -->
			</div>
		</div>



		<script
			src="https://unpkg.com/@lottiefiles/lottie-player@latest/dist/lottie-player.js"></script>
		<script type="text/JavaScript" src="../assets/js/login_join.js"></script>



	</div>

	<!-- Scripts -->
	<script src="../assets/js/jquery.min.js"></script>
	<script src="../assets/js/jquery.scrolly.min.js"></script>
	<script src="../assets/js/jquery.scrollex.min.js"></script>
	<script src="../assets/js/browser.min.js"></script>
	<script src="../assets/js/breakpoints.min.js"></script>
	<script src="../assets/js/util.js"></script>
	<script src="../assets/js/main.js"></script>

</body>
</html>