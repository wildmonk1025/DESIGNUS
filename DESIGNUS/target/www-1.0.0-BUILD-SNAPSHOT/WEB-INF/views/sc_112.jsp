<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
  #mainheader {
	border: 1px solid black;
	width: 1520px;
	height: 170px;
}

#homeMain {
	border: 1px solid black;
	width: 1520px;
	height: 600px;
}

#revauctionbtn, #auctionbtn {
	background-color: orange;
	width: 150px;
	height: 30px;
	color: white;
	float: right;
}

#coklist {
	width: 1000px;
	height: 150px;
	float: left;
	display: block;
}

#bestlist {
	width: 1000px;
	height: 150px;
	float: left;
	display: block;
}

#list {
	width: 1100px;
	height: 400px;
	float: left;
	margin: 50px;
}

#text1 {
	width: 400px;
	height: 30px;
	float: left;
}

#text2 {
	margin-top: 30px;
	width: 400px;
	height: 30px;
	float: left;
}

#footercheck {
	border: 1px solid black;
	width: 1510px;
	height: 400px;
}
.menuLink {
   text-decoration: none;
   color: black;
   display: block;
   width: 261px;
   font-size: 25px;
   font-weight: bold;
   font-family: "Trebuchet MS", Dotum, Arial;
}
ul li {
    border: 1px solid black;
    width: 450px;
   list-style: none;
   color: white;
   background-color: #FFCA6C;
   float: left;
   line-height: 40px;
   text-align: center;
    }
    li{
        text-align-last: right;
        
    }
    #h,#s{
    position: relative;
	top: 10px;
	left: 50px;
    }
    #s{
    position: relative;
        color: red;
	top: -6px;
    }
    select{
        font-size: 20px;
        width: 150px;
        height:  50px;
        position: relative;
	    top: -30px;
    }
    #title{
        font-size: 25px;
        text-align-last: center;
        width: 150px;
        height: 47px;
        border: 1px solid black;
        position: relative;
	    top: -105px;
        left: 312px;
    }
    #rp_title{
       font-size: 25px;
        text-align-last: center;
        width: 878px;
        height: 47px;
        border: 1px solid black;
        position: relative;
	    top: -178px;
        left: 470px; 
    }
    hr{
       position: relative;
        width: 1350px;
	    top: -178px;    
    }
    textarea{
        position: relative;
        width: 1350px;
        height: 300px;
	    top: -178px;  
    }
    .c1{
       position: relative;
       top: -170px;   
    }
    #aqi_imgSysName{
       
        font-size: 25px;
        width: 320px;
        height: 45px;
    }
    #apply{
        font-size: 25px;
       position: relative;
        width: 250px;
          height: 45px;
	    left: 445px;
    }
</style>
</head>
<body>
 <div id="mainheader">
		<jsp:include page="main.jsp" />
	</div>
<form action="scdeclareapply" name="scdeclareFrm" method="post">
	<div id="homeMain">
  
   <div id="one">
	   <h2 id="h">고객센터</h2>
	   <p id="s">여러분 고민에 귀 기울이겠습니다.</p>
	   
	   <ul>
			<li><a class="menuLink" href="scquestion">1:1문의</a></li>
			<li><a class="menuLink" href="scqna">QnA</a></li>
			<li><a class="menuLink" href="scdeclare">신고하기</a></li>
		</ul>

	   </div>
		<div id="list">
         <select name="rp_locate">
             <option>질문 유형</option>
             <option>거래</option>
             <option>판매</option>
             <option>등등...</option>
             </select>
              <select name="rp_reason">
             <option>유형</option>
             <option>사기</option>
             <option>욕설/비방</option>
             <option>등등...</option>
             </select>
             <p id="title">제목</p><input id="rp_title" type="text" name="rp_title">
             <hr>
           <textarea name="rp_contents">여기에 내용을 적습니다.</textarea>
           <input class="c1" type="file" name="aqi_imgSysName" id="aqi_imgSysName">
           <span class="c1" style="color:red">사진은 jpg,png 파일들만 등록할 수 있습니다.</span>
           <button class="c1" id="apply">신고하기</button>

		</div>
	</div>
	</form>
	<div id="footercheck">
		<jsp:include page="footer.jsp"></jsp:include></div>-

</body>
</html>