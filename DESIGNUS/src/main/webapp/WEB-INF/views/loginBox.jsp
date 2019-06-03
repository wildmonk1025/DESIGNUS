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
}

#login {
	font-size: 20px;
	bloat: left;
}

#mb_id {
	width: 250px;
	height: 40px;
}

#mb_pw {
	width: 250px;
	height: 40px;
	margin-bottom: 20px;
}

#logcheck {
	top: 10px;
}

#mfind {
	top: 15px;
}

#loginbtz {
	top: 25px;
}

.btz {
	width: 400px;
	height: 50px;
	font-size: 25px;
}

#haha {
	top: 10px;
	font-size: 25px;
	/*text-decoration: none;*/
	text-align: center;
	font-size: 25px;
}

#loginFrmmain {
	width: 600px;
	height: 500px;
	border: 1px solid black;
}

#logomain {
	width: 430px;
	height: 100px;
	float: left;
	border: 1px solid black;
	padding-left: 170px;
	fliat: left;
}

#loginBBox {
	margin-top: 50px;
	margin-left: 100px;
	width: 400px;
	height: 300px;
	float: left;
	text-align: center;
}
</style>
</head>
<body>
	<div id="loginFrmmain">
		<div id="logomain">
			<a href="home"><img id="logoimg" src="./images/logo.png"></a>
		</div>
		<div id="loginBBox">
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
						로그인 유지<input type="checkbox" id="loging" /><br />
					</div>
					<div id="mfind">
						<a href="memberfind">아이디 | 비빌번호 찾기</a><br />
					</div>
					<div id="loginbtz">
						<button class="btz">로그인</button>
						<a id="haha" href="joinfrm">회원가입</a>

					</div>

				</div>
			</form>
		</div>
	</div>
</body>
</html>