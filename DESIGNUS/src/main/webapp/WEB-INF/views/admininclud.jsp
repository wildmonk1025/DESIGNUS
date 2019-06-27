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
	height: 1000px;
	border: 1px solid #f0f0f0;
	border-radius: 5px;
	box-shadow: 3px 0px 8px -3px rgba(0,0,0,0.56);
       }
.lipont{
	font-size:25px;
	font-weight: 800;
	padding-left: 10px;
}
.lipont:hover{
	background-color: coral;
	transform: scale(1.05);
	transition-duration: 1s;
}
.atag:active {
	text-decoration: none;
	color: #646464;
}

.atag:visited {
	text-decoration: none;
	color: #646464;
}

.atag:link {
	text-decoration: none;
	color: #646464;
}
.atag:hover {
	text-decoration: none;
	color: #646464;
}   
</style>
</head>
<script type="text/javascript"></script>
<body>
        <ul>
            <li style="text-align: center; font-size: 35px;"><a href="adminInfo"  class='atag'>관리내역</a><br/><br/></li>
            <li class="lipont"><a href="declareWrite"  class='atag'>신고내역</a><br/><br/></li>
            <li class="lipont"><a href="questionList"  class='atag'>1:1문의</a><br/><br/></li>
            <li class="lipont"><a href="memberList"  class='atag'>회원관리</a><br/><br/></li>
            <li class="lipont"><a href="permitWriApply"  class='atag'>작가 전환/가입신청</a><br/><br/></li>
            <li class="lipont"><a href="categoryEdit"  class='atag'>카테고리 관리<br/></a><br/></li>

        </ul>
</body>
</html>