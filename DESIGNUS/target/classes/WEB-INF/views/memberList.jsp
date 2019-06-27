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
	box-shadow: 3px 0px 8px -3px rgba(0, 0, 0, 0.56);
}

ul {
	list-style: none;
}

#middle {
	width: 1520px;
	height: auto;
	margin-top: 50px;
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
	margin-top: 5px;
	width: 1200px;
	height: 980px;
	overflow: auto;
	border: 1px solid #f0f0f0;
	border-radius: 5px;
	box-shadow: 3px 0px 8px -3px rgba(0,0,0,0.56);
}

.opt:hover {
	transform: scale(1.02);
	transition-duration: 1s;
}


#declarelist {
	margin-top: 10px;
	width: 100%;
	height: 980px;
}

.btnArray {
	margin-top:20px;
	margin-left: 30px;
	float: left;
	width: 340px;
	height: 70px;
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
	color: blue;
}

a:visited {
	text-decoration: none;
	color: blue;
}

a:link {
	text-decoration: none;
	color: blue;
}

a:hover {
	text-decoration: none;
	color: blue;
}

.best {
	float: left;
	width: 1100px;
	height: auto;
	box-shadow: 3px 0px 8px -3px rgba(0,0,0,0.56);
	margin:5px 5px 5px 5px;
}

.object {
	background-color: #c8e7ea;
	width: 1100px;
}

.object td {
	width: 280px;
	font-size: 23px;
	text-align: center;
}

.contents {
	font-size: 18px;
	font-weight: 600;
	width: 1100px;
}

.contents td {
	width: 280px;
	height: 50px;
	font-size: 18px;
	text-align: center;
}

#ListView2 {
	display: none; 
}

#ListView3 {
	display: none; 
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
			<ul>
				<jsp:include page="admininclud.jsp"></jsp:include>
			</ul>
		</div>
		<div id="adminopt">
			<div class="opt">
				<h3 style="text-align: center; font-size: 30px;">가입회원 리스트</h3>
				<div class="btnArray" id="normal">
					<button id="Lbtn1" class="btn2">일반회원 리스트</button>
				</div>
				<div class="btnArray" id="writer">
					<button id="Lbtn2" class="btn2">작가회원 리스트</button>
				</div>
				<div class="btnArray" id="blkmember">
					<button id="Lbtn3" class="btn2">블랙회원 리스트</button>
				</div>
				<div id="declarelist">
					<div id="ListView1"></div>
					<div id="ListView2"></div>
					<div id="ListView3"></div>

				</div>
			</div>
		</div>
		<div id="footer">
			<jsp:include page="footer.jsp"></jsp:include>
		</div>
	</div>
</body>
<script>
	$("#Lbtn1").click(function() {
		$("#ListView1").css("display", "block");
		$("#ListView2").css("display", "none");
		$("#ListView3").css("display", "none");

	});
	$("#Lbtn2").click(function() {
		$("#ListView1").css("display", "none");
		$("#ListView2").css("display", "block");
		$("#ListView3").css("display", "none");

	});
	$("#Lbtn3").click(function() {
		$("#ListView1").css("display", "none");
		$("#ListView2").css("display", "none");
		$("#ListView3").css("display", "block");
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
						var result = "<div id='best'><table><tr class='object'><td>아이디</td><td>이름</td><td>회원등급</td><td>경고횟수</td><td>상세보기</td></tr>";
						console.log("성공");
						
						for(var i in data) {
							result += "<tr class='contents'><td>"+data[i].mb_id+"</td><td>"
									+ data[i].mb_name + "</td><td>";
									var test = data[i].mb_grade
									switch(test) {
									case 'N':
										result+="일반</td><td>";
										break;
									case 'W':
										result+="작가</td><td>"
										break;
									case 'S':
										result+="임시</td><td>"
										break;
									case 'X':
										result+="전환</td><td>"
										break;
									}
									result += data[i].mb_ccnt + "</td><td>"
									+ "<a href='memberListMM?mb_id=" + data[i].mb_id + "'>클릭</a></td></tr>";
						}
						result+="</table></div>";
						
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
