<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
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
	position: relative;
	width: 1420px;
	height: 500px;
	top: 50px;
	left: 50px;
}

.btn2 {
	width: 150px;
	height: 98px;
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
	position: absolute;
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
			<button style="background-color: orange" class="btn2">자유게시판</button>
			<button class="btn2">이용후기</button>
			<button class="btn2">공지사항</button>
			<form>
				<select>
					<option>추천</option>
					<option>등록일</option>
					<option>조회수</option>
					<option>작성자</option>
				</select> <input type="text" class="input1">
				<button class="btn3">검색</button>
			</form>
			<button id="btn5" class="btn3">글작성</button>
		</div>
		<div id="freeboard2">
			<table style="text-align: center">
				<tr>
					<th style="width: 150; height: 50">번호</th>
					<th style="width: 550">제목</th>
					<th style="width: 175">작성자</th>
					<th style="width: 175">등록일</th>
					<th style="width: 150">추천</th>
					<th style="width: 150">조회수</th>
				</tr>
				<tr>
					<td>1</td>
					<td><a href="#">게시판 이용수칙 (필독)</a></td>
					<td>Lee수원</td>
					<td>2018-12-26</td>
					<td>542</td>
					<td>5429</td>
				</tr>
			</table>
			<div id="paging">[1]...[4][5][6][7][8][9]...[1004]</div>
		</div>

	</div>
	<div id="footercheck">
		<jsp:include page="footer.jsp"></jsp:include>
	</div>

</body>
</html>
