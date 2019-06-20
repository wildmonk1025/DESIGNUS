<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
<script src="js/jquery.serializeObject.js"></script>
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
	height: 700px;
}

.btn {
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

#footercheck {
	border: 1px solid black;
	width: 1520px;
	height: 150px;
}

#freeboard1 {
	position: relative;
	width: 1480px;
	height: 100px;
	top: 50px;
	left: 50px;
	display: inherit;
}

#freeboard2 {
	border: 1px solid black;
	width: 1200px;
	height: 500px;
	top: 50px;
	left: 50px;
}

.btn2 {
	width: 1400px;
	height: 50px;
	background-color: white;
}

a:link {
	color: black;
	text-decoration: none;
}

a:visited {
	color: black;
	text-decoration: none;
}

#paging {
	position: relative;
	border: 1px solid black;
	width: 400px;
	height: 40px;
	top: 430px;
	left: 500px;
	font-size: 22px;
	text-align: center;
}

form {
	top: 20px;
	left: 550px;
}

select {
	position: relative;
	left: 300px;
	width: 100px;
	height: 50px;
	font-size: 18px;
}

.input1 {
	position: relative;
	left: 300px;
	width: 250px;
	height: 50px;
	font-size: 18px;
	position: relative;
	top: -1px;
}

#btn5 {
	position: relative;
	top: -2px;
	left: 440px;
}

.btn3 {
	position: relative;
	left: 300px;
	width: 100px;
	height: 50px;
	top: -3px;
	background-color: orange;
}

#btn5 {
	position: relative;
	left: 850px;
	width: 100px;
	height: 50px;
	background-color: orange;
	top: -5px;
}
</style>
<title>Home</title>
</head>

<body>
	<div id="mainheader">
		<jsp:include page="main.jsp" />
	</div>

	<div id="homeMain">
		<div id="freeboard1">
			<button style="background-color: coral" class="btn2">이용후기 게시판</button>
			
			
		</div><br/><br/><br/>
		<div id="freeboard2">
<table>
	<tr bgcolor="aqua" height="30">
		<th width="100">번호</th>
		<th width="100">제목</th>
		<th width="100">아이디</th>
		<th width="100">작성일</th>
		<th width="100">조회수</th>
	</tr>
	<c:forEach var="board" items="${bdInfo}">
	 	 <tr>
			<td align="center">${board.bd_num}</td>
			<td align="center" width="400px;"><a href="#" onclick="articleView(${board.bd_num})">${board.bd_title}</a></td>
			<td align="center">${board.bd_mbid}</td>
			<td align="center" width="300px;">${board.bd_date}</td>
			<td align="center">${board.bd_views}</td>
		</tr> 
	</c:forEach>
	</table>
	<form action="writeFrm">
		<button>글쓰기</button>
	</form>
	<div align="center">${paging}</div>
	
	<div id="articleView_layer">
		<div id="bg_layer"></div>
		<div id="contents_layer"></div>
	</div>	
	<form action="test">
	컬럼명:<input type="text" name="cName"/>
	검색:<input type="text" name="search"/>
	<button>컬럼 검색</button>
</form>


			<div id="paging">[1]...[4][5][6][7][8][9]...[1004]</div>
		</div>

	</div>
	<div id="footercheck">
		<jsp:include page="footer.jsp"></jsp:include>
	</div>

</body>

</html>
