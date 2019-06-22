<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<html>
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<title>Home</title>
<style>
#main {
	width: 1518px;
	height: 170px;
	position: relative;
}

#mainheader {
	border: 1px solid black;
	width: 1520px;
	height: 170px;
	position: fixed;
	background-color: white;
}

#middle {
	border: 1px solid black;
	width: 1520px;
	height: auto;
	margin-top: 50px;
}

#middle_content1, #middle_content2 {
	width: 1518px;
	height: 420px;
	float: left;
	border: 1px solid orange;
}

#middle_content1_title, #middle_content2_title {
	width: 1450px;
	height: 40px;
	float: left;
	margin: 20px 20px 10px 20px;
	padding-left: 10px;
	font-size: 25px;
	font-weight: 800;
	border: 1px solid orange;
}

#middle_content1_lv1, #middle_content2_lv1 {
	width: 1460px;
	height: 300px;
	float: left;
	margin: 0px 20px 10px 20px;
	border: 1px solid orange;
}

#middle_content1_lv2, #middle_content2_lv2 {
	width: 1460px;
	height: 300px;
 	overflow-x: auto;
 	overflow-y: hidden;
	white-space: nowrap;
}

.recommlist {
	width: 280px;
	height: 98%;
	display:inline-block;
	border: 1px solid black;
	border-radius: 10px;
	padding-left: 10px;
	margin-left: 10px;
}


#footer {
	border: 1px solid red;
	width: 1514px;
	height: 170px;
	margin-top: 20px;
	float: left;
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
		<div id="middle_content1">
			<div id="middle_content1_title">추천 작품</div>
			<div id="middle_content1_lv1">
			<div id="middle_content1_lv2">
			<c:forEach var="rl" items="${recommList}">
				<div class="recommlist">
				<img src="${rl.aui_img}"/><br>
				${rl.au_title}
				</div>
			</c:forEach>
			</div>
			</div>
		</div>
		<div id="middle_content2">
			<div id="middle_content2_title">베스트 작품</div>
			<div id="middle_content2_lv1">
				<div id="bestlist">asdasd</div>
			</div>
		</div>

		<div id="footer">
			<jsp:include page="footer.jsp"></jsp:include>
		</div>
	</div>
</body>
<script>
	//var rList = ${rList}

	window.onload = function() {
		var flag = ${logout};
		if (flag == 1) {
			swal("로그아웃 되었습니다.");
		}
	}
	
</script>
</html>