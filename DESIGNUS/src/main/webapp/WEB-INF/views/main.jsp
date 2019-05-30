<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style>
div {
	margin: auto;
	border: 1px solid orange;
}

#header {
	padding: 3px;
	width: 1510px;
	height: 100px;
	float: left;
}

#logo {
	padding: 5px;
	width: 270px;
	height: 80px;
	float: left;
}

#search {
	margin-left: 100px;
	padding-left: 120px;
	padding-right: 120px;
	padding-top: 20px;
	width: 570px;
	height: 80px;
	float: left;
}

#loginwriter {
	padding: 3px;
	padding-top: 20px;
	width: 300px;
	height: 80px;
	float: right;
}

#category {
	float: left;
	width: 1500px;
	height: 50px;
}

#searchtxt {
	margin: 50px, 20px;
	width: 300px;
	height: 30px;
	align: center;
}

#subcategory {
	width: 50px;
	height: 50px;
	background-color: orange;
	color: white;
	font-size: 30px;
	float: left;
}

#menu {
	float: left;
	width: 1400px;
	height: 50px
}

#submenu {
	margin-left: 100px;
	width: 150px;
	float: left;
	height: 50px;
	text-align: center;
	font-size: 18px;
}

#msg {
	width: 50px;
	height: 50px;
	margin-left: 10px;
	float: left;
}

#mypageimg {
	float: left;
	width: 50px;
	height: 50px;
	margin-left: 5px;
}

#loginmsg {
	float: left;
	width: 130px;
	height: 50px;
	margin-left: 10px;
}
</style>
<meta charset="UTF-8">

</head>
<body>
	<div id="header">
		<div id="logo">
			<img src="./images/logo.png" width="250px" height="80px" />
			<!-- <img src="./resources/images/logo.png" width="250px" height="80px" /> -->
			<!-- <img src="./resources/images/logo.png" width="250px" height="80px" /> -->
		</div>
		<div id="search">
			<input type="text" id="searchtxt" placeholder="검색어를 입력해주세요." />
			<button id="searchbtn">검색</button>
		</div>
		<div id="loginwriter">
			<div id="mypageimg"></div>
			<div id="msg">
				<img src="./images/writer.png" width="40px" height="40px" />
			</div>
			<div id="loginmsg">로그인</div>
		</div>
	</div>
	<div id="category">
		<div id="subcategory" align="center">三</div>
		<div id="menu">
			<div id="submenu">후원</div>
			<div id="submenu">경매</div>
			<div id="submenu">인기작가</div>
			<div id="submenu">고객센터</div>
		</div>
	</div>
</body>
</html>