<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
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
	border: 1px solid gray;
	margin-top: 50px;
	height: 730px;
	width: 1400px;
	border-radius: 10px;
	box-shadow: 3px 0px 8px -3px rgba(0, 0, 0, 0.56);
}

#revauctionbtn, #auctionbtn {
	background-color: orange;
	width: 150px;
	height: 30px;
	color: white;
	float: right;
}

#list {
	width: 1302px;
	height: 450px;
	margin-top: 70px;
}

#footercheck {
	width: 1520px;
	height: 200px;
	margin-top: 40px;
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
	float: left;
}

#s {
	color: red;
	top: -6px;
	float: left;
}

select {
	font-size: 20px;
	width: 300px;
	height: 40px;
	float: left;
	margin: 5px;
}

#qr_title {
	font-size: 20px;
	width: 1130px;
	height: 40px;
	margin: 5px;
	border: 1px solid black;
}

textarea {
	width: 1300px;
	height: 250px;
	resize: none;
	float: left;
	margin-top: 10px;
	margin-bottom: 10px;
}

#titlesl {
	font-size: 20px;
	text-align-last: center;
	color: gray;
	width: 150px;
	height: 40px;
	margin: 3px;
	background-color: #f9e6e0;
	border-radius: 5px;
	float: left;
	padding-top: 6px;
}

#title {
	font-size: 20px;
	text-align-last: center;
	color: gray;
	width: 150px;
	height: 40px;
	background-color: #f9e6e0;
	border-radius: 5px;
	margin: 3px;
	float: left;
	padding-top: 6px;
	width: 150px;
}

.c1 {
	top: -170px;
	float: left;
}

#aqi_imgSysName {
	font-size: 20px;
	width: 280px;
	height: 45px;
	float: left;
}

.questionmenu {
	border-top: 1px solid orange;
	border-bottom: 1px solid orange;
	width: 432px;
	height: 50px;
	padding-top: 5px;
	margin: 1px;
	float: left;
	list-style: none;
	color: white;
	/* background-color: #FFCA6C; */
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
	width: 1330px;
	height: 80px;
	float: left;
	margin-top: 20px;
	margin-left: 50px;
}

#apply {
	/*General*/
	display: inline-block;
	text-decoration: none;
	/*Text*/
	font-family: "Helvetica Neue", Helvetica, Arial, sans-serif;
	font-size: 13px;
	font-weight: bold;
	line-height: 240%;
	float: right;
	color: #e27c6d;
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
	width: 250px;
	height: 45px;
	border-color: #e27c6d;
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

#apply:hover {
	color: white;
}

#apply:active {
	color: red;
}

#Sctext {
	width: 1300px;
	height: 80px;
	float: left;
	margin-left: 100px;
	margin-top: 30px;
}

#btnsession {
	width: 1300px;
	height: 70px;
	margin-top: 20px;
}

#mainss {
	width: 1400px;
	margin-top: 30px;
	height: auto;
}

#title1, #title2 {
	width: 1380px;
	margin: 5px;
	float: left;
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
				<li class="questionmenu"><a class="menuLink" href="scquestion"
					style="color: coral;">1:1문의</a></li>
				<li class="questionmenu"><a class="menuLink" href="scqna">QnA</a></li>
				<li class="questionmenu"><a class="menuLink" href="scdeclare">신고하기</a></li>
			</ul>
		</div>
		<div id="mainss">
			<form action="sc_questionFrm" name="sc_questionFrm" method="post"
				enctype="multipart/form-data">
				<div id="list">
					<div id="title1">
						<p id="titlesl">질문 유형</p>
						<select id="qr_type" name="qr_type">
							<option>질문의 종류를 선택하세요.</option>
							<option>거래</option>
							<option>판매</option>
							<option>후원</option>
							<option>작가 전환</option>
							<option>탈퇴하기</option>
						</select>
					</div>
					<div id="title2">
						<p id="title">제목</p>
						<input id="qr_title" type="text" name="qr_title">
					</div>
					<textarea style="font-size: 20px;" placeholder="이곳에 내용을 적어주세요"
						id="qr_contents" name="qr_contents"></textarea>

					<div id="btnsession">

						<input class="c1" type="file" name="aqi_imgSysName"
							id="aqi_imgSysName"> <span class="c1"
							style="color: red; font-size: 15px;">사진은 jpg,png 파일들만 등록할
							수 있습니다.</span>
						<button class="c1" id="apply">문의하기</button>
					</div>
				</div>
			</form>
		</div>
	</div>

	<div id="footercheck">
		<hr style="width: 100%; border: 2px solid coral; align: center;">
		<jsp:include page="footer.jsp"></jsp:include></div>



</body>
<script>
$("#apply").click(function() {

	if ($("#qr_type").val() == '질문의 종류를 선택하세요.') {
		swal(" 질문의 종류를 선택해 주세요 ");
		return false;
	}
	if (!$("#qr_title").val()) {
		swal(" 제목을 입력해 주세요 ");
		return false;
	}
	if (!$("#qr_contents").val()) {
		swal(" 내용을 입력해 주세요 ");
		return false;
	}
	
});
</script>
</html>