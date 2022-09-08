<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>



<meta charset="utf-8">



<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
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
	width: 35%;
    border-radius: 25px;
}

/* 체크박스 디자인*/

*{margin:0;padding:0;box-sizing:border-box;font-family:'Poppins'}
body{background:#ffffff}
.content{
      margin-left: 38%;
  padding: 15px;
  max-width: 800px;
  text-align: center;
}
.dpx{
  display: flex;
    align-items: baseline;
    margin-top: 50px;
    flex-direction: column;
    justify-content: flex-end;
}
h1{
  font-size:28px;
  line-height:28px;
  margin-bottom:15px;
}
label{
  display:block;
  line-height:60px;
  display: -webkit-box;
  width: 200px;
  
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
  display:flex;
  content: '\f00c';
  font-size: 25px;
  font-weight:bold;
  position: absolute;
  align-items:center;
  justify-content:center;
  font-family:'Font Awesome 5 Free';
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

@keyframes click-wave {
  0% {
    height: 40px;
    width: 40px;
    opacity: 0.35;
    position: relative;
  }
  100% {
    height: 200px;
    width: 200px;
    margin-left: -80px;
    margin-top: -80px;
    opacity: 0;
  }
}


/* 셀렉트 박스 */


form {
  position: relative;
  width: 18rem;
  margin: 10px;
}

.chosen-value,
.value-list {
  
  top: 0;
  left: 0;
  width: 100%;
}

.chosen-value {
  font-family: 'Ek Mukta';
  text-transform: uppercase;
  font-weight: 600;
  letter-spacing: 4px;
  height: 4rem;
  font-size: 1.1rem;
  padding: 1rem;
  background-color: #FAFCFD;
  border: 3px solid whitesmoke;
  transition: .3s ease-in-out;
  border-radius: 25px;
  text-align: center;
}
  .chosen-value :-webkit-input-placeholder {
    color: #333;
  }
  
  .chosen-value:hover {
    background-color: #ffd9e9;
    cursor: pointer;
    
   
  }
  .chosen-value:-webkit-input-placeholder {
      color: #333;
    }
  
	.chosen-value:focus,
	.chosen-value.open {
    box-shadow: 0px 5px 8px 0px rgba(0,0,0,0.2);
    outline: 0;
    background-color: #ffd9e9;
    color: #000;
    
   
  }
  .chosen-value::-webkit-input-placeholder {
      color: #000;
    }


.value-list {
  list-style: none;
  margin-top: 4rem;
  box-shadow: 0px 5px 8px 0px rgba(0,0,0,0.2);
  overflow: hidden;
  max-height: 0;
  transition: .3s ease-in-out;
}
  .value-list.open {
   max-height: 320px;
   overflow: auto;
  }
  
  .value-list>li {
    position: relative;
    height: 4rem;
    background-color: #FAFCFD;
    padding: 1rem;
    font-size: 1.1rem;
    display: flex;
    align-items: center;
    cursor: pointer;
    transition: background-color .3s;
    opacity: 1;
  }
  .value-list>li:hover {
      background-color: #ffd9e9;
    }
    
	.value-list>li.closed {
      max-height: 0;
      overflow: hidden;
      padding: 0;
      opacity: 0;
    }

	.px{
		margin: 20px;
	}
	
	/*프로필 사진 스타일 적용*/
	
	
	.container {
    display: flex;
    height: 100%;
    flex-direction: column;
    margin-right: 100px;
   
}

.image-upload {
    flex: 1;
    display: flex;
    flex-direction: column;
    justify-content: center;
}

.button {
    display: flex;
    justify-content: center;
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
    margin-top: 20px;
}

.fileInput {
    display: flex;
    align-items: center;
    border-bottom: solid 2px black;
    width: 75%;
    height: 30px;
}

#fileName {
    margin-left: 5px;
}

.buttonContainer {
        width: 100%;
    display: flex;
    justify-content: center;
    align-items: center;
    margin-left: 10px;
    /* background-color: black; */
    color: white;
    border-radius: 30px;
    padding: 10px;
    font-size: 0.8em;
    cursor: pointer;
}
}


.image-show {




   /* z-index: -1;
    display: flex;
    justify-content: center;
    align-items: center;
    position: absolute;
    width: 100%;
    height: 100%;*/
}


.img {


	border-radius: 32px;
   /* position: absolute;*/
       width: 100%;
    height: 100%;
    visibility: visible;
    object-fit: contain;
    
}

#submitButton{
	color: black;
    background: white;
    border: 1px dotted black;
    border-radius: 5px;
    font-size: 12px;
    margin: 1px;
    padding: 14px;
}

textarea {
			width: 400px;
			height: 200px;
			padding: 10px;
			box-sizing: border-box;
			border: solid 2px #ffd9e9;
			border-radius: 5px;
			font-size: 16px;
			resize: none;
		}


</style>
	

	</head>

</head>

<body class="is-preload">

		<!-- Wrapper -->
			<div id="wrapper" style="    margin-top: 25px;">


						<!-- Header -->

				
				<header id="header" class="alt" style="background-color: #ffd9e9;">    <!--메뉴상단 배경색깔-->
					<a href="./index_notlog.html" class="logo"  style=" font-size: 38px; color: white; "> 임자야</a>
					<nav>
						<a href="#menu" style=" font-size: 25px; color: white; ">Menu</a>
					</nav>
				</header>

				<!-- Menu -->
					<nav id="menu">
						<ul class="links">
							<li><a href="../i_login/login.html">인연찾기</a></li>
							<li><a href="../i_login/login.html">모임찾기</a></li>
							<li><a href="../i_login/login.html">프로필</a></li>
							<li><a href="../i_login/login.html">메세지</a></li>
						</ul>
						<ul class="actions stacked" style="font-size: 1.1em;">
							<li><a href="../i_index/index_notlog.html" class="button primary fit" >홈으로</a></li>
							<li><a href="../i_login/login.html" class="button fit">로그인</a></li>
						</ul>
					</nav>

				<!--콘텐츠 부분 시작-->
				
					
			<span style="font-size: 50px; margin-top: 25px;
							    font-size: 50px;
							    margin-left: 25px; ">프로필 작성</span> 
								
			<div class='content'>
				
				
				<br><br>
				<!--전체-->


<div class="image-show" id="image-show" style=" border: 2px dotted #ffc3dc; border-radius: 12%; width: 300px; height: 300px; ">










</div>


<form  action="ProfileInsertCon.do" method="post" enctype="multipart/form-data" >
			<div class="dpx">
			
			

			 	
						<!--###############프로필 사진 시작부분###############-->
						
		<div style="vertical-align: top; margin-right: 100px; display: flex; flex-direction: column; ">
						
						<!-- ###사진찾기 버튼 -->
						<div class="container">		
				
				
				  <div class="image-upload" id="image-upload">

           
            
            
                <div class="button" id="button1" style="margin-left: 87px;">
                
                
                
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
		
		<!--##############자기소개 textarea-->
				<div class="container" style="align-items: center;  margin-top: 55px; ">
			
		      	<span style="font-size: 30px;" >자기소개</span>
						<br><br>

						<textarea name = "info" placeholder="자기소개를 적어주세요"></textarea>

		    </div>
			
				</div>
			
				
			</div>
			
			<input type="submit" value="작성완료"	 style="  box-shadow: inset 0 0 0 2px #ffffff;
				color: #ffffff;
				cursor: pointer;
				display: inline-block;
				font-size: 18px;
				font-weight: 600;
				height: 3.5em;
				letter-spacing: 0.25em;
				line-height: 3.5em;
				padding: 0 1.75em;
				text-align: center;
				text-decoration: none;
				text-transform: uppercase;
				white-space: nowrap;
				background-color: #ffd9e9;
				border-radius: 25px;
				font-family: 'Jua', sans-serif;
				border: 3px solid #ffff;
				
				margin-left: 47%;
				margin-right: 3%				
					">
			
			
			</form>	

			</div>
			

		<!-- Scripts -->
			<script src="../assets/js/jquery.min.js"></script>
			<script src="../assets/js/jquery.scrolly.min.js"></script>
			<script src="../assets/js/jquery.scrollex.min.js"></script>
			<script src="../assets/js/browser.min.js"></script>
			<script src="../assets/js/breakpoints.min.js"></script>
			<script src="../assets/js/util.js"></script>
			<script src="../assets/js/main.js"></script>

			<script src="../assets/js/selectbox.js"></script>
			
			
			

	</body>







</html>