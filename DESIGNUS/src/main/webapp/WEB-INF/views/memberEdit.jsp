<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
#join {
	top: 500px;
	left: 200px;
}

#logoimg {
	width: 250px;
	height: 100px;
}

#norjoinFrm {
	position: relative;
	top: 50px;
	left: 400px;
}

.memberN {
	font-size: 15;
	height: 40;
}

#btz {
	position: relative;
	width: 70;
	height: 40;
}

#leftmain {
	width: 310px;
	height: 950x;
	border: 1px solid black;
	float: left;
}

#rightmain {
	width: 1200px;
	height: 950px;
	border: 1px solid black;
	float: left;
}

#memberS {
	position: relative;
	top: 80px;
	left: 400px;
}

.btz2 {
	position: relative;
	top: 20px;
	left: 120px;
	width: 300px;
	height: 40px;
}

#norjoinFrm2 {
	position: relative;
	top: 50px;
	left: 300px;
}

#mb_email {
	font-size: 15;
	width: 200px;
	height: 40px;
	float: left;
}

#mb_email2 {
	font-size: 15;
	width: 200px;
	height: 40;
	position: relative;
	right: 175px;
}

#emailList {
	font-size: 15;
	width: 100px;
	height: 40;
	position: relative;
	right: 175px;
}

#Echeck {
	width: 100;
	height: 40;
	position: relative;
	top: 10px;
	left: 450px;
}

#null {
	font-size: 15px;
	width: 20px;
}

#i2 {
	position: relative;
	top: 10px;
	left: 150px;
}

#point {
	border: 1px solid orange;
	margin: 0px 10px 10px 10px;
	width: 280px;
	height: 60px;
	text-align: left;
	font-size: 20px;
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
	border: 1px solid orange;
	width: 1080px;
	height: 100px;
	text-align: center;
	font-size: 20px;
	float: left;
}

}
#info {
	border: 1px solid orange;
	margin: 0px 10px 10px 10px;
	width: 280px;
	height: 580px;
	font-size: 20px;
	text-align: left;
	float: left;
}

#main {
	width: 1520px;
	height: 170px;
	text-align: center;
}

.bt01 {
	position: absolute;
	right: 100px;
	top: 50px;
}

a {
	color: red
}

button {
	display: inline-block;
	vertical-align: top;
	position: relative;
	overflow: hidden;
	min-width: 96px;
	line-height: 46px;
	padding: 0 24px;
	font-size: 14px;
	color: white;
	text-align: center;
	text-decoration: none;
	text-shadow: 0 1px #154c86;
	background-color: #247edd;
	background-clip: padding-box;
	border: 1px solid;
	border-color: #1c65b2 #18589c #18589c;
	border-radius: 4px;
	-webkit-box-shadow: inset 0 1px rgba(255, 255, 255, 0.4), 0 1px 2px
		rgba(0, 0, 0, 0.2);
	box-shadow: inset 0 1px rgba(255, 255, 255, 0.4), 0 1px 2px
		rgba(0, 0, 0, 0.2);
	background-image: -webkit-linear-gradient(top, rgba(255, 255, 255, 0.3),
		rgba(255, 255, 255, 0) 50%, rgba(0, 0, 0, 0.12) 51%,
		rgba(0, 0, 0, 0.04));
	background-image: -moz-linear-gradient(top, rgba(255, 255, 255, 0.3),
		rgba(255, 255, 255, 0) 50%, rgba(0, 0, 0, 0.12) 51%,
		rgba(0, 0, 0, 0.04));
	background-image: -o-linear-gradient(top, rgba(255, 255, 255, 0.3),
		rgba(255, 255, 255, 0) 50%, rgba(0, 0, 0, 0.12) 51%,
		rgba(0, 0, 0, 0.04));
	background-image: linear-gradient(to bottom, rgba(255, 255, 255, 0.3),
		rgba(255, 255, 255, 0) 50%, rgba(0, 0, 0, 0.12) 51%,
		rgba(0, 0, 0, 0.04));
}

#spon {
	margin: 10px; border : 1px solid orange;
	width: 1080px;
	height: 700px;
	float: left;
	background-color: #cdfdee;
	border: 1px solid orange;
}

#pp {
	color: red;
}

#btn1 {
	text-align: center;
}

h, td, tr, input, textarea, select, FORM {
	font-family: 고딕;
	font-size: 1em;
	border-radius: 5px;
}

#table1 {
	width: 100%;
	height: 80%;
	border-spacing: 10px;
}

#mypagemain {
	width: 1530px;
	height: 1200px;
	border: 1px solid black;
}

.memberN {
	font-size: 15;
	width: 90%;
	height: 40;
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

#search {
	margin-left: 100px;
	padding-left: 120px;
	padding-right: 120px;
	padding-top: 20px;
	width: 570px;
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

#searchtxt {
	margin: 50px, 20px;
	width: 300px;
	height: 30px;
	align: center;
}

#subcategory {
	width: 50px;
	height: 50px;
	background-color: orange;
	color: white;
	font-size: 30px;
	float: left;
}

#menu {
	float: left;
	width: 1400px;
	height: 50px
}

#submenu {
	margin-left: 100px;
	width: 150px;
	float: left;
	height: 50px;
	text-align: center;
	font-size: 18px;
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
</style>
</head>

<body>
	<div id="mainheader">
		<jsp:include page="main.jsp" />
	</div>

	<div id="mypagemain">
		<div id="leftmain">
			<div id="img">
				<h1>프로필사진</h1>
			</div>

			<div id="point">
				<h1>포인트:</h1>
			</div>

			<div id="info">
				<table width="1000">

					<tr>
						<td style="font-size: 27px"><a href="historylist?list=rev">제작의뢰
								내역</a></td>
					</tr>
					<tr>
						<td style="font-size: 27px"><a href="historylist?list=revre">제작의뢰
								접수내역</a></td>
					</tr>
					<tr>
						<td style="font-size: 27px"><a href="historylist?list=auc">출품작
								구매 내역</a></td>
					</tr>
					<tr>
						<td style="font-size: 27px"><a href="historylist?list=aucre">출품작
								판매 내역</a></td>
					</tr>
					<tr>
						<td style="font-size: 27px"><a href="historylist?list=spon">후원진행
								내역</a></td>
					</tr>
					<tr>
						<td style="font-size: 27px"><a href="historylist?list=sponre">후원요청
								내역</a></td>
					</tr>
					<tr>
						<td style="font-size: 27px"><a href="historylist?list=basket">꿍
								내역</a></td>
					</tr>
					<tr>
						<td style="font-size: 27px"><a href="privacyedit">개인정보 수정</a></td>
					</tr>
					<tr>
						<td style="font-size: 27px"><a href="memberout">회원탈퇴 신청</a></td>
					</tr>
					<tr>
						<td style="font-size: 27px"><a href="nortowri">작가전환 신청</a></td>
					</tr>
				</table>
			</div>
		</div>
		<div id="rightmain">
			<div id="notice">
				<h2>개인 정보 수정</h2>
			</div>
			<div id="spon">
				<form action=" memberrevise" method="POST"
					enctype="multipart/form-data">
					<table cellspacing="1" id="table1">
						<tr>
							<td text-align="center">아이디</td>
							<td>${id}</td>
						</tr>
						<tr align="left">
							<td>비밀번호</td>
							<td><input type="password" name="mb_pw" id="mb_pw"
								value="${mb.mb_pw}"></td>
						</tr>
						<tr>
							<td>비밀번호 확인</td>
							<td><input type="password" />&nbsp;비밀번호 확인 메게지</td>
						</tr>
						<tr>
							<td>주소</td>
							<td><input type="text" name="mb_address" id="mb_address"
								value="${mb.mb_address}" /> <input type="button" value="주소찾기" />
							</td>
						</tr>
						<tr>
							<td>상세주소</td>
							<td><input type="text" /> &nbsp;&nbsp; <input type="text" />
							</td>
						</tr>
						<tr>
							<td>프로필 사진</td>
							<td><input id="mb_profile" class="memberN" type="file"
								name="mb_profile" value="${mb.mb_profile}"
								onchange="fileChk(this)" multiple> <input type="hidden"
								id="fileCheck" value="1" name="fileCheck"></td>
						</tr>

						<tr>
							<td>이메일</td>
							<td><input type="text" name="mb_email" id="mb_email"
								value="${mb.mb_email}" /> @ <input type="text" /> &nbsp;&nbsp;
								<select>
									<option>직접입력</option>
									<option>naver.com</option>
									<option>daum.net</option>
									<option>nate.com</option>
							</select></td>
						</tr>

					</table>
				</form>
				<div id="modif">
					<button class="btn1">수정하기</button>
					<button class="btn1" type="button"
						onclick="location.href='mypage' ">돌아가기</button>

				</div>
			</div>
		</div>
</body>
<script>
	function fileChk(elem) {
		console.dir(elem);
		if (elem.value == "") {
			console.log("empty");
			$('#fileCheck').val(0); //파일 첨부 안했음
		} else {
			console.log("Notempty")
			$('#fileCheck').val(1);//파일 첨부 했음
		}
	}
</script>
</html>
