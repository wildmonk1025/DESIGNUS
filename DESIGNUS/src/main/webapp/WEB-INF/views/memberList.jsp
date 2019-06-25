<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>memberList.jsp</title>
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
#customers {
	font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
	width: 400px;
	border-collapse: collapse;
}

#customers td, #customers th {
	font-size: 1em;
	border: 1px solid #98bf21;
	padding: 3px 7px 2px 7px;
}

#customers th {
	font-size: 1.1em;
	text-align: left;
	padding-top: 5px;
	padding-bottom: 4px;
	background-color: #A7C942;
	color: #ffffff;
}

#customers tr.alt td {
	color: #000000;
	background-color: #EAF2D3;
}

body {
	margin: auto;
	width: 1520px;
	height: auto;
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

#adminopt {
	float: left;
	align-content: center;
	width: 1216px;
	height: 500px;
}

.opt {
	padding: inherit;
	margin: auto;
	margin-top: 5px;
	width: 1000px;
	height: 450px;
	background-color: white;
}

#declarelist {
	width: 990px;
	height: 325px;
	overflow-y: scroll;
}

.btnArray {
	float: left;
	width: 331px;
	height: auto;
	text-align: center;
}

.btn2 {
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

a:active {
	text-decoration: none;
	color: black;
}

a:visited {
	text-decoration: none;
	color: black;
}

a:link {
	text-decoration: none;
	color: black;
}

a:hover {
	text-decoration: none;
	color: black;
}

.best {
	border: 1px solid black;
	color: black;
	display: inline;
	float: left;
	width: 400px;
	heigth: 55px;
	display: inline;
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
	<div id="adminopt">
		<div class="opt"><br/><br/>
			<h3
				style="text-align: center; font-size: 25px; background-color: orange;">회원관리</h3>
			<div class="btnArray" id="normal">
				<button id="Lbtn1" class="btn2">일반회원 리스트</button>
			</div>
			<div class="btnArray" id="writer">
				<button id="Lbtn2" class="btn2">작가회원 리스트</button>
			</div>
			<div class="btnArray" id="blkmember">
				<button id="Lbtn3" class="btn2">블랙회원 리스트</button>
			</div>
			<hr>
			<br />
			<br />
			<br />
			<br />
			<div id="declarelist">
				<div id="ListView1"></div>
				<div id="ListView2" class="view"></div>
				<div id="ListView3" class="view"></div>

			</div>
		</div>
	</div>
</body>
<script>
	$("#Lbtn1").click(function() {
		$("#ListView1").css("display", "inline");
		$("#ListView2").css("display", "none");
		$("#ListView3").css("display", "none");
		$(".paging1").css("display", "inline");
		$(".paging2").css("display", "none");
		$(".paging3").css("display", "none");
	});
	$("#Lbtn2").click(function() {
		$("#ListView1").css("display", "none");
		$("#ListView2").css("display", "inline");
		$("#ListView3").css("display", "none");
		$(".paging1").css("display", "none");
		$(".paging2").css("display", "inline");
		$(".paging3").css("display", "none");
	});
	$("#Lbtn3").click(function() {
		$("#ListView1").css("display", "none");
		$("#ListView2").css("display", "none");
		$("#ListView3").css("display", "inline");
		$(".paging1").css("display", "none");
		$(".paging2").css("display", "none");
		$(".paging3").css("display", "inline");
	});
	$(document).ready(
			function() {
				$.ajax({
					url : 'memberseclist',
					type : 'post',
					contentType : "application/json; charset=utf-8;",
					dataType : 'json',
					//contentType:'application/json',
					success : function(data) {
						var result = "";
						console.dir(data);
						console.log("성공");

						for ( var i in data) {
							result += "<div class='best'>"
									+ "<table id='customers'>"
									+ "<tr class='alt'><td>"
									+ "<a href='memberListMM?mb_id="
									+ data[i].mb_id + "'>" + "아이디:"
									+ data[i].mb_id + "</td></tr>" + "<tr><td>"
									+ "이름:" + data[i].mb_name + "</td></tr>"
									+ "<tr><td>" + "회원등급:" + data[i].mb_grade
									+ "</td></tr>" + "<tr><td>" + "경고횟수:"
									+ data[i].mb_ccnt + "</td></tr>"
									+ "<tr><td>" + "</a>" + "</table>"
									+ "</div>";
						}
						$("#ListView1").html(result);
					},
					error : function(error) {
						console.log("실패");
						console.log(error);
					}
				});
			});
	$(document).ready(
			function() {
				$.ajax({
					url : 'memberAuthorlist',
					type : 'post',
					contentType : "application/json; charset=utf-8;",
					dataType : 'json',
					//contentType:'application/json',
					success : function(data) {
						var result = "";
						console.dir(data);
						console.log("성공");

						for ( var i in data) {
							result += "<div class='best'>"
									+ "<table id='customers'>"
									+ "<tr class='alt'><td>"
									+ "<a href='memberListMM?mb_id="
									+ data[i].mb_id + "'>" + "아이디:"
									+ data[i].mb_id + "</td></tr>" + "<tr><td>"
									+ "이름:" + data[i].mb_name + "</td></tr>"
									+ "<tr><td>" + "회원등급:" + data[i].mb_grade
									+ "</td></tr>" + "<tr><td>" + "경고횟수:"
									+ data[i].mb_ccnt + "</td></tr>"
									+ "<tr><td>" + "</a>" + "</table>"
									+ "</div>";
						}
						$("#ListView2").html(result);
					},
					error : function(error) {
						console.log("실패");
						console.log(error);
					}
				});
			});
	$(document).ready(
			function() {
				$.ajax({
					url : 'memberBlacklist',
					type : 'post',
					contentType : "application/json; charset=utf-8;",
					dataType : 'json',
					//contentType:'application/json',
					success : function(data) {
						var result = "";
						console.dir(data);
						console.log("성공");

						for ( var i in data) {
							result += "<div class='best'>"
									+ "<table id='customers'>"
									+ "<tr class='alt'><td>"
									+ "<a href='memberListMM?mb_id="
									+ data[i].mb_id + "'>" + "아이디:"
									+ data[i].mb_id + "</td></tr>" + "<tr><td>"
									+ "이름:" + data[i].mb_name + "</td></tr>"
									+ "<tr><td>" + "회원등급:" + data[i].mb_grade
									+ "</td></tr>" + "<tr><td>" + "경고횟수:"
									+ data[i].mb_ccnt + "</td></tr>"
									+ "<tr><td>" + "</a>" + "</table>"
									+ "</div>";
						}
						$("#ListView3").html(result);
					},
					error : function(error) {
						console.log("실패");
						console.log(error);
					}
				});
			});
</script>
</html>
