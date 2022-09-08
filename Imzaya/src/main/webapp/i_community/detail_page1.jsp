<%@page import="com.VO.BoardVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.DAO.BoardDAO"%>
<%@page import="com.DAO.MeetDAO"%>
<%@page import="com.VO.MemberVO"%>
<%@page import="com.VO.MeetVO"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>

	        <!-- Bootstrap icons-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
        
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="../assets/css/styles.css" rel="stylesheet" />
        
        
        <!--게시판 스타일 링크 -->
        <link rel="stylesheet" type="text/css" href="../assets/css/board.css">
	
		<link rel="stylesheet" href="../assets/css/main.css" />
		<noscript><link rel="stylesheet" href="../assets/css/noscript.css" /></noscript>

		<!--글씨폰트 태그-->
		<link rel="preconnect" href="https://fonts.googleapis.com">
		<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
		<link href="https://fonts.googleapis.com/css2?family=Jua&display=swap" rel="stylesheet">

<style>


body{
	margin-bottom: 0px;

}


	
	.button{
    color: #ffffff;
   
    background-color: #ffc3dc;

    font-family: 'Jua', sans-serif;
    font-size: 0.8em;

    border-radius: 25px;
}

#tr-th>th{
	color: black;
}


</style>
	


</head>






	<body>
	

		<% MeetDAO dao = new MeetDAO();
		
			String seq1 = request.getParameter("mt_seq");
		
		int seq = Integer.parseInt(request.getParameter("mt_seq"));
		
		
		
		out.print(seq);
		
		MeetVO mtvo = dao.MeetSelect(seq);
		
		BoardDAO bdao = new BoardDAO();
		
		ArrayList<BoardVO> list = (ArrayList<BoardVO>)bdao.BoardWriteSelect(seq1);
		
		
		
			
		%>

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
        
        
        
        
        <!-- Product section-->
        <section class="py-5">
            <div class="container px-4 px-lg-5 my-5">
                <div class="row gx-4 gx-lg-5 align-items-center" style="margin-top: 110px">
                    <div class="col-md-6">
                    
                    
                    <!-- #####이미지 출력 부분-->
                    <img class="meetphoto" src="../upload/<%=mtvo.getMeetPhoto()%>" alt="..." /></div>
                   
                   
                   
                   
                    <div class="col-md-6">
                    
                    
                    	<!-- ######모임지역 -->
                        <div class="small mb-1"><%=mtvo.getMeetLocation()%></div>
                        
                        
                        <!-- ####모임 이름 -->
                        <h1 class="display-5 fw-bolder"><%=mtvo.getMeetName()%></h1>
                        
                        
                        
                        <!-- ####모임 설명 부분 -->
                        <p class="lead"><%=mtvo.getMeetContent()%></p>
                        
                        
                        
                        
                        <div class="d-flex">
                           
                            <button class="btn btn-outline-dark flex-shrink-0" type="button">
                                
                                <a href="community.jsp" > 다른모임 찾으러 가기 </a>
                            </button>
                            
                        </div>
                    </div>
                </div>
            </div>
        </section>
        
        <!-- 게시글 모음-->
        
        
        <h3 class="con">게시글 목록</h3>  <a href="boardwrite.jsp?seq=<%=seq%>">글작성</a>
        <br>
    <section class="article-list table-common con">
        <table border="1" style="color: black;">
        
        
            <thead >
                <tr id="tr-th" >
                    <th>번호</th>
                    <th>제목</th>
                    <th>작성날짜</th>
                    <th>작성날짜</th>
                    <th>조회수</th>
                    
                </tr>
            </thead>
            
            	<%for(int i =0; i<list.size(); i++){%>
			<tr>
				<td><%=i+1%></td>
				<td><a href="boardSelectCon.do?seq=<%=list.get(i).getArticleSeq()%>" ><%=list.get(i).getArticleTitle() %></a></td>
				<td><%=list.get(i).getmId()%></td>
				<td><%=list.get(i).getArticleDate()%></td>		
				<td><%=list.get(i).getArticleCNT() %></td>			
			</tr>	
	
			<% }%>
        
            
            
        </table>
    </section>
        
        
        
        
        
        
        <!-- Scripts -->
			<script src="../assets/js/jquery.min.js"></script>
			<script src="../assets/js/jquery.scrolly.min.js"></script>
			<script src="../assets/js/jquery.scrollex.min.js"></script>
			<script src="../assets/js/browser.min.js"></script>
			<script src="../assets/js/breakpoints.min.js"></script>
			<script src="../assets/js/util.js"></script>
			<script src="../assets/js/main.js"></script>
        
        
        
        
        <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
       
    </body>



</html>