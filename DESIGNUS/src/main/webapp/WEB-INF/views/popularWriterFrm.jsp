<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
}

#bestlist {
	width: 1000px;
	height: 150px;
	float: left;
	display: block;
}

#list {
	width: 1100px;
	height: 400px;
	float: left;
	margin: 50px;
    overflow-y: auto;
}

#text1 {
	width: 400px;
	height: 30px;
	float: left;
}

#text2 {
	margin-top: 30px;
	width: 400px;
	height: 30px;
	float: left;
}

#footercheck {
	border: 1px solid black;
	width: 1520px;
	height: 200px;
}
</style>
</head>
<body>
<div id="mainheader">
		<jsp:include page="main.jsp"/>
	</div>

	<div id="homeMain">
		
		<div id="list">
			<div id="text1" align="center"></div>
			<div id="coklist"></div>
			
			<div id="text2" align="center"></div>
			<div id="bestlist"></div>
		</div>
	</div>
	<div id="footercheck">
		<jsp:include page="footer.jsp"></jsp:include></div>

</body>
</html>