<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>transformList.jsp</title>
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
	overflow: auto;
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

#middle {
	float: left;
	width: 1518px;
	height: auto;
	overflow: auto;
}

#adminmenu {
	float: left;
	width: 300px;
	height: 500px;
}

#adminopt {
	float: left;
	align-content: center;
	width: 1214px;
	height: 500px;
}

#declarelist {
	margin-left: 20px;
	width: 960px;
	height: 320px;
	float: left;
}

#questionlist {
	width: 990px;
	height: 400px;
	overflow-y: scroll;
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
}
</style>
</head>

<body>
	<div id="mainheader">
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
		<form name="form" method="get">
			<div class="opt">
				<h3
					style="margin-left: 20px; font-size: 25px; background-color: orange;">1:1문의
					접수 리스트</h3>
				<hr>
				<div id="questionlist"></div>
			</div>
		</form>
	</div>

</body>
<script>
	$(document).ready(
			function() {
				$.ajax({
					url : 'questionWrite',
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
									+ "<a href='questionWriteCheck?aq_num="+ data[i].aq_num + "'>" + "문의번호:"
									+ data[i].aq_num + "</td></tr>" + "<tr><td>" + "문의자아이디:"
									+ data[i].aq_mbid +"</td></tr>" + "<tr><td>" + "질문유형:"
									+ data[i].aq_tye +"</td></tr>" + "<tr><td>" + "제목:"
									+ data[i].aq_title +"</td></tr>" + "<tr><td>" + "등록일:"
									+ data[i].aq_date + "</td></tr>" + "<tr><td>" + "</a>"
									+"</table>" +"</div>";
						}
						$("#questionlist").html(result);
					},
					error : function(error) {
						console.log("실패");
						console.log(error);
					}
				});
			});
</script>
</html>
