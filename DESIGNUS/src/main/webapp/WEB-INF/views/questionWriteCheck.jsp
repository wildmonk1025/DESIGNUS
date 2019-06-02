<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>questionWriteCheck.jsp</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<style>
div {
	margin: auto;
}

ul {
	list-style: none;
}

#mainheader {
	border: 1px solid black;
	width: 1518px;
	height: 170px;
}

#adminmenu {
	float: left;
	width: 300px;
	height: 500px;
}

#onequestion {
	margin: 10px;
	padding-top: 20px;
	width: 400px;
	height: 40px;
	padding-left: 20px;
	float: left;
	background-color: orange;
	color: white;
}

#onequestionmain {
	border: 1px solid black;
	margin: 10px;
	padding: 20px;
	width: 900px;
	height: 700px;
	float: left;
}

#questiontitle {
	border: 1px solid red;
	float: left;
	margin: 5px;
	width: 800px;
	height: 30px;
}

#questioncontents {
	border: 1px solid red;
	float: left;
	margin: 5px;
	width: 800px;
	height: 200px;
}

#questionfile {
	border: 1px solid red;
	float: left;
	margin: 5px;
	width: 800px;
	height: 30px;
}

button {
	margin: 10px 10px 10px 10px;
	width: 200px;
	height: 50px;
	background-color: orange;
	position: static;
	color: white;
}

input[type=submit] {
	margin: 10px 100px 0px 0px;
	float: right;;
	width: 100px;
	height: 40px;
	background-color: orange;
	color: white;
}
</style>
</head>

<body>
	<div id="mainheader"></div>
	<div id="adminmenu">
		<ul>
			<li style="text-align: center; font-size: 20px">관리내역</li>
			<li>게시판/댓글</li>
			<li>신고내역</li>
			<li style="background-color: skyblue">1:1문의</li>
			<li>회원관리</li>
			<li>작가 전환신청</li>
			<li>작가 가입신청</li>
			<li>카테고리 관리</li>
			<li>게시판/댓글</li>
			<li>게시판/댓글</li>

		</ul>

	</div>
	<div id="onequestionmain">
		<div id="onequestion">1:1문의 접수 내역</div>
		<br> <br> <br> <br>
		<div id="questionread">
			<button id="pageback">돌아가기</button>
			<button id="delete">글 삭제</button>
			<div id="questiontitle">글 제목</div>
			<div id="questioncontents">글 내용</div>
			<div id="questionfile">첨부파일 :: 23049235.pdf</div>
			<form action="">
				<textarea rows="30" cols="20"
					style="margin: 5px; width: 800px; height: 100px;"
					placeholder="여기에 답글을 달 수 있습니다"></textarea>
				<input type="submit" value="답변하기" />
			</form>
		</div>

	</div>

</body>
<script>
	
</script>

</html>