<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
div {
	margin: auto;
}

#logoimg {
	width: 250px;
	height: 100px;
	position: relative;
	top: 150px;
	left: 620px;
}

#login {
	position: relative;
	top: 150px;
	left: 580px;
	font-size: 20px;
}

#mb_id {
	width: 250px;
	height: 40px;
}

#mb_pw {
	width: 250px;
	height: 40px;
}

#logcheck {
	position: relative;
	top: 10px;
	left: 220px;
}

#mfind {
	position: relative;
	top: 15px;
	left: 100px;
}

#loginbtz {
	position: relative;
	top: 25px;
	left: 20px;
}

.btz {
	width: 400px;
	height: 50px;
	font-size: 25px;
}

#haha {
	position: relative;
	top: 200px;
	left: 750px;
	font-size: 25px;
	/*text-decoration: none;*/
}
</style>
</head>
<body>
	<a href="home"><img id="logoimg" src="./images/logo.png"></a>

	<form action="login" name="loginFrm" method="post">
		<div id="login">
			<table id="idpw">
				<tr>
					<th>아이디</th>
					<th><input type="text" name="mb_id" id="mb_id" /></th>
				</tr>
				<tr>
					<th>비밀번호</th>
					<th><input type="password" name="mb_pw" id="mb_pw" /></th>
				</tr>
			</table>
			<div id="logcheck">
				로그인유지<input type="checkbox" id="loging" /><br />
			</div>
			<div id="mfind">
				<a href="memberfind">아이디 | 비빌번호 찾기</a><br />
			</div>
			<div id="loginbtz">
				<button class="btz">로그인</button>
			</div>
		</div>
	</form>
	<a id="haha" href="joinfrm">회원가입</a>
</body>
<script type="text/javascript">
window.onload=function(){
	var chk=${ckeck};
	if(chk==1){
		alert("회원가입 성공!")
	}
	if(chk==2){
		alert("로그인 실패")
	}
}
</script>

</html>