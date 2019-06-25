<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>questionWriteCheck.jsp</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<style>
#main {
	width: 1520px;
	height: 170px;
	position: relative;
}

#mainheader {
	border: 1px solid #F5BCA9;
	width: 1518px;
	height: 170px;
	position: fixed;
	background-color: white;
	z-index: 1000;
	box-shadow: 3px 0px 8px -3px rgba(0,0,0,0.56);
}
body {
	margin: auto;
	width: 1520px;
	height: auto;
	overflow: auto;
}

div {
	margin: auto;
}

ul {
	list-style: none;
}

#mainheader {
	width: 1518px;
	height: 170px;
}

#adminmenu {
	float: left;
	width: 300px;
	height: 500px;
}

#onequestion {
	margin: 10px;
	padding-top: 20px;
	width: 400px;
	height: 40px;
	padding-left: 20px;
	float: left;
}

#onequestionmain {
	margin: 10px;
	padding: 20px;
	width: 900px;
	height: 700px;
	float: left;
}

#questiontitle {
	float: left;
	margin: 5px;
	width: 800px;
	height: 30px;
}

#questioncontents {
	float: left;
	margin: 5px;
	width: 800px;
	height: 200px;
}

#questionfile {
	float: left;
	margin: 5px;
	width: 800px;
	height: 30px;
}

.button {
	margin: 10px 10px 10px 10px;
	width: 200px;
	height: 50px;
	background-color: orange;
	position: static;
	color: white;
}

input[type=submit] {
	margin: 10px 100px 0px 0px;
	float: right;;
	width: 100px;
	height: 40px;
	background-color: orange;
	color: white;
}
a:active {
	text-decoration: none;
	color: rgb(223, 192, 86);
}

a:visited {
	text-decoration: none;
	color: rgb(223, 192, 86);
}
a:link {
	text-decoration: none;
	color: rgb(223, 192, 86);
}
a:hover {
	text-decoration: none;
	color: rgb(223, 192, 86);
} 
.btn2{
margin-top: 10px;
	/*General*/
	display: inline-block;
	text-decoration: none;
	/*Text*/
	font-family: "Helvetica Neue", Helvetica, Arial, sans-serif;
	font-size: 13px;
	font-weight: bold;
	line-height: 240%;
	color: rgb(162, 136, 44);
	text-align: center;
	text-shadow: 0px 1px 0px rgba(255, 255, 255, 0.25);
	/*Button*/
	background-color: #FFE79E;
	background-image: -moz-linear-gradient(53% 100% 90deg, rgb(212, 212, 212)
		0%, rgb(237, 237, 237) 100%);
	background-image: -webkit-gradient(linear, 53% 100%, 53% 3%, color-stop(0, rgb(212, 212,
		212)), color-stop(1, rgb(237, 237, 237)));
	background-image: -webkit-linear-gradient(90deg, rgb(212, 212, 212) 0%,
		rgb(237, 237, 237) 100%);
	background-image: -o-linear-gradient(90deg, rgb(212, 212, 212) 0%,
		rgb(237, 237, 237) 100%);
	background-image: -ms-linear-gradient(90deg, rgb(212, 212, 212) 0%,
		rgb(237, 237, 237) 100%);
	background-image: linear-gradient(90deg, rgb(212, 212, 212) 0%,
		rgb(237, 237, 237) 100%);
	width: 150px;
	height: 40px;
	border-color: rgb(223, 192, 86);
	border-width: 1px;
	-moz-border-radius: 3px;
	-webkit-border-radius: 3px;
	border-radius: 3px;
	border-style: solid;
	-moz-box-shadow: 0px 0px 0px 3px rgba(0, 0, 0, 0.1), inset 0px 1px 0px
		rgba(255, 255, 255, 0.25);
	-webkit-box-shadow: 0px 0px 0px 3px rgba(0, 0, 0, 0.1), inset 0px 1px
		0px rgba(255, 255, 255, 0.25);
	box-shadow: 0px 0px 0px 3px rgba(0, 0, 0, 0.1), inset 0px 1px 0px
		rgba(255, 255, 255, 0.25);
	-ms-filter: "progid:DXImageTransform.Microsoft.gradient(startColorstr=#ffffefbf,
		endColorstr=#ffffe185, GradientType=0) progid:DXImageTransform.Microsoft.Glow(Color=#ff000000,
		Strength=3)";
	filter: progid:DXImageTransform.Microsoft.gradient(startColorstr=#ffffefbf,
		endColorstr=#ffffe185, GradientType=0) progid:DXImageTransform.Microsoft.Glow(Color=#ff000000,
		Strength=3);
	display: inline-block;
	background-image: -webkit-gradient(linear, 53% 100%, 53% 3%, color-stop(0, rgb(212, 212,
		212)), color-stop(1, rgb(237, 237, 237)));
	background-image: -webkit-linear-gradient(90deg, rgb(212, 212, 212) 0%,
		rgb(237, 237, 237) 100%);
	background-image: -o-linear-gradient(90deg, rgb(212, 212, 212) 0%,
		rgb(237, 237, 237) 100%);
	background-image: -ms-linear-gradient(90deg, rgb(212, 212, 212) 0%,
		rgb(237, 237, 237) 100%);
	background-image: linear-gradient(90deg, rgb(212, 212, 212) 0%,
		rgb(237, 237, 237) 100%);
}
#atag{
	width: 120px;
	height: 30px;
}
.dd{
box-shadow: 3px 0px 8px -3px rgba(0,0,0,0.56);
}
</style>
</head>

<body>
	<div id="main">
		<div id="mainheader">
			<jsp:include page="main.jsp" />
		</div>
	</div>
	<div id="adminmenu">
		<ul>
			<jsp:include page="admininclud.jsp"></jsp:include>

		</ul>
	</div>
	<div id="onequestionmain">
	<form name="formName"  action="questionreply" method="post">
		<div  id="onequestion" class="dd" style="background-color:#F6D8CE;">1:1문의 접수 내역</div>
		<br> <br> <br> <br>
		
			<div id="questiontitle" class="dd">글 제목: ${aq_title}</div>
			<div id="questioncontents"  class="dd">글 내용: ${aq_contents}</div>
			<div id="questionfile"  class="dd">첨부파일 : ${aqi_img}</div>
			<input type="hidden" name="aq_num" id="aq_num" value="${aq_num}">
			
				<textarea rows="30" cols="20"
					style="margin: 5px; width: 800px; height: 100px;" id="ff"
					placeholder="여기에 답글을 달 수 있습니다" name="qr_contents"></textarea>
				<input type="submit" value="답변하기" class="btn2">
				 <a href="questionList" class="btn2">돌아가기</a>
				
				
			</form>
			
		</div>
	


</body>
<script>

</script>

</html>