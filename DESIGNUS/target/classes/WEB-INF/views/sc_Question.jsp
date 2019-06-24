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
	height: 700px;
}

#revauctionbtn, #auctionbtn {
	background-color: orange;
	width: 150px;
	height: 30px;
	color: white;
	float: right;
}

/* #coklist {
	width: 1000px;
	height: 150px;
	float: left;
	display: block;
}

#bestlist {
	width: 1100px;
	height: 150px;
	float: left;
	display: block;
} */
#list {
	width: 1320px;
	height: 450px;
	float: left;
	margin-left: 100px;
	margin-top: 10px;
}


#footercheck {
	border: 1px solid black;
	width: 1520px;
	height: 200px;
}

.menuLink {
	text-decoration: none;
	color: black;
	display: block;
	width: 450px;
	font-size: 25px;
	font-weight: bold;
	font-family: "Trebuchet MS", Dotum, Arial;
	text-align: center;
}

#h, #s {
	top: 10px;
	left: 50px;
	float: left;
}

#s {
	color: red;
	top: -6px;
	float: left;
}

select {
	font-size: 20px;
	width: 150px;
	height: 50px;
	top: -30px;
	float: left;
}

#title {
	font-size: 25px;
	text-align-last: center;
	width: 150px;
	height: 47px;
	border: 1px solid black;
	top: -105px;
	left: 170px;
	float: left;
}

#qr_title {
	font-size: 25px;
	text-align-last: center;
	width: 1000px;
	height: 47px;
	border: 1px solid black;
	top: -178px;
	left: 340px;
	float: left;
}

textarea {
	width: 1300px;
	height: 300px;
	top: -178px;
	resize: none;
	float: left;
}

.c1 {
	top: -170px;
	float: left;
}

#aqi_imgSysName {
	font-size: 25px;
	width: 320px;
	height: 45px;
	float: left;
}

.questionmenu {
	border: 1px solid black;
	width: 450px;
	list-style: none;
	color: white;
	background-color: #FFCA6C;
	float: left;
	line-height: 40px;
	text-align: center;
}

#questionm {
	width: 1360px;
	height: 40px;
	float: left;
	margin-left: 55px;
	margin-top: 20px;
}

#apply {
	font-size: 25px;
	width: 250px;
	height: 45px;
	float: right;
}

#Sctext {
	width: 1300px;
	height: 80px;
	float: left;
	margin-left: 100px;
	margin-top: 20px;
}
</style>
</head>
<body>
	<div id="mainheader">
		<jsp:include page="main.jsp" />
	</div>

	<div id="homeMain">
			<div id="Sctext">
				<h2 id="h">고객센터</h2>
			<br> <br>
			<p id="s">여러분 고민에 귀 기울이겠습니다.</p>
			</div>
			<div id="questionm">
				<ul>
					<li class="questionmenu"><a class="menuLink" href="scquestion">1:1문의</a></li>
					<li class="questionmenu"><a class="menuLink" href="scqna">QnA</a></li>
					<li class="questionmenu"><a class="menuLink" href="scdeclare">신고하기</a></li>
				</ul>
			</div>
			<form action="sc_questionFrm" name="sc_questionFrm" method="post" enctype="multipart/form-data">
			<div id="list">
				<select name="qr_type">
					<option>질문 유형</option>
					<option>거래</option>
					<option>판매</option>
					<option>이수원</option>
					<option>정병남</option>
					<option>조용환</option>
				</select>
				<p id="title">제목</p>
				<input id="qr_title" type="text" name="qr_title">
				<textarea placeholder="이곳에 내용을 적어주세요" name="qr_contents"></textarea>
				<input class="c1" type="file" name="aqi_imgSysName" id="aqi_imgSysName"> 
				<span class="c1" style="color: red">사진은 jpg,png 파일들만 등록할 수 있습니다.</span>
				<button class="c1" id="apply">문의하기</button>
			</div>
		</form>
	</div>
	<div id="footercheck">
		<jsp:include page="footer.jsp"></jsp:include></div>



</body>
<script>
	
</script>
</html>