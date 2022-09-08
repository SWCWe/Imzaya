<%@page import="com.VO.CommentVO"%>
<%@page import="com.DAO.CommentDAO"%>
<%@page import="com.VO.BoardVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.DAO.BoardDAO"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>



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


			<% 
				BoardDAO bdao = new BoardDAO();
				
				

			
			
			
		BoardVO bvo = (BoardVO)session.getAttribute("bvo");
		
		int seq = bvo.getArticleSeq();
		
		int cnt = bvo.getArticleCNT() ;
		
		
		
		System.out.println("넘어온거"+seq);
		System.out.println("넘어온거"+cnt);
		
		CommentDAO cdao = new CommentDAO();
		
		ArrayList<CommentVO> clist = (ArrayList<CommentVO>)cdao.ComWriteSelect(seq);
		
		
		//조회수 메소드
		bdao.UpdateCnt(cnt ,seq);
				
			%>


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

<div style="margin-top: 10%; font-family: sans-serif; ">
    

    <h1 class="con">게시글 상세</h1>
    
    <br><br><br>
    <section class="article-detail table-common con row" style="margin: auto;">
        
        <table class="cell" border="1">
            <colgroup>
                <col width="100px">
            </colgroup>
            <tbody>
                <tr class="article-title">
                    <th>제목</th>
                    <td colspan="3"><%=bvo.getArticleTitle() %></td>
                </tr>
                <tr class="article-info">
                    <th>날짜</th>
                    <td><%=bvo.getArticleDate() %></td>
                    <th>작성자</th>
                    <td><%=bvo.getmId() %></td>
                </tr>
                <tr class="article-body">
                    <td colspan="4">  
              	  <%=bvo.getArticleContent() %>
                </tr>
            </tbody>
        </table>
    </section>



<!-- ################댓글 시작 부분 -->

<div class="con reply">
    <h1 class="">댓글 입력</h1>
    <section class="reply-form">
    
    
        <form action="ComWriteCon.do">
            
            <div>
                <textarea name="content" style="width: 100%; " ></textarea>
               
           <div style="display:flex;  flex-direction: row-reverse;  ">  
			<button type="submit"  
			
			 
			style="font-size: 25px; font-size: 20px; width: 13.5%;
			box-shadow: inset 0 0 0 1px black;
			margin-top: 10px;
		    color: black;
		    cursor: pointer;
		    display: inline-block;
		    font-size: 0.8em;" > 
			
			작성완료
			
			
				</button>
				
				</div>  
            </div>
        </form>
    </section>

    <h1 class="">댓글 목록</h1>
    <section class="reply-list table-common">
        <table border="1">
            <colgroup>
                <col width="100px">
            </colgroup>
           
                <tr>
                    <td>번호</td>
                    <td>댓글내용</td>
                    <td>작성자</td>
                </tr>
                
                	<%for(int i =0; i<clist.size(); i++){%>
			<tr>
				<td><%=i+1%></td>
				
				<td><%=clist.get(i).getCmtContent()%></td>
				
				<td><%=clist.get(i).getmId()%></td>		
					
			</tr>	
	
			<% }%>
           
        </table>
    </section>
</div>


</div>


<footer></footer>
	
	
	
	

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