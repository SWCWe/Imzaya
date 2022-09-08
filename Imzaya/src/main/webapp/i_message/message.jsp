<%@page import="com.VO.MessageVO"%>
<%@page import="com.DAO.MessageDAO"%>
<%@page import="com.DAO.ProfileDAO"%>
<%@page import="com.VO.MemberVO"%>
<%@page import="com.DAO.FriendDAO"%>
<%@page import="com.VO.FriendVO"%>
<%@page import="java.util.ArrayList"%>
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

		<!--message.html  링크-->
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<script src="https://code.jquery.com/jquery-1.10.2.min.js"></script>
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.0/dist/css/bootstrap.min.css" rel="stylesheet">
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.0/dist/js/bootstrap.bundle.min.js"></script>

		<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" />

<style>

body{
	font-family: 'Jua', sans-serif;
	background-color:#ffd9e9;
}

.button{
    color: #ffffff;
   
    background-color: #ffc3dc;

    font-family: 'Jua', sans-serif;
    font-size: 0.8em;

    border-radius: 25px;
}




	/*message부분 스타일 적용*/


	.col-lg-12{
		margin-top: 10px;
		


	}

	*{
    margin: 0;
	padding: 0;
	border: 0;
	font-size: 100%;
	font: inherit;
	vertical-align: baseline;
}
a {
		-moz-transition: color 0.2s ease-in-out, border-bottom-color 0.2s ease-in-out;
		-webkit-transition: color 0.2s ease-in-out, border-bottom-color 0.2s ease-in-out;
		-ms-transition: color 0.2s ease-in-out, border-bottom-color 0.2s ease-in-out;
		transition: color 0.2s ease-in-out, border-bottom-color 0.2s ease-in-out;
		border-bottom: dotted 1px;
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
.menu_bar{
    background-color: #ffd9e9;
}
body{
    background-color:#fff;
}
.card {
    background: #fff;
    transition: .5s;
    border: 0;
    margin-bottom: 30px;
    border-radius: .55rem;
    position: relative;
    width: 100%;
    box-shadow: 0 1px 2px 0 rgb(0 0 0 / 10%);
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

.online,
.offline,
.me {
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

@media only screen and (min-device-width: 768px) and (max-device-width: 1024px) and (orientation: landscape) and (-webkit-min-device-pixel-ratio: 1) {
    .chat-app .chat-list {
        height: 480px;
        overflow-x: auto
    }
    .chat-app .chat-history {
        height: calc(100vh - 350px);
        overflow-x: auto
    }
}



input[type="submit"]:hover{

	box-shadow: inset 0 0 0 2px #ffd9e9;
    color: #ffd9e9;


}


</style>

</head>
	<body class="is-preload">
						<%MemberVO vo = (MemberVO)session.getAttribute("vo");
						FriendDAO fdao = new FriendDAO();
						ProfileDAO pdao = new ProfileDAO();
						MessageDAO mdao = new MessageDAO();
						ArrayList<FriendVO> FriendList = fdao.FriendSelect(vo.getmId());
						
						String recFriend = request.getParameter("recFriend");
						String fnick = request.getParameter("fnick");
								
						String FriendSendId ="";
						String FriendNick = "";
					
						
						if(recFriend != null && fnick!=null){
							FriendSendId=recFriend;
							FriendNick=fnick;
						}else {
							FriendSendId = FriendList.get(0).getfId();
							FriendNick = FriendList.get(0).getfNick();
						}
								
						ArrayList<MessageVO> MeSendFriend = mdao.SendReciviceSpecific(vo.getmId(),FriendSendId);
						
						ArrayList<MessageVO> FriendSendMe = mdao.FriendSendMe(FriendSendId,vo.getmId());
						
					
						System.out.print("내가친구한테 0 : "+MeSendFriend.get(0).getMsgContent());
						System.out.print("친구가 나한테 0 : "+FriendSendMe.get(0).getMsgContent());
						

						%>
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

					

			
	<div class="container" >
	<div class="row clearfix">
		<div class="col-lg-12">
			<div class="card chat-app">
				<div id="plist" class="people-list">
					<div class="input-group">
						<div class="input-group-prepend">
							<span class="input-group-text"><i class="fa fa-search"></i></span>
						</div>
						<input type="text" class="form-control" placeholder="Search...">
					</div>

				<ul class="list-unstyled chat-list mt-2 mb-0">

						<% for (int i=0; i<FriendList.size(); i++){ %>
						<li class="clearfix" >
						
						
							<a href="./message.jsp?recFriend=<%=FriendList.get(i).getfId()%>&fnick=<%=FriendList.get(i).getfNick()%>">
						
						<img
							src="../upload/<%=FriendList.get(i).getfPhoto() %>"
							alt="avatar">
							
							</a>
							
							
							<div class="about">
								<div class="name"><%=FriendList.get(i).getfNick() %></div>
	
							</div></li>
						<% }%>                                
					</ul>
				</div>
				
				<div class="chat">
					<div class="chat-header clearfix">
						<div class="row">
							<div class="col-lg-6">
								<a href="javascript:void(0);" data-toggle="modal" data-target="#view_info">
									<img src="../upload/<%=pdao.ProfileSelectPhoto(FriendSendId) %>" alt="친구">
								</a>
								<div class="chat-about">
									<h6 class="m-b-0"><%=FriendNick  %></h6>
									
									<small></small>
								</div>
							</div>
							<div class="col-lg-6 hidden-sm text-right">
								<a href="javascript:void(0);" class="btn btn-outline-secondary"><i class="fa fa-camera"></i></a>
								<a href="javascript:void(0);" class="btn btn-outline-primary"><i class="fa fa-image"></i></a>
								<a href="javascript:void(0);" class="btn btn-outline-info"><i class="fa fa-cogs"></i></a>
								<a href="javascript:void(0);" class="btn btn-outline-warning"><i class="fa fa-question"></i></a>
							</div>
						</div>
					</div>
					
					
					<!-- ##########채팅창 -->
					<div class="chat-history">
						<ul class="m-b-0">
							<li class="clearfix">
							
							<!-- 오른쪽// 내 채팅 하나 출력 -->
								<div class="message-data text-right">
									<!-- ###날짜 -->
									<span class="message-data-time"><%=MeSendFriend.get(0).getMsgDate() %></span>
									
									<!-- ###상대 사진/ 닉네임 -->
									<img src="../upload/<%=pdao.ProfileSelectPhoto(vo.getmId()) %>" alt="avatar">
									<br><%=vo.getmNick()%>
								</div>
								<!-- ###상대 메세지 -->
								<div class="message other-message float-right"> <%=MeSendFriend.get(0).getMsgContent() %> </div>
							</li>
							
							
							<!-- 왼쪽 대화//  내가 한 채팅  2개 출력 -->
							<li class="clearfix">
								<div class="message-data">
									<span class="message-data-time"><%=FriendSendMe.get(0).getMsgDate() %></span>
								</div>
								<div class="message my-message"><%=FriendSendMe.get(0).getMsgContent() %> </div>                                    
							</li>                               
							<li class="clearfix">
								<div class="message-data">
									<span class="message-data-time"><%=FriendSendMe.get(1).getMsgDate() %></span>
								</div>
								<div class="message my-message"><%=FriendSendMe.get(1).getMsgContent() %> </div>
							</li>
							
							
							<!-- 그 내가 친구들에게 보낸 메세지1개, 친구들이 나에게 보낸 메세지 2개 인데
							영상 찍을 때 첫 번째 친구에게 메세지를 보내고 나면 첫 번째 친구 페이지 에서 바로 내가 보낸 메세지가 보임 -->
							<%if(MeSendFriend.size()>=2 && FriendSendId.equals(FriendList.get(0).getfId())){ %>
							<div class="message-data text-right">
									<!-- ###날짜 -->
									<span class="message-data-time"><%=MeSendFriend.get(1).getMsgDate() %></span>
								</div>
								<!-- ###상대 메세지 -->
								<div class="message other-message float-right"> <%=MeSendFriend.get(1).getMsgContent() %> </div>
							<%} %>     
						</ul>
					</div>
					
					<div class="chat-message clearfix">
						<div class="input-group mb-0">
					
							<form action="MessageInsertCon.do" method="post">
							<input type="text" class="form-control" placeholder="Enter text here..." name="msgContent" style="width: 500px" >
							<div><input type="hidden" class="form-control" placeholder="Enter text here..." name="rec" value=<%= FriendSendId%>></div>
									
							<input type="submit" value="메시지 보내기" style="color: black; box-shadow: inset 0 0 0 0.5px black; margin-top: 5px; " >


							</form>                              
						</div>
					
					</div>
				</div>
			</div>
		</div>
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

</html>