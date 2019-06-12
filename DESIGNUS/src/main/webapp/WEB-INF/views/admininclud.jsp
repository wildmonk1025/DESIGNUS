<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<style type="text/css">
  #adminmenu {
            float: left;
            width: 300px;
            height: 500px;
        }
.lipont{
	font-size:20px;
}
   
</style>
</head>
<script type="text/javascript"></script>
<body>
        <ul>
            <li style="text-align: center; font-size: 40px;"><a href="adminInfo">관리내역</a><br/><br/></li>
            <li class="lipont"><a href="declareWrite">신고내역</a><br/><br/></li>
            <li class="lipont"><a href="questionList">1:1문의</a><br/><br/></li>
            <li class="lipont"><a href="memberList">회원관리</a><br/><br/></li>
            <li class="lipont"><a href="transformList">작가 전환신청</a><br/><br/></li>
            <li class="lipont"><a href="permitWriApply">작가 가입신청</a><br/><br/></li>
            <li class="lipont"><a href="categoryEdit">카테고리 관리<br/></a><br/></li>

        </ul>
</body>
</html>