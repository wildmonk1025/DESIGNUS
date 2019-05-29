<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script src="https://code.jquery.com/jquery-3.4.0.min.js"></script>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
    div{
        border-radius: 50px;
    }
  #joinimg{
      width: 400px;
      height: 300px;
      border: 1px solid #FFCA6C;
      position: absolute;
      top: 300px;
      left: 400px;   
  }
    #joinimg2{
      width: 400px;
      height: 300px;
      border: 1px solid #FFCA6C;
      position: absolute;
      top: 300px;
      left: 1000px;   
  }
    #joinbtz{
        font-size: 45px;
        position: relative;
        top: 35px;
        left: 95px;
        border: none;
        background: none;
        
    }
     #joinbtz2{
        font-size: 45px;
        position: relative;
        top: 35px;
        left: 95px;
        border: none;
        background: none;  
    }
    .img{
      width: 200px;
      height: 100px;
      position: relative;
      left: 95px;
      top: 40px;
    }
</style>

</head>
<body>
	<form action="norJoinFrm" method="get">
		<div id="joinimg">
		   <img class="img" src="images/normal.png" /><br/><br/>
			<button id="joinbtz">일반 회원</button>
		</div>
	</form>
	<form action="wriJoinFrm" method="get">
		<div id="joinimg2">
		 <img class="img" src="images/writer.png" /><br/><br/>
			<button id="joinbtz2">작가 회원</button>
		</div>
	</form>
</body>

</html>