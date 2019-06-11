<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>제작의뢰 리스트</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<style>
div {
	margin: auto;
}

#mainheader {
	border: 1px solid black;
	width: 1520px;
	height: 170px;
}

#revauctionbtn, #auctionbtn {
	background-color: orange;
	width: 150px;
	height: 30px;
	color: white;
	float: right;
}

#btn {
	width: 1500px;
	height: 30px;
}

#rauctionlist {
	margin-top: 30px;
	width: 1200px;
	height: 600px;
	border: 1px solid black;
}

#revauctionlist {
	background-color: orange;
	padding-top: 30px;
	width: 200px;
	height: 50px;
	text-align: center;
	float: left;
	color: white;
	border: 1px solid black;
}

#auctionlist {
	background-color: orange;
	padding-top: 30px;
	width: 200px;
	height: 50px;
	text-align: center;
	float: left;
	color: white;
	border: 1px solid black;
}

#boardlist {
	border: 1px solid black;
	width: 100%;
	height: 80px;
}

#revauction {
	margin-top: 35px;
	border: 1px solid black;
	width: 1100px;
	height: 450px
}

#listtest {
	margin: 35px 65px;
	width: 400px;
	height: 150px;
	border: 1px solid black;
	float: left;
}
</style>
</head>

<body>
	<div id="mainheader">
		<!--<jsp:include page="main.jsp"/>-->
	</div>
	<div id="btn">
		<button id="revauctionbtn">제작의뢰 요청하기</button>
		<button id="auctionbtn">출품등록하기</button>
	</div>
	<div id="rauctionlist">
		<div id="revauctionlist">제작의뢰 리스트</div>
		<div id="auctionlist">출품 리스트</div>
		<div id="boardlist">게시판 글 끌어오기</div>
		<div id="revauction">
			<div id="listtest">제작의뢰 1</div>
			<div id="listtest">제작의뢰 2</div>
			<div id="listtest">제작의뢰 3</div>
			<div id="listtest">제작의뢰 4</div>

		</div>
	</div>


</body>
</html>