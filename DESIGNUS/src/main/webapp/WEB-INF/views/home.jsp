<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<html>
<head>
<style>
#mainheader {
	border: 1px solid black;
	width: 1520px;
	height: 170px;
}

#homeMain {
	border: 1px solid black;
	width: 1520px;
	height: 600px;
}

#revauctionbtn, #auctionbtn {
	background-color: orange;
	width: 150px;
	height: 30px;
	color: white;
	float: right;
}

#coklist {
	width: 1000px;
	height: 150px;
	float: left;
	display: block;
	border: 1px solid orange;
}

#bestlist {
	width: 1000px;
	height: 150px;
	float: left;
	display: block;
	border: 1px solid orange;
}

#list {
	width: 1100px;
	height: 400px;
	float: left;
	margin: 50px;
	border: 1px solid orange;
}

#text1 {
	width: 400px;
	height: 30px;
	float: left;
	border: 1px solid orange;
}

#text2 {
	margin-top: 30px;
	width: 400px;
	height: 30px;
	float: left;
	border: 1px solid orange;
}

#footercheck {
	border: 1px solid black;
	width: 1510px;
	height: 200px;
}
</style>
<title>Home</title>
</head>
<body>
	<div id="mainheader">
		<jsp:include page="main.jsp" />
	</div>

	<div id="homeMain">
		
		<br> <br>
		<div id="list">
			<div id="text1" align="center">오늘의 추천 작품</div>
			<div id="coklist"></div>
			<br> <br>
			<div id="text2" align="center">베스트 상품</div>
			<div id="bestlist"></div>
		</div>
	</div>
	<div id="footercheck">
		<jsp:include page="footer.jsp"></jsp:include></div>
	-

</body>
</html>
