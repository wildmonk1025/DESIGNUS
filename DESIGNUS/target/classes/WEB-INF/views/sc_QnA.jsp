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
	border: 1px solid gray;
	margin-top: 50px;
	height: 700px;
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
	border-bottom: 1px solid orange;
	width: 432px;
	height: 50px;
	padding-top: 5px;
	margin: 1px;
	list-style: none;
	color: white;
	width: 432px;
	height: 50px;
	padding-top: 5px;
	margin: 1px;
	list-style: none;
	color: white;
}

.menuLink:hover {
	color: coral;
}

.menuLink:active {
	color: red;
}

#h, #s {
	float: left;
}

#s {
	color: red;
	float: left;
}

#list {
	width: 1302px;
	height: 450px;
	margin-top: 70px;
}

#l1 {
	padding: 15px;
	height: 420px;
	float: left;
}

.b1 {
	font-size: 25px;
	background-color: white;
	border: 1px solid white;
	margin: 10px;
	padding: 15px;
}

.b1:hover {
	color: red;
}

.b1:active {
	color: orange;
}

#questionm {
	width: 1330px;
	height: 80px;
	float: left;
	margin-top: 20px;
	margin-left: 50px;
}

#selectt {
	text-align: center;
}

#Sctext {
	width: 1300px;
	height: 80px;
	float: left;
	margin-left: 100px;
	margin-top: 30px;
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

#buy {
	float: left;
	height: 450px;
	width: 1080px;
	text-align: left;
}

#sell {
	float: left;
	height: 450px;
	width: 1080px;
	text-align: left;
	display: none;
}

#spon {
	float: left;
	height: 450px;
	width: 1080px;
	text-align: left;
	display: none;
}

#mypage2 {
	float: left;
	height: 450px;
	width: 1080px;
	text-align: left;
	display: none;
}

#other {
	float: left;
	height: 450px;
	width: 1080px;
	text-align: left;
	display: none;
}

ul {
	list-style: none;
}

.cl {
	cursor: pointer;
	border: none;
	width: 1080px;
	background-color: #f9e6e0;
	font-size: 17px;
	color: gray;
	padding-top: 7px;
	text-align: left;
	padding-top: 7px;
}

.hide {
	margin-top: 3px;
	display: none;
}

.ul {
	border-bottom: 0.5px solid white;
	background-color: #f9e6e0;
	height: 40px;
}

.li {
	height: 200px;
	width: 1078px;
	border: 1px solid #f9e6e0;
	font-size: 20px;
	position: absolute;
	background-color: white;
	color: gray;
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
				<li class="questionmenu"><a class="menuLink" href="scqna"
					style="color: coral;">QnA</a></li>
				<li class="questionmenu"><a class="menuLink" href="scdeclare">신고하기</a></li>
			</ul>

		</div>
		<div id="mainss">
			<div id="list">
				<div id="l1">
					<button class="b1" id="btn1" onclick="buy('경매')">경매</button>
					<br />
					<button class="b1" id="btn2" onclick="sell('역경매')">역경매</button>
					<br />
					<button class="b1" id="btn3" onclick="spon('후원')">후원</button>
					<br />
					<button class="b1" id="btn4" onclick="mypage('마이페이지')">마이페이지</button>
					<br />
					<button class="b1" id="btn5" onclick="other('기타')">기타</button>
				</div>
				<div id="selectt">
					<div id="buy"></div>
					<div id="sell"></div>
					<div id="spon"></div>
					<div id="mypage2"></div>
					<div id="other"></div>

				</div>
			</div>

		</div>
	</div>

	<div id="footercheck">
		<hr style="width: 100%; border: 2px solid coral; align: center;">
		<jsp:include page="footer.jsp"></jsp:include></div>
	-
</body>
<script>
	/*
	 function qnalistajaxbuy(url, position){
	 $.ajax({
	 url : url,
	 dataType : "json",
	 success : function(data){
	 console.log(data);
	 }
	 });//end ajax
	 } 
	 */

	$("#btn1").click(function() {
		$("#buy").css("display", "inline");
		$("#sell").css("display", "none");
		$("#spon").css("display", "none");
		$("#mypage2").css("display", "none");
		$("#other").css("display", "none");
	});
	$("#btn2").click(function() {
		$("#sell").css("display", "inline");
		$("#buy").css("display", "none");
		$("#spon").css("display", "none");
		$("#mypage2").css("display", "none");
		$("#other").css("display", "none");
	});
	$("#btn3").click(function() {
		$("#spon").css("display", "inline");
		$("#mypage2").css("display", "none");
		$("#buy").css("display", "none");
		$("#sell").css("display", "none");
		$("#other").css("display", "none");
	});
	$("#btn4").click(function() {
		$("#other").css("display", "none");
		$("#buy").css("display", "none");
		$("#sell").css("display", "none");
		$("#spon").css("display", "none");
		$("#mypage2").css("display", "inline");
	});
	$("#btn5").click(function() {
		$("#other").css("display", "inline");
		$("#buy").css("display", "none");
		$("#sell").css("display", "none");
		$("#spon").css("display", "none");
		$("#mypage2").css("display", "none");
	});

	function buy(even) {
		var form = {
			qna_kind : even
		}
		var cub = "";
		$
				.ajax({
					url : 'qnaselect',
					type : 'post',
					data : JSON.stringify(form),
					contentType : "application/json; charset=utf-8",
					dataType : 'json',
					success : function(data) {
						for (var i = 0; i < data.length; i++) {
							cub += "<ul class='ul'>"
									+ "<li class='list'>"
									+ "<button class='cl'>"
									+ data[i].qna_q
									+ "</button>"
									+ "<ul class='hide'>"
									+ "<li>"
									+ "<div class='li' style='border:2px solid #f4cfc3';>"
									+ data[i].qna_a + "</div>" + "</li>"
									+ "</ul>" + "</li>" + "</ul>";
							$('#buy').html(cub);
						}
						$(document).ready(function() {
							$(".cl").click(function() {
								$(this).next("ul").toggleClass("hide");
							});
						});
					},
					error : function(error) {
						alert('점검중입니다.');
						console.log(error);
					}

				});

	}
	function sell(even) {
		var form = {
			qna_kind : even
		}
		var cub = "";
		$
				.ajax({
					url : 'qnaselect',
					type : 'post',
					data : JSON.stringify(form),
					contentType : "application/json; charset=utf-8",
					dataType : 'json',
					success : function(data) {
						for (var i = 0; i < data.length; i++) {
							cub += "<ul class='ul'>"
									+ "<li class='list'>"
									+ "<button class='cl'>"
									+ data[i].qna_q
									+ "</button>"
									+ "<ul class='hide'>"
									+ "<li>"
									+ "<div class='li' style='border:2px solid #f4cfc3';>"
									+ data[i].qna_a + "</div>" + "</li>"
									+ "</ul>" + "</li>" + "</ul>";
							$('#sell').html(cub);
						}
						$(document).ready(function() {
							$(".cl").click(function() {
								$(this).next("ul").toggleClass("hide");
							});
						});
					},
					error : function(error) {
						alert('점검중입니다.');
						console.log(error);
					}

				});

	}
	function spon(even) {
		var form = {
			qna_kind : even
		}
		var cub = "";
		$
				.ajax({
					url : 'qnaselect',
					type : 'post',
					data : JSON.stringify(form),
					contentType : "application/json; charset=utf-8",
					dataType : 'json',
					success : function(data) {
						for (var i = 0; i < data.length; i++) {
							cub += "<ul class='ul'>"
									+ "<li class='list'>"
									+ "<button class='cl'>"
									+ data[i].qna_q
									+ "</button>"
									+ "<ul class='hide'>"
									+ "<li>"
									+ "<div class='li' style='border:2px solid #f4cfc3';>"
									+ data[i].qna_a + "</div>" + "</li>"
									+ "</ul>" + "</li>" + "</ul>";
							$('#spon').html(cub);
						}
						$(document).ready(function() {
							$(".cl").click(function() {
								$(this).next("ul").toggleClass("hide");
							});
						});
					},
					error : function(error) {
						alert('점검중입니다.');
						console.log(error);
					}

				});

	}
	function mypage(even) {
		var form = {
			qna_kind : even
		}
		var cub = "";
		$
				.ajax({
					url : 'qnaselect',
					type : 'post',
					data : JSON.stringify(form),
					contentType : "application/json; charset=utf-8",
					dataType : 'json',
					success : function(data) {
						for (var i = 0; i < data.length; i++) {
							cub += "<ul class='ul'>"
									+ "<li class='list'>"
									+ "<button class='cl'>"
									+ data[i].qna_q
									+ "</button>"
									+ "<ul class='hide'>"
									+ "<li>"
									+ "<div class='li' style='border:2px solid #f4cfc3';>"
									+ data[i].qna_a + "</div>" + "</li>"
									+ "</ul>" + "</li>" + "</ul>";
							$('#mypage2').html(cub);
						}
						$(document).ready(function() {
							$(".cl").click(function() {
								$(this).next("ul").toggleClass("hide");
							});
						});
					},
					error : function(error) {
						alert('점검중입니다.');
						console.log(error);
					}

				});

	}
	function other(even) {
		var form = {
			qna_kind : even
		}
		var cub = "";
		$
				.ajax({
					url : 'qnaselect',
					type : 'post',
					data : JSON.stringify(form),
					contentType : "application/json; charset=utf-8",
					dataType : 'json',
					success : function(data) {
						for (var i = 0; i < data.length; i++) {
							cub += "<ul class='ul'>"
									+ "<li class='list'>"
									+ "<button class='cl'>"
									+ data[i].qna_q
									+ "</button>"
									+ "<ul class='hide'>"
									+ "<li>"
									+ "<div class='li' style=border:2px solid #f4cfc3';>"
									+ data[i].qna_a + "</div>" + "</li>"
									+ "</ul>" + "</li>" + "</ul>";
							$('#other').html(cub);
						}
						$(document).ready(function() {
							$(".cl").click(function() {
								$(this).next("ul").toggleClass("hide");
							});
						});
					},
					error : function(error) {
						alert('점검중입니다.');
						console.log(error);
					}

				});

	}
</script>
</html>