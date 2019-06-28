<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<meta charset="utf-8">
<html>

<head>
<meta charset="UTF-8">
<title>permitWriApply.jsp</title>
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

#adminwriterjoin {
	float: left;
	align-content: center;
	width: 1216px;
	height: 500px;
}

.writerjoin {
	width: 1200px;
	height: 990px;
	border: 1px solid #f0f0f0;
	border-radius: 5px;
	box-shadow: 3px 0px 8px -3px rgba(0, 0, 0, 0.56);
}

.writerjoin:hover {
	transform: scale(1.02);
	transition-duration: 1s;
}

#transformlist {
	margin-top: 10px;
	width: 1000px;
	height: 800px;
	overflow: auto;
}

.best {
	margin: auto;
	width: 1100px;
	height: auto;
	box-shadow: 3px 0px 8px -3px rgba(0, 0, 0, 0.56);
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

ul {
	list-style: none;
}

#footer {
	width: 1518px;
	height: 180px;
	margin-top: 20px;
	float: left;
	border: 1px solid #f0f0f0;
}

#o1 {
	width: 80px;
	font-size: 15px;
	height: 40px;
}

#o2 {
	width: 100px;
	font-size: 15px;
}

#o3 {
	width: 200px;
	font-size: 15px;
}

#o4 {
	width: 300px;
	font-size: 15px;
}

#o5 {
	width: 180px;
	font-size: 15px;
}

#o6 {
	width: 100px;
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
		<div id="adminwriterjoin">
			<div class="writerjoin">
				<h3
					style="text-align: center; font-size: 25px; margin-top: 20px; margin-bottom: 30px;">작가
					가입/전환신청 리스트</h3>
				<div id="transformlist"></div>
			</div>
		</div>
		<div id="footer">
			<hr style="width: 100%; border: 2px solid coral; align: center;">
			<jsp:include page="footer.jsp"></jsp:include>
		</div>
	</div>
</body>
<script>
	$(document)
			.ready(
					function() {
						$.ajax({
								url : 'transformwridetail ',
								type : 'post',
								contentType : "application/json; charset=utf-8;",
								dataType : 'json',
								//contentType:'application/json',
								success : function(data) {
									var result = "<div id='best'><table><tr class='object'><td id='o6'>분류</td><td id='o1'>아이디</td><td id='o2'>전문분야</td><td id='o3'>포트폴리오</td><td id='o4'>파일설명</td><td id='o5'>상세보기</td></tr>";
									console.log("성공");
										for ( var i in data) {
											var test = data[i].mb_grade;
											console.log(test);
											switch (test) {
											case 'S':
												test = "임시";
												result += "<tr class='contents'><td id='o6'>"
														+ test
														+ "</td><td id='o1'>"
														+ data[i].mb_id
														+ "</td><td id='o2'>"
														+ data[i].mj_cgcode
														+ "</td><td id='o3'><a style='color:grayt' href='mjfiledownload?mj_portf="
														+ data[i].mj_portf
														+ "'>"
														+ data[i].mj_portf
														+ "</a></td><td id='o4'>"
														+ data[i].mj_contents
														+ "</td><td id='o5'>"
														+ "<a style='color:gray;' href='permitWriDetail?mb_id="
														+ data[i].mb_id
														+ "'>클릭</a></td></tr>";
												break;
											case 'X':
												test = "전환";
												result += "<tr class='contents' style='color:#d5448c;'><td id='o6'>"
														+ test
														+ "</td><td id='o1'>"
														+ data[i].mb_id
														+ "</td><td id='o2'>"
														+ data[i].mj_cgcode
														+ "</td><td id='o3'><a style='color:#f8876a;' href='mjfiledownload?mj_portf="
														+ data[i].mj_portf
														+ "'>"
														+ data[i].mj_portf
														+ "</a></td><td id='o4'>"
														+ data[i].mj_contents
														+ "</td><td id='o5'>"
														+ "<a style='color:#f8876a;' href='permitWriDetail?mb_id="
														+ data[i].mb_id
														+ "'>클릭</a></td></tr>";
												break;
											}
										}
										result += "</table>" + "</div>";
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