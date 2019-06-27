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

#mainheader {
	width: 1518px;
	height: 170px;
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

#trans {
	float: left;
	align-content: center;
	width: 1216px;
	height: 500px;
}

.opt {
	margin-top: 5px;
	width: 1200px;
	height: 400px;
	border: 1px solid blue;
}

#declarelist {
	margin-top: 10px;
	width: 100%;
	height: 400px;
	overflow: auto;
	border: 1px solid blue;
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
	width: 1100px;
}

.object td {
	width: 280px;
	font-size: 25px;
	font-weight: 600;
	text-align: center;
}

.contents {
	width: 1100px;
}

.contents td {
	width: 280px;
	height: 40px;
	font-size: 18px;
	text-align: center;
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
.dd{
box-shadow: 3px 0px 8px -3px rgba(0,0,0,0.56);

}

#footercheck {
	width: 1520px;
	height: 150px;
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
			<h3 class="dd" style="text-align: center; font-size: 30px;">신고내역</h3>
			<div id="declarelist">
			</div>
		</div>


		<div class="opt"><br/><br/>
			<h3 class="dd" style="text-align: center; font-size: 30px;">판매자 전환신청</h3>
			<div id="transformlist"></div>
		</div>
	</div>
	<div id="footercheck">
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
									+ data[i].rp_locate + "</td><td><a href='declareWrite'>클릭</a></td></tr>"
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
						var result = "";
						console.dir(data);
						console.log("성공");

						for ( var i in data) {
							result += "<div class='best'>"+"<table id='customers'>"+"<tr class='alt'><td>"
									+ "<a href='permitWriApply'>" + "아이디:"
									+ data[i].mb_id + "</tr></td>" + "<tr><td>"+"카테고리 분류번호:"
									+ data[i].mj_cgcode + "</tr></td>" + "<tr><td>"+"포트폴리오:"
									+ data[i].mj_contents + "</tr></td>" + "<tr><td>"+"파일설명:"
									+ data[i].mj_portf + "</tr></td>" + "</a>"
									+"</table>"+ "</div>";
						}
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
