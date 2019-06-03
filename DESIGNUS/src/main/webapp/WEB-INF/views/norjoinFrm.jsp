<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<style>
#join {
	position: relative;
	top: 40px;
	left: 100px;
}

#logoimg {
	width: 250px;
	height: 100px;
	position: relative;
	top: 40px;
	left: 500px;
}

#norjoinFrm {
	position: relative;
	top: 50px;
	left: 400px;
}

.memberN {
	font-size: 15;
	width: 90%;
	height: 40;
}

#btz {
	position: relative;
	width: 70;
	height: 40;
}

#memberS {
	position: relative;
	top: 80px;
	left: 400px;
}

.btz2 {
	position: relative;
	top: 20px;
	left: 120px;
	width: 300px;
	height: 40
}

#norjoinFrm2 {
	position: relative;
	top: 50px;
	left: 300px;
}

#mb_email{
	font-size: 15;
	width: 200px;
	height: 40;
	position: relative;
	left: -98px;
}
#mb_email2 {
	font-size: 15;
	width: 200px;
	height: 40;
	position: relative;
	right: 175px;
}
#emailList {
	font-size: 15;
	width: 100px;
	height: 40;
	position: relative;
	right: 175px;
}
#Echeck {
	width: 100;
	height: 40;
	position: relative;
	top: 10px;
	left: 450px;
}
#null{
	position:absolute;
	font-size:15px;
	width: 20px;
	top:360px;
	left: 715px;
	
}
#i2{
 position: relative;
	top: 10px;
	left: 150px;
}

</style>
</head>
<body>
	<div id="join">
	<div id="null">@</div>
		<a href="home"><img id="logoimg" src="./images/logo.png" /></a>

		<form action="memberapply" name="memberapplyFrm" method="post" enctype="multipart/form-data">

			<table id="norjoinFrm">
				<tr>
					<th>아이디</th>
					<td><input class="memberN" type="text" name="mb_id" id="mb_id"></td>
					<td><input id="btz" type="button" value="중복확인"></td>
				</tr>
				<tr>
					<th>비밀번호</th>
					<td><input class="memberN" type="password" name="mb_pw"
						id="mb_pw"></td>
				</tr>
				<tr>
					<th>비밀번호 확인</th>
					<td><input class="memberN" type="password" name="mb_pwcheck"
						id="mb_pwcheck"></td>
				</tr>
				<tr>
					<th><span id="pwcheck"></span></th>
				</tr>
				<tr>
					<th>이름</th>
					<td><input class="memberN" type="text" name="mb_name"
						id="mb_name"></td>
				</tr>
				<tr>
					<th>생년월일</th>
					<td><input id="mb_birth" class="memberN" type="text" name="mb_birth"></td>
				</tr>
				<tr>
					<th>프로필 사진</th>
					<td><input id="mb_profile" class="memberN" type="file" name="mb_profile" 
					     onchange="fileChk(this)"multiple>
					     <input type="hidden" id="fileCheck" value="0" name="fileCheck"> </td>
				</tr>
				<tr>
					<th>주소</th>
					<td><input id="mb_address" class="memberN" type="text" name="mb_address"></td>
				</tr>
			</table>
			<table id="norjoinFrm2">

				<tr>
					<th>이메일</th>
					<td><input id="mb_email" type="text" name="mb_email"></td>
					<td><input id="mb_email2" type="text" name="mb_email2"></td>
					<td><select id="emailList" class="Data">
							<option value="1">직접입력</option>
							<option value="naver">naver.com</option>
							<option value="daum">daum.net</option>
							<option value="google">google.com</option>
					</select></td>

				</tr>
				<tr>
					<td><input id="Echeck" type="button" value="이메일 인증"
						onclick="emailcheck()"></td>
					<td><input id="joinhidden" type="hidden"></td>
				</tr>
				<tr>
					<td id="i2"><input id="che" type="checkbox">전체동의<br> <input
						class="i1" type="checkbox">이용약관(필수)<br> <input
						class="i1" type="checkbox">개인정보 수집 및 이용(필수)<br> <input
						class="i1" type="checkbox">개인정보 수집 및 이용(선택)<br></td>
				</tr>
				<tr>
					<td>
							<td><input class="btz2" type="submit" value="회원가입"></td> 
						</td>
						<td> 
						<input class="btz2" type="reset" value="취소">
					   </td>
				</tr>
			</table>
		</form>
	</div>
</body>
<script>
function fileChk(elem) {
	console.dir(elem);
	if(elem.value==""){
		console.log("empty"); 
		$('#fileCheck').val(0); //파일 첨부 안했음
	}else{
		console.log("Notempty")
		$('#fileCheck').val(1);//파일 첨부 했음
	}
}
</script>
</html>