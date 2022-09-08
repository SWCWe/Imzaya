<%@page import="com.DAO.MeetDAO"%>
<%@page import="com.VO.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="utf-8">
<title>Insert title here</title>
	<link rel="stylesheet" href="../assets/css/main.css" />
		<noscript><link rel="stylesheet" href="../assets/css/noscript.css" /></noscript>

		<!--글씨폰트 태그-->
		<link rel="preconnect" href="https://fonts.googleapis.com">
		<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
		<link href="https://fonts.googleapis.com/css2?family=Jua&display=swap" rel="stylesheet">

<style>


body{
	font-family: 'Jua', sans-serif;
	/* background-color:#ffd9e9; */
}

#button1{
    color: #ffffff;
   
   

    font-family: 'Jua', sans-serif;
    font-size: 0.5em;

    border-radius: 10px;
    
    
    display: flex;
    justify-content: center;
    
    align-self: center;
    /* align-items: revert; */
    /* width: 200px; */
    /* background: #ffffff; */
    /* color: black; */
    width: 116px;
    height: 50px;
    /* vertical-align: unset; */
    padding: 0px;
    font-size: 17px;
    border-radius: 14px;
    background: #ffd9e9;
    margin-bottom: 10px;
    
}
	
	input[type="submit"], input[type="reset"], input[type="button"], button{
    -moz-appearance: none;
    -webkit-appearance: none;
    -ms-appearance: none;
    appearance: none;
    -moz-transition: background-color 0.2s ease-in-out, box-shadow 0.2s ease-in-out, color 0.2s ease-in-out;
    -webkit-transition: background-color 0.2s ease-in-out, box-shadow 0.2s ease-in-out, color 0.2s ease-in-out;
    -ms-transition: background-color 0.2s ease-in-out, box-shadow 0.2s ease-in-out, color 0.2s ease-in-out;
    transition: background-color 0.2s ease-in-out, box-shadow 0.2s ease-in-out, color 0.2s ease-in-out;
    background-color: transparent;
    border: 0;
    border-radius: 0;
    box-shadow: none ;
    color: #000000;
    cursor: pointer;
    display: inline-block;
    font-size: 0.5em;
    font-weight: 600;
    height: 3em;
    letter-spacing: 0.25em;
    line-height: 3.5em;
    padding: 0 1.75em;
    text-align: center;
    text-decoration: none;
    text-transform: uppercase;
    white-space: nowrap;
	font-family: 'Jua', sans-serif;
}





#header {
	align-items: center;
}





.containerP {
    display: flex;
    height: 100%;
    flex-direction: column;
    align-items: center;
}

.image-upload {
    flex: 1;
    display: flex;
    align-items: stretch;
    flex-direction: column;
}



label {
    cursor: pointer;
    font-size: 1em;
}

#chooseFile {
    visibility: hidden;
}

.fileContainer {
    display: flex;
    justify-content: center;
    align-items: center;
}

.fileInput {
    display: flex;
    border-bottom: solid 2px black;
    width: 30%;
    height: 30px;
    align-items: center;
}

#fileName {
    margin-left: 5px;
}

.buttonContainer {
    width: 100px;
    display: flex;
    justify-content: center;
    align-items: center;
    margin-left: 10px;
    
    border-radius: 30px;
    padding: 10px;
    font-size: 0.8em;

    cursor: pointer;
    
        border: 1px dotted black;
}

	.image-show {
    z-index: 0;
    display: flex;
    position: absolute;
    width: 35%;
    height: 122%;
    align-items: stretch;
    flex-wrap: nowrap;
    flex-direction: row-reverse;
}
				

.img {
    position: absolute;
}




.wrapper.style2{

    padding: 1em 0;
}






</style>



</head>

	<body class="is-preload">

		<!-- Wrapper -->
			<div id="wrapper" style="font-family: 'Jua', sans-serif;">


				<!-- Header -->

				
				<header id="header" class="alt" style="background-color: #ffd9e9;"  >    <!--메뉴상단 배경색깔-->
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
					

				<%
				MeetDAO mdao = new MeetDAO();
				int mt_seqs = mdao.meetSeqReturn();
				%>
				<div id="footer" class="wrapper style2"  style="font-family: 'Jua', sans-serif; padding-top: 10px; ">
					<div class="container" >
						<section  >
							<header class="major" style="margin: auto;"> 
							<span style="font-size: 50px; font-family: 'Jua', sans-serif; " >모임 만들기</span>	
								<span class="byline"  style="font-size: 30px; font-family: 'Jua', sans-serif; " >임자야 모임의 방장이 되어보세요!
		
								</span>
								
								
								
								<div class="image-show" id="image-show"></div>
								
								
							</header>
							
				<form  action="MeetInsertCon.do" method="post" enctype="multipart/form-data" style="margin: auto; width: 1250px;">
							   
							

						<!-- ###사진찾기 버튼 -->
						<div class="container">		
				
				
				  <div class="image-upload" id="image-upload">

           
            
            
                <div class="button" id="button1">
                
                
                
                    <label for="chooseFile" style="z-index: 2;" >
                        사진 찾기
                    </label>
                    
                </div>
                
                
                <input type="file" id="chooseFile" name="chooseFile" accept="image/*" onchange="loadFile(this)">
          

            <div class="fileContainer">
                <div class="fileInput">
                    <p>FILE NAME: </p>
                    <p id="fileName"></p>
                </div>
                <div class="buttonContainer">
                    <div class="submitButton" id="submitButton" style="z-index: 2;" >사진올리기</div>
                </div>
            </div>
        </div>
        
        
        
        
    </div>
							    <script src="../assets/js/photo.js"></script>
		 	
		 	
		 	
		 	
				</div>
		</div>			
								
		</div>








							   
							   
							    <div class="row half">
									<div class="12u"  >
										<b>모임 카테고리
										    <br><br>
											
										<select name="ctg" id="meet_filter" style="width: 100px; border-radius: 10px; padding-left : 20px; padding-right: 1px; z-index: 2; ">
											<option value="등산">등산</option>
											<option value="여행">여행</option>
											<option value="캠핑">캠핑</option>
											<option value="골프">골프</option>
											<option value="스포츠">스포츠</option>
											<option value="사교/인맥">사교/인맥</option>
											<option value="반려동물">반려동물</option>
											<option value="댄스/음악/악기">댄스/음악/악기</option>
											<option value="책/글/사진">책/글/사진</option>
											<option value="차/오토바이">차/오토바이</option>
											<option value="공예/만들기">공예/만들기</option>
										</select>
										
										 <br><br>
										
										<select name="loc" id="location" style="width: 160px; border-radius: 10px; padding-left : 20px; padding-right: 1px; z-index: 2;  " >
											<option value="서울시">서울특별시</option>
											<option value="경기도">경기도</option>
											<option value="인천시">인천광역시</option>
											<option value="부산시">부산광역시</option>
											<option value="대전시">대전광역시</option>
											<option value="대구시">대구광역시</option>
											<option value="울산시">울산광역시</option>
											<option value="광주시">광주광역시</option>
											<option value="강원도">강원도</option>
											<option value="충청북도">충청북도</option>
											<option value="충청남도">충청남도</option>
											<option value="경상북도">경상북도</option>
											<option value="경상남도">경상남도</option>
											<option value="전라북도">전라북도</option>
											<option value="전라남도">전라남도</option>
											<option value="제주도">제주도</option>
											
										</select>
										
										
									</div>
								</div>
								<div class="row half">
									<div class="12u">
										<br>  <b>정모이름</b>
										  <br><br>
										<input class="text" type="text" name="name" id="name" placeholder="모임명(예시-행복한 반려견 모임🦮👨‍👧‍👧)" />
									</div>                                                                                                                                                   
								</div>
								
								<div class="row halfn">
									<div class="12u">
										<br><b>정모 설명(모임 일시,모임소개)</b>
										<br><br>
										<textarea name="content" id="message" placeholder="-모임에 대해 설명해주세요.&#13;&#10;- 아래처럼 적으면 좋아요.&#13;&#10;&#13;&#10;🦮반려견을 사랑하는 사람들의 모임이에요.&#13;&#10;🦮정기적인 산책 모임도 진행하고, 같이 애견카페도 가요."></textarea>
									</div>
								</div>
								<div class="row half">
									<div class="12u" style="height: 10px; ">
										<b>모임활동지역
											<br>
											<br><br>
										
										
									</div>
								</div>
								<div class="row bottom">
									<div class="12u"  >
										<input type="hidden" name="mts_seq" value="<%=mt_seqs%>">
										<input type="submit" value="모임생성" class="button-alt" id="button1" />
										<label for="chooseFile" style="font-size: 5em; display: block;">
									     
									</div>
									
									<div style="margin-bottom: 40px;"> </div>
								</div>
							</form>
						</section>
					</div>
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
     

			<script src="../assets/js/jquery.min.js"></script>
		<script src="../assets/js/jquery.dropotron.min.js"></script>
		<script src="../assets/js/skel.min.js"></script>
		<script src="../assets/js/skel-layers.min.js"></script>
		<script src="../assets/js/init.js"></script>
		
			<link rel="stylesheet" href="../assets/css/skel.css" />	
			<link rel="stylesheet" href="../assets/css/style.css" />
		<link rel="stylesheet" href="../assets/css/style-wide.css" />
	
		<!--[if lte IE 8]><link rel="stylesheet" href="css/ie/v8.css" /><![endif]-->

	</body>

</html>