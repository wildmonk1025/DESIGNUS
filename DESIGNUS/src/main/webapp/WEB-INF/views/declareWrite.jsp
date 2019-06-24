<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>declareWrite.jsp</title>
<meta charset="utf-8">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<style>
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
	width: 1220px;
	height: 500px;
}

.opt {
	padding: inherit;
	margin: auto;
	margin-top: 5px;
	width: 1000px;
	height: 450px;
}

#declarelist {
	width: 990px;
	height: 350px;
	overflow-y: scroll;
	border: 1px solid grey;
}

#declarelist td {
	width: 140px;
}

.best {
	border: 1px solid black;
	display : inline;
	float: left;
	width: 400px;
	heigth: 150px;
	size: 20px;
	
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
</style>
</head>
<body>
	<form action="" enctype="multipart/form-data">
		<div id="mainheader">
			<div id="mainheader">
				<jsp:include page="main.jsp" />
			</div>
		</div>
		<div id="adminmenu">
			<jsp:include page="admininclud.jsp"></jsp:include>

		</div>
		<div id="adminopt">
			<div class="opt">
				<h3 style="text-align: center; font-size: 25px; background-color: orange;">회원
					신고내역</h3>
				<hr>
				<div id="declarelist"></div>
				<h3 style="text-align: center; color: blue;">페이징</h3>
			</div>
		</div>
	</form>
</body>
<script>

	$(document).ready(
			function() {
				$.ajax({
					url : 'declarewritecheck',
					type : 'post',
					contentType : "application/json; charset=utf-8;",
					dataType : 'json',
					//contentType:'application/json',
					success : function(data) {
						var result = "";
						console.dir(data);
						console.log("성공");

						for ( var i in data) {
							result += "<div class='best'>" +"<table id='customers'>"+"<tr class='alt'><td>"
									+"<a href='declareWriteCheck?rp_num="+data[i].rp_num+"&mb_id="
									+ data[i].rp_mbid_a+"'>"
									+"신고번호:"+ data[i].rp_num + "</tr></td>"+ "<tr><td>" + "신고자아이디:"
									+ data[i].rp_mbid_d + "</tr></td>" + "<tr><td>"+ "가해자아이디:"
									+ data[i].rp_mbid_a + "</tr></td>"+ "<tr><td>" + "신고위치:"
									+ data[i].rp_locate + "</tr></td>" + "<tr><td>" + "등록일:"
									+ data[i].rp_date +"</tr></td>" +"</a>"+"</table>"+"</div>";
						}
						$("#declarelist").html(result);
					},
					error : function(error) {
						console.log("실패");
						console.log(error);
					}
				});
			});
</script>
</html>
