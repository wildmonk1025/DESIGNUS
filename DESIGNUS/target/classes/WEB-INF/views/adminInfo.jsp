<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<title>adminInfo.jsp</title>
<meta charset="utf-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
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
	height: 490px;
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
	height: 400px;
	overflow: auto;
}
#transformlist {
	margin-top: 10px;
	width: 100%;
	height: 400px;
	overflow-y: auto;
}


.best {	
	float: left;
	width: 1100px;
	heigth: auto;
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
		<jsp:include page="admininclud.jsp"></jsp:include>
	</div>
	<div id="adminopt">
		<div class="opt">
			<h3 style="text-align: center; font-size: 30px;">신고내역</h3>
			<div id="declarelist"></div>
		</div>
		
		<div class="opt"><br/><br/>
			<h3 style="text-align: center; font-size: 30px;">작가가입/전환 신청내역</h3>
			<div id="transformlist"></div>
		</div>
		
	</div>
	<div id="footer">
	<hr style="width:100%; border: 2px solid coral; align: center;">
		<jsp:include page="footer.jsp"></jsp:include>
	</div>
	</div>
</body>
<script>
	$(document).ready(
			function() {
				$.ajax({
					url : 'Declarelist',
					type : 'post',
					contentType : "application/json; charset=utf-8;",
					dataType : 'json',
					//contentType:'application/json',
					success : function(data) {
						var result = "<div id='best'><table><tr class='object'><td>신고번호</td><td>신고자 아이디</td><td>신고대상 아이디</td><td>신고위치</td><td>상세보기</td></tr>";
						console.log("성공");
						for ( var i in data) {
							result += "<tr class='contents'><td>"+data[i].rp_num+"</td><td>"
									+ data[i].rp_mbid_d + "</td><td>"
									+ data[i].rp_mbid_a + "</td><td>"
									+ data[i].rp_locate + "</td><td><a href='declareWrite'>클릭</a></td></tr>";
						}
						result+="</table></div>";
						$("#declarelist").html(result);
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
					url : 'transformList ',
					type : 'post',
					contentType : "application/json; charset=utf-8;",
					dataType : 'json',
					//contentType:'application/json',
					success : function(data) {
						var result = "<div id='best'><table><tr class='object'><td>아이디</td><td>카테고리 분류</td><td>포트폴리오</td><td>파일설명</td><td>상세보기</td></tr>";
						console.log("성공");
						for ( var i in data) {
							result += "<tr class='contents'><td>"+data[i].mb_id+"</td><td>"
									+ data[i].mj_cgcode + "</td><td>"
									+ data[i].mj_contents + "</td><td>"
									+ data[i].mj_portf + "</td><td><a href='permitWriApply'>클릭</a></td></tr>";
									
						}
						result+="</table></div>";
						$("#transformlist").html(result);
					},
					error : function(error) {
						console.log("실패");
						console.log(error);
					}
				});
			});
</script>
</html>
