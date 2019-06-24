<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
::-webkit-scrollbar {
	width: 4px;
}

::-webkit-scrollbar-track {
	background-color: white;
}

::-webkit-scrollbar-thumb {
	background-color: #F5BCA9;
	border-radius: 5px;
}

::-webkit-scrollbar-thumb:hover {
	background: #F5BCA9;
}

#mainheader {
	border: 1px solid #F5BCA9;
	width: 1518px;
	height: 170px;
	background-color: white;
	z-index: 1000;
	box-shadow: 3px 0px 8px -3px rgba(0, 0, 0, 0.56);
}

#homeMain {
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
	width: 1000px;
	height: 150px;
	float: left;
	display: block;
}
 */
#list {
	width: 1302px;
	height: 450px;
	float: left;
	margin-left: 100px;
	margin-top: 20px;
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
	width: 1520px;
	height: 200px;
}

.menuLink {
	text-decoration: none;
	color: black;
	display: block;
	width: 420px;
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
	height: 40px;
	top: -30px;
	float: left;
}

#title {
	font-size: 25px;
	text-align-last: center;
	width: 150px;
	height: 40px;
	top: -100px;
	left: 170px;
	float: left;
}

#repoID {
	font-size: 20px;
	text-align-last: center;
	width: 150px;
	height: 40px;
	top: -105px;
	left: 170px;
	float: left;
}

#rp_mbid_a {
	font-size: 20px;
	text-align-last: center;
	width: 200px;
	height: 40px;
	top: -178px;
	left: 340px;
	float: left;
}

#rp_title {
	font-size: 20px;
	text-align-last: center;
	width: 494px;
	height: 40px;
	top: -178px;
	left: 340px;
	float: left;
}

textarea {
	width: 1300px;
	height: 300px;
	top: -183px;
	resize: none;
	float: left;
}

.questionmenu {
	border-top: 1px solid orange;
	border-bottom: 1px solid orange;
	width: 432px;
	height: 50px;
	padding-top: 5px;
	margin: 1px;
	list-style: none;
	color: white;
	/* background-color: #FFCA6C; */
	float: left;
	line-height: 40px;
	text-align: center;
}

.menuLink:hover {
	color: coral;
}

.menuLink:active {
	color: red;
}

#questionm {
	width: 1360px;
	height: 50px;
	float: left;
	margin-left: 100px;
	margin-top: 10px;
}

.c1 {
	top: -170px;
	float: left;
}

#rqi_imgSysName {
	font-size: 20px;
	width: 280px;
	height: 45px;
	float: left;
}

#Sctext {
	width: 1300px;
	height: 80px;
	float: left;
	margin-left: 100px;
	margin-top: 20px;
}

#apply {
	font-size: 20px;
	width: 250px;
	height: 45px;
	float: right;
}
</style>
</head>
<body>
	<div id="mainheader">
		<jsp:include page="main.jsp" />
	</div>

	<div id="homeMain">

		<div id="homemain">
			<div id="one">
				<div id="Sctext">
					<h2 id="h">고객센터</h2>
					<br> <br>
					<p id="s">여러분 고민에 귀 기울이겠습니다.</p>
				</div>
				<div id="questionm">
					<ul>
						<li class="questionmenu"><a class="menuLink"
							href="scquestion">1:1문의</a></li>
						<li class="questionmenu"><a class="menuLink" href="scqna">QnA</a></li>
						<li class="questionmenu"><a class="menuLink" href="scdeclare"
							style="color: coral;">신고하기</a></li>
					</ul>
				</div>

			</div>

			<form action="sc_reportFrm" name="sc_reportFrm" method="post"
				enctype="multipart/form-data">
				<div id="list">
					<select name="rp_locate">
						<option>질문 유형</option>
						<option>거래</option>
						<option>판매</option>
						<option>등등...</option>
					</select> <select name="rp_reason">
						<option>유형</option>
						<option>사기</option>
						<option>욕설/비방</option>
						<option>등등...</option>
					</select>

					<p id="repoID">신고대상아이디</p>
					<input id="rp_mbid_a" type="text" name="rp_mbid_a">
					<p id="title">제목</p>
					<input id="rp_title" type="text" name="rp_title">
					<hr>
					<textarea name="rp_contents" style="font-size: 20px;"
						placeholder="여기에 내용을 적습니다."></textarea>
					<input class="c1" type="file" name="rqi_imgSysName"
						id="rqi_imgSysName"> <span class="c1" style="color: red">사진은
						jpg,png 파일들만 등록할 수 있습니다.</span>
					<button class="c1" id="apply">신고하기</button>
				</div>
			</form>
		</div>
	</div>

	<div id="footercheck">
		<jsp:include page="footer.jsp"></jsp:include></div>
	-

</body>
</html>