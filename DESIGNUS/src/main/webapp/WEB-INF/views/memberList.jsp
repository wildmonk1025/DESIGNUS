<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>memberList.jsp</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
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

::-webkit-scrollbar-button:start:decrement, ::-webkit-scrollbar-button:end:increment
	{
	width: 0px;
	height: 0px;
	background: coral;
}

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
	margin-top: 60px;
}

#adminmenu {
	float: left;
	width: 300px;
	height: 500px;
}

#btnarr {
	margin: auto;
	width: 1030px;
	height: 80px;
}

#adminopt {
	float: left;
	align-content: center;
	width: 1216px;
	height: 500px;
}

.opt {
	width: 1200px;
	height: 980px;
/* 	overflow: auto; */
	border: 1px solid #f0f0f0;
	border-radius: 5px;
	box-shadow: 3px 0px 8px -3px rgba(0, 0, 0, 0.56);
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
	margin-top: 20px;
	margin: auto; float : left;
	width: 340px;
	height: 70px;
	text-align: center;
	float: left;
}

.btn2 {
	background-color: #dceefa;
	-moz-border-radius: 5px;
	-webkit-border-radius: 5px;
	border-radius: 5px;
	border: 1px solid #4e6096;
	display: inline-block;
	cursor: pointer;
	color: black;
	font-family: Arial;
	font-size: 17px;
	padding: 15px 38px;
	text-decoration: none;
	text-shadow: 0px 1px 0px #283966;
}

.btn2:hover {
	background-color: #476e9e;
	color: white;
}

.btn2:active {
	position: relative;
	top: 1px;
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

#best {
	width: 700px;
	margin: auto;
	height: auto;
}

.object {
	background-color: #dceefa;
	font-weight: 600;
	width: 1100px;
}

.object td {
	width: 280px;
	font-size: 23px;
	text-align: center;
}

.contents {
	font-size: 18px;
	
	width: 1100px;
}

.contents td {
	width: 280px;
	height: 50px;
	font-size: 18px;
	text-align: center;
}


#ListView1 {

	margin: auto;
	width: 700px;
	height: 800px;
	overflow: auto;
	
}

#ListView2 {
	
	margin: auto;
	width: 700px;
	height: 800px;
	overflow: auto;
	display: none;
}

#ListView3 {

	margin: auto;
	width: 700px;
	height: 800px;
	overflow: auto;
	display: none;
}

#footer {
	width: 1518px;
	height: 180px;
	margin-top: 20px;
	float: left;
	border: 1px solid #f0f0f0;
}

#o1 {
	width: 100px;
	font-size: 15px;
	height: 40px;
}

#o2 {
	width: 120px;
	font-size: 15px;
}

#o3 {
	width: 150px;
	font-size: 15px;
}

#o4 {
	width: 90px;
	font-size: 15px;
}

#o5 {
	width: 200px;
	font-size: 15px;
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
				<h3
					style="text-align: center; font-size: 25px; margin-top: 20px; margin-bottom: 30px;">가입회원
					리스트</h3>
				<div id="btnarr">
					<div class="btnArray" id="normal">
						<button id="Lbtn1" class="btn2">일반회원 리스트</button>
					</div>
					<div class="btnArray" id="writer">
						<button id="Lbtn2" class="btn2">작가회원 리스트</button>
					</div>
					<div class="btnArray" id="blkmember">
						<button id="Lbtn3" class="btn2">블랙회원 리스트</button>
					</div>
				</div>
				<div id="declarelist">
					<div id="ListView1"></div>
					<div id="ListView2"></div>
					<div id="ListView3"></div>

				</div>
			</div>
		</div>
		<div id="footer">
			<hr style="width: 100%; border: 2px solid coral; align: center;">
			<jsp:include page="footer.jsp"></jsp:include>
		</div>
	</div>
</body>
<script>
	$("#Lbtn1").click(function() {
		$("#ListView1").css("display", "block");
		$("#ListView2").css("display", "none");
		$("#ListView3").css("display", "none");
		val1();
	});
	$("#Lbtn2").click(function() {
		$("#ListView1").css("display", "none");
		$("#ListView2").css("display", "block");
		$("#ListView3").css("display", "none");
		val2();
	});
	$("#Lbtn3").click(function() {
		$("#ListView1").css("display", "none");
		$("#ListView2").css("display", "none");
		$("#ListView3").css("display", "block");
		val3();
	});
	$(document)
			.ready(
					function val1() {
						$
								.ajax({
									url : 'memberseclist',
									type : 'post',
									contentType : "application/json; charset=utf-8;",
									dataType : 'json',
									//contentType:'application/json',
									success : function(data) {
										var result = "<div id='best'><table><tr class='object'><td id='o1'>아이디</td><td id='o2'>이름</td><td id='o3'>회원등급</td><td id='o4'>경고횟수</td><td id='o5'>상세보기</td></tr>";
										console.log("성공");

										for ( var i in data) {
											result += "<tr class='contents'><td id='o1'>"
													+ data[i].mb_id
													+ "</td><td id='o2'>"
													+ data[i].mb_name
													+ "</td><td id='o3'>";
											var test = data[i].mb_grade
											switch (test) {
											case 'N':
												result += "일반</td><td id='o4'>";
												break;
											case 'W':
												result += "작가</td><td id='o4'>"
												break;
											case 'S':
												result += "임시</td><td id='o4'>"
												break;
											case 'X':
												result += "전환</td><td id='o4'>"
												break;
											}
											result += data[i].mb_ccnt
													+ "</td><td id='o5'>"
													+ "<a href='memberListMM?mb_id="
													+ data[i].mb_id
													+ "'>클릭</a></td></tr>";
										}
										result += "</table></div>";

										$("#ListView1").html(result);
									},
									error : function(error) {
										console.log("실패");
										console.log(error);
									}
								});
					});
	function val2() {
		$
				.ajax({
					url : 'memberAuthorlist',
					type : 'post',
					contentType : "application/json; charset=utf-8;",
					dataType : 'json',
					//contentType:'application/json',
					success : function(data) {
						var result = "<div id='best'><table><tr class='object'><td id='o1'>아이디</td><td id='o2'>이름</td><td id='o3'>회원등급</td><td id='o4'>경고횟수</td><td id='o5'>상세보기</td></tr>";
						console.log("성공");

						for ( var i in data) {
							result += "<tr class='contents'><td id='o1'>"
									+ data[i].mb_id + "</td><td id='o2'>"
									+ data[i].mb_name + "</td><td id='o3'>";
							var test = data[i].mb_grade
							switch (test) {
							case 'N':
								result += "일반</td><td id='o4'>";
								break;
							case 'W':
								result += "작가</td><td id='o4'>"
								break;
							case 'S':
								result += "임시</td><td id='o4'>"
								break;
							case 'X':
								result += "전환</td><td id='o4'>"
								break;
							}
							result += data[i].mb_ccnt + "</td><td id='o4'>"
									+ "<a href='memberListMM?mb_id="
									+ data[i].mb_id + "'>클릭</a></td></tr>";
						}
						result += "</table></div>";

						$("#ListView2").html(result);
					},
					error : function(error) {
						console.log("실패");
						console.log(error);
					}
				});
	}
	function val3() {
		$
				.ajax({
					url : 'memberBlacklist',
					type : 'post',
					contentType : "application/json; charset=utf-8;",
					dataType : 'json',
					//contentType:'application/json',
					success : function(data) {
						var result = "<div id='best'><table><tr class='object'><td id='o1'>아이디</td><td id='o2'>이름</td><td id='o3'>회원등급</td><td id='o4'>경고횟수</td><td id='o5'>상세보기</td></tr>";
						console.log("성공");

						for ( var i in data) {
							result += "<tr class='contents'><td id='o1'>"
									+ data[i].mb_id + "</td><td id='o2'>"
									+ data[i].mb_name + "</td><td id='o3'>";
							var test = data[i].mb_grade
							switch (test) {
							case 'N':
								result += "일반</td><td id='o4'>";
								break;
							case 'W':
								result += "작가</td><td id='o4'>"
								break;
							case 'S':
								result += "임시</td><td id='o4'>"
								break;
							case 'X':
								result += "전환</td><td id='o4'>"
								break;
							}
							result += data[i].mb_ccnt + "</td><td id='o5'>"
									+ "<a href='memberListMM?mb_id="
									+ data[i].mb_id + "'>클릭</a></td></tr>";
						}
						result += "</table></div>";

						$("#ListView3").html(result);
					},
					error : function(error) {
						console.log("실패");
						console.log(error);
					}
				});
	}
</script>
</html>
