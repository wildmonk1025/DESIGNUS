<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script src="https://code.jquery.com/jquery-3.4.0.min.js"></script>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
  .joinimg{
    border: 1px solid black;
    
  }
</style>
</head>
<body>
	<form action="norJoinFrm" method="get">
		<div class="joinimg">
		   <img src="images/normal.png" />
			<button id="joinbtz">일반 회원</button>
		</div>
	</form>
	<form action="wriJoinFrm" method="get">
		<div class="joinimg">
		 <img src="images/writer.png" />
			<button id="joinbtz2">작가 회원</button>
		</div>
	</form>
</body>

</html>