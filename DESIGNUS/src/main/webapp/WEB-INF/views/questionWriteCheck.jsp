<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>신고내역상세보기</title>
<meta charset="utf-8">
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
	box-shadow: 3px 0px 8px -3px rgba(0, 0, 0, 0.56);
}

#middle {
	width: 1520px;
	height: auto;
	margin-top: 60px;
}

ul {
	list-style: none;
}

#adminmenu {
	float: left;
	width: 300px;
	height: 500px;
}

#adminopt {
	float: left;
	align-content: center;
	width: 1216px;
	height: 1000px;
}

.opt {
	width: 1200px;
	height: 990px;
	border: 1px solid #f0f0f0;
	border-radius: 5px;
	box-shadow: 3px 0px 8px -3px rgba(0,0,0,0.56);
}

#declarelist {
	margin-left: 150px;
	margin-right: 150px;
	margin-top: 40px;
	width: 900px;
	height: 650px;
	float: left;
}

#paper {
	color: black;
	background-color:#FAFAFA;
	box-shadow: 1px -1px 6px 0px rgba(0,0,0,0.31);
}

input[type=submit] {
	margin: 10px 50px 20px 30px;
	float: right;;
	width: 150px;
	height: 40px;
	background-color: orange;
	color: white;
}

#btngrp {
	width: 230px;
	height: 200px;
	float:right;
}

.btn2{
	margin-top: 20px;
	margin-left: 30px;
	/*General*/
	float: left;
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
	width: 148px;
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


#footer {
	width: 1518px;
	height: 180px;
	margin-top: 20px;
	float: left;
	border: 1px solid #f0f0f0;
}

</style>
</head>

<body>
	<div id="main">
		<div id="mainheader">
			<jsp:include page="main.jsp" />
		</div>
	</div>
	
	<div id="middle">
	<div id="adminmenu">
		<jsp:include page="admininclud.jsp"></jsp:include>
	</div>

	<div id="adminopt">
			<div class="opt">
				<h3	style="text-align: center; font-size: 30px;">1:1문의 접수내역</h3>
		<form name="formName"  action="questionreply" method="post">
				<div id="declarelist">
				<input type="hidden" name="aq_num" id="aq_num" value="${aq_num}">
					<table id="paper">
						<tr>
							<th width="100" height="50" style="font-size: 20px; text-align: center; background-color:#c8e7ea;">문의번호</th>
							<th colspan="2" width="800" height="50" style="font-size: 15px;  padding-left: 10px;">${aq_num} 번</th>

						</tr>
						<tr>
							<th width="100" height="40" style="font-size: 20px; text-align: center; background-color:#c8e7ea;">문의유형</th>
							<th width="300" height="40" style="font-size: 20px; text-align: center; background-color:#c8e7ea;">문의 아이디</th>
							<th width="500" height="40" style="font-size: 20px; text-align: center; background-color:#c8e7ea;">등록일</th>
						</tr>

						<tr>
							<td width="100" height="30" style="font-size: 15px; text-align: center;">${aq_tye}</td>
							<td width="300" height="30" style="font-size: 15px; text-align: center;">${aq_mbid}</td>
							<td width="500" height="30" style="font-size: 15px; text-align: center;">${aq_date}</td>
						</tr>
						<tr>
							<th width="100" height="50" style="font-size: 20px; text-align: center; background-color:#c8e7ea;">제목</th>
							<td width="800" colspan="2" height="50" style="font-size: 15px; text-align: center;">${aq_title}</td>
						</tr>
						<tr>
							<th width="100" height="200" style="font-size: 20px; text-align: center; background-color:#c8e7ea;">내용</th>
							<td width="800" colspan="2"  height="200" style="font-size: 15px; text-align: center;">${aq_contents}</td>
						</tr>
						<tr>
							<th width="100" height="200" style="font-size: 20px; text-align: center; background-color:#c8e7ea;">첨부사진</th>
							<td width="800" height="200" colspan="2"><img src="/board/${aqi_img}" width="200px" height="200px"></td>
						</tr>
						<tr>
							<td colspan="3"><textarea rows="30" cols="20" name="qr_contents" style="margin:5px; width:650px; height: 200px; resize: none;" placeholder="여기에 답글 입력하세요."></textarea>
							<div id="btngrp">
							<input type="submit" value="답변하기" class="btn2">
				 			<a href="questionList" class="btn2">돌아가기</a>
				 			</div>
							</td>
						</tr>					
					</table>
				</div>
			</form>
			</div>
	</div>
	<div id="footer">
		<hr style="width: 100%; border: 2px solid coral; align: center;">
		<jsp:include page="footer.jsp"></jsp:include>
	</div>
	</div>

</body>
<script>
</script>
</html>