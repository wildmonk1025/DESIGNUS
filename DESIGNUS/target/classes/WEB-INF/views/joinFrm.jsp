<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script src="https://code.jquery.com/jquery-3.4.0.min.js"></script>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
body{
background-color: coral;
}
div {
	margin: auto;
}

#joinimg {
	float: left;
	text-align: center;
	width: 340px;
	height: 340px;
	border: 1px solid white;
	background-color: white;
	box-shadow: 4px 4px 5px 0px rgba(0,0,0,0.75);
		border-radius: 50px;
}

#joinimg.tilt {
    display: inline-block;
    position: relative;
    z-index: 2;
    flex-grow: 1;
  }

#joinimg2 {
	float: right;
	margin-left: 30px;
	text-align: center;
	width: 340px;
	height: 340px;
	border: 1px solid white;
	background-color: white;
	box-shadow: 4px 4px 5px 0px rgba(0,0,0,0.75);
		border-radius: 50px;
}

#joinbtz {
	font-size: 45px;
	border: none;
		background-color: white;
	
}

#joinbtz2 {
	font-size: 45px;
	border: none;
		background-color: white;
	
}

#logo {
	margin-bottom: 100px;
}
#full {
	margin-top: 90px;
	border: none;
	width: 750px;
	height: 800px;
}
</style>

</head>
<body>

	<div id="full" align="center">
		<div id="logo">
		<a href="home"><img src="resources/images/logo2.png" width="450px" height="100%" style="margin-top:10px;"></a>
		</div>
		<div id="joinimg">
		<img src="resources/images/normal3.png" width="80%" height="90%" style="margin-top:20px;" onclick="location.href='norJoinFrm'">
		</div>
		<div id="joinimg2">
		<img src="resources/images/writer3.png" width="80%" height="90%" style="margin-top:20px;" onclick="location.href='wriJoinFrm'">
		</div>
	</div>
</body>

</html>