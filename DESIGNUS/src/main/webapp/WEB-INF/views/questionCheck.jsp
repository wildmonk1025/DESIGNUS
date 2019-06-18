<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
#one {
	width: 100%;
	height: 100%;
}

div {
	margin: auto;
}

#notice {
	padding-top: 5px;
	margin: 10px;
	margin-top : 10px;
	width: 1080px;
	height: 50px;
	text-align: center;
	font-size: 20px;
	float: left;
	overflow: auto;
}

#renking {
	
	margin: 10px 10px 10px 10px;
	line-height: 120px;
	width: 1080px;
	height: 80px;
	text-align: center;
	font-size: 30px;
	float: left;
}





#main {
	width: 1520px;
	height: 170px;
	text-align: center;
}

#point {
	border: 1px solid orange;
	margin: 0px 10px 10px 10px;
	width: 280px;
	height: 60px;
	text-align: left;
	font-size: 15px;
	float: left;
}

#img {
	margin-top: 20px;
	border: 1px solid orange;
	margin: 20px 10px 10px 10px;
	width: 280px;
	height: 290px;
	text-align: left;
	font-size: 20px;
	float: left;
}

a:active {
	text-decoration: none;
	color: #646464;
}

a:visited {
	text-decoration: none;
	color: #646464;
}

a:link {
	text-decoration: none;
	color: #646464;
}

a:hover {
	text-decoration: none;
	color: #646464;
}

#header {
	padding: 3px;
	width: 1510px;
	height: 100px;
	float: left;
}

#logo {
	padding: 5px;
	width: 270px;
	height: 80px;
	float: left;
}

#loginwriter {
	padding: 3px;
	padding-top: 20px;
	width: 300px;
	height: 80px;
	float: right;
}

#category {
	float: left;
	width: 1500px;
	height: 50px;
}

#menu {
	float: left;
	width: 1400px;
	height: 50px
}

#msg {
	width: 50px;
	height: 50px;
	margin-left: 10px;
	float: left;
}

#mypageimg {
	float: left;
	width: 50px;
	height: 50px;
	margin-left: 5px;
}

#loginmsg {
	float: left;
	width: 130px;
	height: 50px;
	margin-left: 10px;
}

#mainheader {
	border: 1px solid black;
	width: 1520px;
	height: 170px;
}

#mypagemain {
	width: 1530px;
	height: 1200px;
	border: 1px solid black;
}

#full {
	float: right;
}
#nonw{
  color: #BDBDBD;
}
#Participation{
 margin-left:40px;
 margin-top:20px;
 width: 1000px;
}
#sk{
margin-left:40px;
 margin-top:20px;
 width: 1000px;
}
#gsc{
margin-left:40px;
 margin-top:20px;
 width: 1000px;
}
#vvo{
margin-left:80px;
 margin-top:30px;
width: 900px;
}
#gay{
 color: #D5D5D5;
}
#spon{
     line-height: 80px;
    border: 1px solid orange;
	margin: 0px 10px 10px 10px;
	width: 1080px;
	height: 600px;
	float: left;
	font-size: 20px;
	text-align: left;
}
#auction {
    line-height: 80px;
	border: 1px solid orange;
	margin: 0px 10px 10px 10px;
	width: 1080px;
	height: 100px;
	text-align: left;
	font-size: 20px;
	float: left;
}
.pp{
  color: #D5D5D5;
}
#back{
	
	margin: 0px 10px 10px 10px;
	width: 1080px;
	height: 30px;
	text-align: right;
	font-size: 20px;
	float: left;
}
.aqiimg{
position: absolute;
bottom: 100px;
}
</style>

</head>
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>

<body>
	<div id="mypagemain">
		<div id="mainheader">
			<jsp:include page="main.jsp" />
		</div>

		<jsp:include page="Mapagemain.jsp" />


		<div id="rightmain">
			<div id="notice">
			 <h2>1:1 문의 상세보기</h2><hr>
			</div>
			
			<div id="renking">
			
				
			</div>
			<div id="spon"> 
		
			</div>
			<div id="auction">
				
			</div>
            <div id="back">
             <a href="questionlist">돌아가기</a>
            </div>
		</div>
	</div>
</body>
</head>
<script type="text/javascript">
var quest=${quest}
console.log(quest);
var h="";
var que="";
var st="";

 h+=quest.aq_title
 
 $("#renking").html(h)

 que+=quest.aq_contents
 if(quest.aqi_img !=null){
	 que+="<div class='aqiimg'><a href='download?aqi_img="+quest.aqi_img+"'>"+quest.aqi_img+"</a></div>"
 }
 $("#spon").html(que)
 
 if(quest.abc != null){
	 st+=quest.abc
 }else{
	 st+="<p class='pp'>처리 대기중입니다 잠시만 기다려 주세요...</p>"
 }
 $("#auction").html(st)
</script>
</html>