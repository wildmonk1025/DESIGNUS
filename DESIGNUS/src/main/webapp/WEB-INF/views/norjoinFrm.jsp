<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
   #logoimg {
	width: 250px;
	height: 100px;
	position: relative;
	top: 40px;
	left: 840px;
}
    #norjoinFrm{
    position: relative;
	top: 50px;
	left: 760px;
    }
    .memberN{
        font-size: 25; 
        width: 200;
        height: 40;
    }
    #btz{
      width: 70;
        height: 40;
    }
    #memberS{
    position: relative;
	top: 80px;
	left: 800px; 
    }
    .btz2{
        position: relative;
	    top: 20px;
        width: 160;
        height: 40 
    }

</style>
</head>
<body>

<a href="home"><img id="logoimg" src="images/logo"></a>

<form action="memberapply" name="memberapplyFrm" method="post">
<table id="norjoinFrm">
    <tr>
        <th>아이디</th><td><input class="memberN" type="text" name="mb_id" id="mb_id"></td>
        <td><button id="btz" onclick="memberlapcheck()">중복확인</button></td>
    </tr>
     <tr>
        <th>비밀번호</th><td><input class="memberN" type="password" name="mb_pw" id="mb_pw"></td>
    </tr>
    <tr>
        <th>비밀번호 확인</th>
        <td><input class="memberN" type="password" name="mb_pwcheck" id="mb_pwcheck"></td>
    </tr>
    <tr>
        <th><span id="pwcheck"></span></th>
    </tr>
    <tr>
        <th>이름</th>
        <td><input class="memberN" type="text" name="mb_name" id="mb_name"></td>
    </tr>
    <tr>
        <th>생년월일</th>
        <td><input class="memberN" type="password" name="mb_pwcheck" id="mb_pwcheck"></td>
    </tr>
    <tr>
        <th>프로필 사진</th>
        <td><input class="memberN" type="password" name="mb_pwcheck" id="mb_pwcheck"></td>
    </tr>
    <tr>
        <th>주소</th>
        <td><input class="memberN" type="password" name="mb_pwcheck" id="mb_pwcheck"></td>
    </tr>
    <tr>
        <th>이메일</th>
        <td><input class="memberN" type="password" name="mb_pwcheck" id="mb_pwcheck"></td>
    </tr>
</table>
<div id="memberS">
<input id="che" type="checkbox">전체동의<br>
            <input class="i1" type="checkbox">이용약관(필수)<br>
            <input class="i1" type="checkbox">개인정보 수집 및 이용(필수)<br>
            <input class="i1" type="checkbox">개인정보 수집 및 이용(선택)<br>
<input class="btz2" type="button" value="회원가입">
<input class="btz2" type="reset" value="취소"> 
</div>
</form>

</body>
</html>