<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>아이디, 비밀번호 찾기 페이지</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<style>
div {
	margin: auto;
}

.button {
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
	background-image: -moz-linear-gradient(53% 100% 90deg, rgb(255, 225, 133)
		0%, rgb(255, 239, 191) 100%);
	background-image: -webkit-gradient(linear, 53% 100%, 53% 3%, color-stop(0, rgb(255, 225,
		133)), color-stop(1, rgb(255, 239, 191)));
	background-image: -webkit-linear-gradient(90deg, rgb(255, 225, 133) 0%,
		rgb(255, 239, 191) 100%);
	background-image: -o-linear-gradient(90deg, rgb(255, 225, 133) 0%,
		rgb(255, 239, 191) 100%);
	background-image: -ms-linear-gradient(90deg, rgb(255, 225, 133) 0%,
		rgb(255, 239, 191) 100%);
	background-image: linear-gradient(90deg, rgb(255, 225, 133) 0%,
		rgb(255, 239, 191) 100%);
	width: 120px;
	height: 30px;
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
}

button:hover {
	color: white;
}

#text1 {
	width: 330px;
	height: 100px;
	text-align: center;
	display: block;
}

#pwtext1 {
	width: 330px;
	height: 100px;
	text-align: center;
	display: block;
}

#pwlist {
	text-align: center;
	width: 400px;
	height: 130px;
	display: none;
}

#list {
	text-align: center;
	width: 400px;
	height: 130px;
}

#logoimg {
	width: 250px;
	height: 80px;
}

.size {
	background-color: #FFCA6C;
	color: white;
}

#idf {
	width: 250;
	height: 40;
}

#pwf {
	width: 250;
	height: 40;
}

#articleView_layer #bg_layer {
	width: 100%;
	height: 100%;
	background: #000;
	opacity: .5;
	filter: alpha(opacity = 50);
	z-index: 100;
	display: none;
}

#contents_layer {
	width: 400px;
	height: 400px;
	margin: -150px 0 0 -194px;
	padding: 28px 28px 0 28px;
	border: 2px solid #555;
	background: #fff;
	font-size: 12px;
	z-index: 200;
	color: #767676;
	line-height: normal;
	white-space: normal;
	overflow: scroll;
	display: none;
}

#articleView_layer {
	position: fixed;
	width: 100%;
	height: 100%
}

#articleView_layer.open {
	display: block;
	color: red;
}

#idfindd {
	display: none;
	font-size: 25px;
	margin: auto;
}

#findcheckmain {
	width: 600px;
	height: 700px;
}

#logoimgdiv {
	width: 230px;
	height: 100px;
	padding: 10px 180px;
}

#full {
	width: 500px;
	height: 300px;
	text-align: center;
}

#revauctionbtn, #auctionbtn {
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

#bestlist, #pwbestlist {
	width: 400px;
	height: 50px;
	float: left;
	text-align: center;
}

#buttondiv {
	width: 430px;
	height: auto;
	text-align: center;
	display: block;
}

#text2 {
	width: 400px;
	height: 50px;
	display: block;
	text-align: center;
}

#pwtext2 {
	width: 400px;
	height: 50px;
	display: block;
	text-align: center;
}

#revauctionbtn:hover {
	color: white;
}

#auctionbtn:hover {
	color: white;
}

#btz2:hover {
	color: white;
}
body {
   font: 13px/20px 'Helvetica Neue', Helvetica, Arial, sans-serif;
   color: #333333;
    background: coral;
}

.signUp {
   position: relative;
   margin: 50px auto;
   height:400px;
   width: 550px;
   padding: 33px 25px 29px;
   background: #FFFFFF;
   border-bottom: 1px solid #C4C4C4;
   border-radius: 5px;
   -webkit-box-shadow: 0 1px 5px rgba(0, 0, 0, 0.25);
   box-shadow: 0 1px 5px rgba(0, 0, 0, 0.25);
}

.signUp:before,
.signUp:after {
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
   background-image: -webkit-linear-gradient(left, #C4E17F, #C4E17F 12.5%, #F7FDCA 12.5%, #F7FDCA 25%, #FECF71 25%, #FECF71 37.5%, #F0776C 37.5%, #F0776C 50%, #DB9DBE 50%, #db9CBE 62.5%, #C49CDE 62.5%, #C49CDE 75%, #669AE1 75%, #669AE1 87.5%, #62C2E4 87.5%, #62C2E4);
   background-image: -moz-linear-gradient(left, #c4e17f, #C4E17F 12.5%, #F7FDCA 12.5%, #F7FDCA 25%, #FECF71 25%, #FECF71 37.5%, #F0776C 37.5%, #F0776C 50%, #DB9DBE 50%, #DB9CBE 62.5%, #C49CDE 62.5%, #C49CDE 75%, #669AE1 75%, #669AE1 87.5%, #62C2E4 87.5%, #62C2E4);
   background-image: -o-linear-gradient(left, #C4E17F, #C4E17F 12.5%, #F7FDCC 12.5%, #F7FDCA 25%, #FECF71 25%, #FECF71 37.5%, #F0776C 37.5%, #F0776C 50%, #DB9DBE 50%, #DB9DBE 62.5%, #C49CDE 62.5%, #C49CDE 75%, #669AE1 75%, #669AE1 87.5%, #62C2E4 87.5%, #62C2E4);
   background-image: linear-gradient(to right, #C4E17F, #C4E17F 12.5%, #F7FDCA 12.5%, #F7FDCA 25%, #FECF71 25%, #FECF71 37.5%, #F0776C 37.5%, #F0776C 50%, #DB9DBE 50%, #DB9CBE 62.5%, #c49cde 62.5%, #C49CDE 75%, #669AE1 75%, #669AE1 87.5%, #62c2e4 87.5%, #62C2E4);
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
</style>
</head>
<body>



	<div id="findcheckmain">
		<div id="logoimgdiv">
			<a href="home"><img id="logoimg" src="img/logo"></a>
		</div>
		<form action="memberidfind"  class="signUp" id="signupForm" method="post">

			<div id="idfind">
				<div id="buttondiv">
					<input class="size" id="revauctionbtn" type="button" value="아이디 찾기"
					 onclick="location.href='memberFind'">
					<input class="size" id="auctionbtn" type="button" value="비밀번호 찾기"
					 onclick="location.href='memberpwFind'">
				</div>
				<br> <br>
				<div id="list">
					<div id="text1" align="center">
						<table>
							<tr>
								<th>이름</th>
								<td><input type="text" id="mb_name" name="mb_name"
									class="signUpInput" placeholder="Type your username" autofocus required></td>
							</tr>
							<tr>
								<th>이메일</th>
								<td><input type="text" id="mb_email" name="mb_email"
									class="signUpInput" placeholder="Type your email" autofocus required></td>
									
							</tr>
						</table>

					</div>
					<div id="text2" align="center"><br/><br/><br/><br/>
						<button id="idf" class="button">아이디 찾기</button>
						<!-- onclick="AjId()" -->
					</div>
					<div id="idfindd">
						회원님의 아이디는
						<!--이엘문 찍기-->
					</div>
					<div id="bestlist"><br/><br/><br/><br/>
						<a id="idhome" href="home">홈으로가기</a>
					</div>
					<br/><br/><br/><br/><br/><p>${findid}</p>
				</div>
			</div>
		</form>
	
	</div>
	     
	<!--아이디 명시-->


	<!--새로운 비밀번호 입력 표시 라이트 박스 창-->
	<div id="articleView_layer">
		<div id="bg_layer"></div>
		<div id="contents_layer"></div>
	</div>
</body>
<script>

</script>
</html>