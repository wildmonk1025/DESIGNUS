<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<style>
#text1 {
	position: absolute;
	top: 50px;
	left: 100px;
}

#pwtext1 {
	position: absolute;
	top: 30px;
	left: 100px;
}

#pwlist {
	width: 600px;
	height: 250px;
	display: none;
	border: 1px solid black;
	position: absolute;
	top: 517px;
	left: 659px;
}

#list {
	border: 1px solid black;
	width: 600px;
	height: 250px;
	position: absolute;
	top: 100px;
	left: -50px;
}

#logoimg {
	width: 250px;
	height: 100px;
	position: relative;
	top: 300px;
	left: 800px;
}

#idfind {
	position: relative;
	top: 310px;
	left: 700px;
}

.size {
	background-color: #FFCA6C;
	color: white;
	width: 250px;
	height: 100px;
}

#btz {
	position: relative;
	top: -27px;
	left: 280px;
}

#btz2 {
	position: relative;
	top: -27px;
	left: 280px;
}

#idf {
	width: 250;
	height: 40;
	position: relative;
	top: 120;
	left: -15px;
}

#pwf {
	width: 250;
	height: 40;
	position: relative;
	top: 120;
	left: -15px;
}

#idhome {
	position: relative;
	top: 130;
	left: 247px;
}

#pwhome {
	position: relative;
	top: 140;
	left: 247px;
}

#articleView_layer #bg_layer {
	position: absolute;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
	background: #000;
	opacity: .5;
	filter: alpha(opacity = 50);
	z-index: 100
}

#contents_layer {
	position: absolute;
	top: 40%;
	left: 40%;
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
	overflow: scroll
}

#articleView_layer {
	display: none;
	position: fixed;
	position: absolute;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%
}

#articleView_layer.open {
	display: block;
	color: red
}

#idfindd {
	display: none;
}

#idfindd {
	font-size: 35px;
	position: relative;
	top: 350;
	left: 700px;
}
</style>
</head>
<body>
	<a href="home"><img id="logoimg" src="img/logo"></a>
	<div id="full">
		<div id="idfind">
			<input class="size" id="revauctionbtn" type="button" value="아이디 찾기">
			<input class="size" id="auctionbtn" type="button" value="비밀번호 찾기">
			<br> <br>
			<div id="list">
				<div id="text1" align="center">
					<table>
						<tr>
							<th>이름</th>
							<td><input type="text" name="mb_name"></td>
						</tr>
						<tr>
							<th>이메일</th>
							<td><input type="text" name="mb_email"></td>
						</tr>
						<tr>
							<td><input id="btz2" type="button" value="이메일 인증"
								onclick="emailcheck()"></td>
						</tr>
					</table>
				</div>
				<div id="text2" align="center">
					<button id="idf" onclick="AjId('mb_email')">아이디 찾기</button>
				</div>
				<div id="bestlist">
					<a id="idhome" href="home">홈으로가기</a>
				</div>
			</div>
		</div>

		<div id="pwlist">
			<div id="pwtext1" align="center">
				<table>
					<tr>
						<th>아이디</th>
						<td><input type="text" name="mb_id"></td>
					</tr>
					<tr>
						<th>이름</th>
						<td><input type="text" name="mb_name"></td>
					</tr>
					<tr>
						<th>이메일</th>
						<td><input type="text" name="mb_email"></td>
					</tr>
					<tr>
						<td><input id="btz" type="button" value="이메일 인증"
							onclick="emailcheck()"></td>
					</tr>
				</table>
			</div>
			<div id="pwtext2" align="center">
				<button id="pwf" onclick="Aj('mb_id')">비밀번호 찾기</button>
			</div>
			<div id="pwbestlist">
				<a id="pwhome" href="home">홈으로가기</a>
			</div>
		</div>


	</div>
	<!--아이디 명시-->
	<div id="idfindd">
		회원님의 아이디는
		<!--이엘문 찍기-->
	</div>

	<!--새로운 비밀번호 입력 표시 라이트 박스 창-->
	<div id="articleView_layer">
		<div id="bg_layer"></div>
		<div id="contents_layer"></div>
	</div>
</body>
<script>
	$('#idf').click(function() {
		$("#text1").css("display", "none");
		$("#idf").css("display", "none");
		$('#idfindd').css("display", "inline");
	});
	function Aj(email) {

		//ajax 실행문 작성
	}
	function Aj(id) {
		$('#articleView_layer').addClass('open');
		//ajax 실행문 작성
	}

	$("#revauctionbtn").click(function() {
		$("#list").css("display", "inline");
		$("#pwlist").css("display", "none");
	$("#auctionbtn").click(function() {
		$("#list").css("display", "none");
		$("#pwlist").css("display", "inline");
	});
	var $layerWindow = $('#articleView_layer');
	$layerWindow.find('#bg_layer').on('mousedown', function(event) {
		$layerWindow.removeClass('open');

	});//function End
	$(document).keydown(function(event) {
		console.log(event);
		if(event.keyCode != 27) return;
		if($layerWindow.hasClass('open')){
		      $layerWindow.removeClass('open');
		      
		   }
		   
		});
</script>
</html>