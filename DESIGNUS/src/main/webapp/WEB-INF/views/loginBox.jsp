<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>

<style>
div {
	margin: auto;
}

text {
	font-size: 17px;
}

#logoimg {
	width: 250px;
	height: 80px;
	margin-left: 220px;
	margin-top: 40px;
}

#login {
	font-size: 20px;
	text-align: center;
}

#mb_id {
	width: 250px;
	height: 40px;
}

#mb_pw {
	width: 250px;
	height: 40px;
}

.btz {
	margin-top: 30px;
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
	background-image: -moz-linear-gradient(53% 100% 90deg, rgb(230, 212, 212)
		0%, rgb(237, 237, 237) 100%);
	background-image: -webkit-gradient(linear, 53% 100%, 53% 3%, color-stop(0, rgb(230, 212,
		212)), color-stop(1, rgb(237, 237, 237)));
	background-image: -webkit-linear-gradient(90deg, rgb(230, 212, 212) 0%,
		rgb(237, 237, 237) 100%);
	background-image: -o-linear-gradient(90deg, rgb(230, 212, 212) 0%,
		rgb(237, 237, 237) 100%);
	background-image: -ms-linear-gradient(90deg, rgb(230, 212, 212) 0%,
		rgb(237, 237, 237) 100%);
	background-image: linear-gradient(90deg, rgb(212, 212, 212) 0%,
		rgb(237, 237, 237) 100%);
	width: 400px;
	height: 60px;
	border-color: rgb(230, 200, 120);
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
	font-size: 25px;
}

#haha {
	margin-top: 30px;
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
	width: 200px;
	height: 30px;
	border-color: rgb(255, 192, 86);
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

.btz:hover {
	color: white;
}

.btz:active {
	color: yellow;
}

#haha:hover {
	color: white;
}

#haha:active {
	color: yellow;
}

#loginFrmmain {
	margin-top: 30px;
	width: 600px;
	height: 400px;
}

#loginmain {
	width: 700px;
	height: 600px;
}

#joinatag {
	width: 600px;
	height: 70px;
	display: block;
	text-align: center;
}

body {
	font: 13px/20px 'Helvetica Neue', Helvetica, Arial, sans-serif;
	color: #333333;
	background: coral;
}

.signUp {
	position: relative;
	margin: 50px auto;
	width: 500px;
	padding: 33px 25px 29px;
	background: #FFFFFF;
	border-bottom: 1px solid #C4C4C4;
	border-radius: 5px;
	-webkit-box-shadow: 0 1px 5px rgba(0, 0, 0, 0.25);
	box-shadow: 0 1px 5px rgba(0, 0, 0, 0.25);
}

.signUp:before, .signUp:after {
	content: '';
	position: absolute;
	bottom: 1px;
	left: 0;
	right: 0;
	height: 10px;
	background: inherit;
	border-bottom: 1px solid #D2D2D2;
	border-radius: 4px;
}

.signUp:after {
	bottom: 3px;
	border-color: #DCDCDC;
}

.signUpTitle {
	margin: -25px -25px 25px;
	padding: 15px 25px;
	line-height: 35px;
	font-size: 26px;
	font-weight: 300;
	color: #777;
	text-align: center;
	text-shadow: 0 1px rgba(255, 255, 255, 0.75);
	background: #F7F7F7;
}

.signUpTitle:before {
	content: '';
	position: absolute;
	top: 0;
	left: 0;
	right: 0;
	height: 8px;
	background: #C4E17F;
	border-radius: 5px 5px 0 0;
	background-image: -webkit-linear-gradient(left, #C4E17F, #C4E17F 12.5%, #F7FDCA 12.5%,
		#F7FDCA 25%, #FECF71 25%, #FECF71 37.5%, #F0776C 37.5%, #F0776C 50%,
		#DB9DBE 50%, #db9CBE 62.5%, #C49CDE 62.5%, #C49CDE 75%, #669AE1 75%,
		#669AE1 87.5%, #62C2E4 87.5%, #62C2E4);
	background-image: -moz-linear-gradient(left, #c4e17f, #C4E17F 12.5%, #F7FDCA 12.5%,
		#F7FDCA 25%, #FECF71 25%, #FECF71 37.5%, #F0776C 37.5%, #F0776C 50%,
		#DB9DBE 50%, #DB9CBE 62.5%, #C49CDE 62.5%, #C49CDE 75%, #669AE1 75%,
		#669AE1 87.5%, #62C2E4 87.5%, #62C2E4);
	background-image: -o-linear-gradient(left, #C4E17F, #C4E17F 12.5%, #F7FDCC 12.5%, #F7FDCA
		25%, #FECF71 25%, #FECF71 37.5%, #F0776C 37.5%, #F0776C 50%, #DB9DBE
		50%, #DB9DBE 62.5%, #C49CDE 62.5%, #C49CDE 75%, #669AE1 75%, #669AE1
		87.5%, #62C2E4 87.5%, #62C2E4);
	background-image: linear-gradient(to right, #C4E17F, #C4E17F 12.5%, #F7FDCA 12.5%, #F7FDCA
		25%, #FECF71 25%, #FECF71 37.5%, #F0776C 37.5%, #F0776C 50%, #DB9DBE
		50%, #DB9CBE 62.5%, #c49cde 62.5%, #C49CDE 75%, #669AE1 75%, #669AE1
		87.5%, #62c2e4 87.5%, #62C2E4);
}

input {
	font-family: inherit;
	color: inherit;
	-webkit-box-sizing: border-box;
	-moz-box-sizing: border-box;
	box-sizing: border-box;
}

.signUpInput {
	width: 100%;
	height: 50px;
	margin-bottom: 25px;
	padding: 0 15px 2px;
	font-size: 17px;
	background: white;
	border: 2px solid #EBEBEB;
	border-radius: 4px;
	-webkit-box-shadow: inset 0 -2px #EBEBEB;
	box-shadow: inset 0 -2px #EBEBEB;
}

.signUpInput:focus {
	border-color: #62C2E4;
	outline: none;
	-webkit-box-shadow: inset 0 -2px #62C2E4;
	box-shadow: inset 0 -2px #62C2E4;
}

.lt-ie9 .signUpInput {
	line-height: 48px;
}

.signUpButton {
	position: relative;
	vertical-align: top;
	width: 100%;
	height: 54px;
	padding: 0;
	font-size: 22px;
	color: white;
	text-align: center;
	text-shadow: 0 1px 2px rgba(0, 0, 0, 0.25);
	background: #F0776C;
	border: 0;
	border-bottom: 2px solid #D76B60;
	border-radius: 5px;
	cursor: pointer;
	-webkit-box-shadow: inset 0 -2px #D76B60;
	box-shadow: inset 0 -2px #D76B60;
}

.signUpButton:active {
	top: 1px;
	outline: none;
	-webkit-box-shadow: none;
	box-shadow: none;
}

:-moz-placeholder {
	color: #AAAAAA;
	font-weight: 300;
}

::-moz-placeholder {
	color: #AAAAAA;
	opacity: 1;
	font-weight: 300;
}

::-webkit-input-placeholder {
	color: #AAAAAA;
	font-weight: 300;
}

:-ms-input-placeholder {
	color: #AAAAAA;
	font-weight: 300;
}

::-moz-focus-inner {
	border: 0;
	padding: 0;
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
</style>
<script type="text/javascript">
var aa='${msg}';
console.log(aa);
if(aa=="zzz"){
	alert("댓글 작성을 하시려면 로그인이 필요합니다.");	
}
var aa='${msg1}';
console.log(aa);
if(aa=="zzzz"){
	alert("해당아이디는 정지 상태 입니다.");	
}

var bb='${mmssgg}';
console.log(bb);
if(bb=="lee"){
	alert("로그인이 필요한 서비스입니다. ");	
}

var gg='${msg2}';
if(gg == 'nono'){
	swal(" 비밀번호가 틀렸습니다. ");
}
var jj='${msg6}';
console.log(jj);
if(jj == 'dddd'){
	alert(" 회원님은 작가 심사중입니다.");
}

</script>
</head>
<body>
	<div id="loginmain">

		<div id="loginFrmmain">

			<form action="login" name="loginFrm" method="post" class="signUp">
				<div id="login">
					<div align="center">
						<a href="home"><img src="resources/images/logo.png"
							width="250px" height="80px"></a><br />
						<br />
						<br />
						<br />
					</div>
					<table id="idpw" align="center">
						<tr>
							<th>아이디</th>
							<th><input type="text" name="mb_id" id="mb_id"
								class="signUpInput" placeholder="Type your user id" autofocus
								required /></th>
						</tr>
						<tr>
							<th>비밀번호</th>
							<th><input type="password" name="mb_pw" id="mb_pw"
								class="signUpInput" placeholder="Type your user password"
								autofocus required /></th>
						</tr>
					</table>

					<div id="mfind">
						<br />
						<br /> <a href="joinfrm">회원가입</a> &nbsp;&nbsp;&nbsp;&nbsp; <a
							href="memberfind">아이디 | 비빌번호 찾기</a><br />
						<br />
					</div>
					<div id="loginbtz">
						<button class="signUpButton" id="login1">로그인</button>
					</div>
				</div>
			</form>

		</div>
	</div>
	
</body>
<script> 




</script>

</html>