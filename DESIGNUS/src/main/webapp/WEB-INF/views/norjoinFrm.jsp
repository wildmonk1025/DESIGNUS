<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<style>
div {
	margin: auto;
}

#join {
	width: 800px;
	height: 800px;
	text-align: center;
	border: 1px solid black;
}

#logoimg {
	margin: 10px;
	width: 250px;
	height: 100px;
}

#nontable {
	width: 700px;
	height: 600px;
	text-align: center;
}

#norjoinFrm {
	margin: auto;
	width: 500px;
	text-align: center;
	height: auto;
}

.memberN {
	font-size: 15px;
	width: 300px;
	height: 30px;
}

#btz {
	width: 70;
	height: 40;
}

#norjoinFrm2 {
	position: relative;
	top: 50px;
	left: 300px;
}

#Echeck {
	width: 100;
	height: 40;
}

#null {
	font-size: 15px;
	width: 20px;
}

.btz2 {
	margin-top: 20px;
	/*General*/
	display: inline-block;
	text-decoration: none;
	/*Text*/
	font-family: "Helvetica Neue", Helvetica, Arial, sans-serif;
	font-size: 13px;
	font-weight: bold;
	line-height: 240%;
	color: rgb(162, 136, 44);
	text-align: center;
	text-shadow: 0px 1px 0px rgba(255, 255, 255, 0.25);
	/*Button*/
	background-color: #FFE79E;
	background-image: -moz-linear-gradient(53% 100% 90deg, rgb(212, 212, 212)
		0%, rgb(237, 237, 237) 100%);
	background-image: -webkit-gradient(linear, 53% 100%, 53% 3%, color-stop(0, rgb(212, 212,
		212)), color-stop(1, rgb(237, 237, 237)));
	background-image: -webkit-linear-gradient(90deg, rgb(212, 212, 212) 0%,
		rgb(237, 237, 237) 100%);
	background-image: -o-linear-gradient(90deg, rgb(212, 212, 212) 0%,
		rgb(237, 237, 237) 100%);
	background-image: -ms-linear-gradient(90deg, rgb(212, 212, 212) 0%,
		rgb(237, 237, 237) 100%);
	background-image: linear-gradient(90deg, rgb(212, 212, 212) 0%,
		rgb(237, 237, 237) 100%);
	width: 200px;
	height: 70px;
	border-color: rgb(223, 192, 86);
	border-width: 1px;
	-moz-border-radius: 3px;
	-webkit-border-radius: 3px;
	border-radius: 3px;
	border-style: solid;
	-moz-box-shadow: 0px 0px 0px 3px rgba(0, 0, 0, 0.1), inset 0px 1px 0px
		rgba(255, 255, 255, 0.25);
	-webkit-box-shadow: 0px 0px 0px 3px rgba(0, 0, 0, 0.1), inset 0px 1px
		0px rgba(255, 255, 255, 0.25);
	box-shadow: 0px 0px 0px 3px rgba(0, 0, 0, 0.1), inset 0px 1px 0px
		rgba(255, 255, 255, 0.25);
	-ms-filter: "progid:DXImageTransform.Microsoft.gradient(startColorstr=#ffffefbf,
		endColorstr=#ffffe185, GradientType=0) progid:DXImageTransform.Microsoft.Glow(Color=#ff000000,
		Strength=3)";
	filter: progid:DXImageTransform.Microsoft.gradient(startColorstr=#ffffefbf,
		endColorstr=#ffffe185, GradientType=0) progid:DXImageTransform.Microsoft.Glow(Color=#ff000000,
		Strength=3);
	display: inline-block;
	background-image: -webkit-gradient(linear, 53% 100%, 53% 3%, color-stop(0, rgb(212, 212,
		212)), color-stop(1, rgb(237, 237, 237)));
	background-image: -webkit-linear-gradient(90deg, rgb(212, 212, 212) 0%,
		rgb(237, 237, 237) 100%);
	background-image: -o-linear-gradient(90deg, rgb(212, 212, 212) 0%,
		rgb(237, 237, 237) 100%);
	background-image: -ms-linear-gradient(90deg, rgb(212, 212, 212) 0%,
		rgb(237, 237, 237) 100%);
	background-image: linear-gradient(90deg, rgb(212, 212, 212) 0%,
		rgb(237, 237, 237) 100%);
}

.btz2:hover {
	color: white;
}

.btz2:active {
	color: yellow;
}

#checkbx {
	padding-top: 10px;
	width: 400px;
	height: 100px;
	text-align: left;
}
</style>
</head>
<body>
	<div id="join">

		<a href="home"><img id="logoimg" src="./images/logo.png" /></a>

		<form action="memberapply" name="memberapplyFrm" method="post"
			enctype="multipart/form-data" onsubmit="return joinCheck()">

			<div id="nontable">
				<table id="norjoinFrm">
					<tr>
						<th>아이디</th>
						<td><input class="memberN" type="text" name="mb_id"
							id="mb_id"></td>
						<td><input id="btz" type="button" value="중복확인"></td>
						<td><input type="hidden" id="idChk" value="N" /></td>
						<!-- ID체크 했는지 안 했는지 -->
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
						<td><input id="mb_birth" class="memberN" type="text"
							name="mb_birth"></td>
					</tr>
					<tr>
						<th>프로필 사진</th>
						<td><input id="mb_profile" class="memberN" type="file"
							name="mb_profile" onchange="fileChk(this)" multiple> <input
							type="hidden" id="fileCheck" value="0" name="fileCheck"></td>
					</tr>
					<tr>
						<th>주소</th>
						<td><input id="mb_address" class="memberN" type="text"
							name="mb_address"></td>
					</tr>
					<tr>
						<th>이메일</th>
						<td><input id="mb_email" type="text" name="mb_email"
							class="memberN"></td>
						<td><input id="Echeck" type="button" value="이메일 인증"
							onclick="emailcheck()"></td>
					</tr>
					<tr>
						<td><input id="joinhidden" type="hidden"></td>
					</tr>
				</table>
				<div id="checkbx">
					<input id="che" name="check1" type="checkbox" value="1">전체동의<br>
					<input class="i1" id="chk2" name="chk2" type="checkbox" value="1">이용약관(필수)<br>
					<input class="i2" type="checkbox" id="Chk3" name="chk3" value="1">개인정보
					수집 및 이용(필수)<br> <input class="i3" type="checkbox">개인정보
					수집 및 이용(선택)<br>
				</div>

				<div id="joinbox">
					<input class="btz2" type="submit" value="회원가입"> <input
						class="btz2" type="reset" value="취소">
				</div>

			</div>
		</form>
	</div>
</body>
<script>
	function fileChk(elem) {
		console.dir(elem);
		if (elem.value == "") {
			console.log("empty");
			$('#fileCheck').val(0); //파일 첨부 안했음
			alert("파일첨부 해주세요!!!")
		} else {
			console.log("Notempty")
			$('#fileCheck').val(1);//파일 첨부 했음
		}
	}

	var idck = 0;
	$(function() {
		$('#btz').click(function() {
			var mbid = $("#mb_id").val();
			$.ajax({
				async : true,
				type : 'post',
				data : mbid,
				url : "memberlapcheck",
				dataType : "json",
				contentType : "application/json; charset=UTF-8",
				success : function(data) {
					if (data.cnt > 0) {
						alert("아이디가 존재합니다.");
						$("#idChk").val("Y");
						$("#mb_id").focus();
					} else {
						alert("사용가능한 아이디래용.");
						$("#idChk").val("N");
						//아이디가 중복하지 않으면 idck=1
						idck = 1;
					}
				},
				error : function(error) {
					alert("error:" + error);
				}
			});
		});
	});
	function joinCheck() {
		var mbid = $("#mb_id").val();
		var mbpw = $("#mb_pw").val();
		var mbpw2 = $("#mb_pwcheck").val();
		var mbname = $("#mb_name").val();
		var mbbirth = $("#mb_birth").val();
		var mbaddr = $("#mb_address").val();
		var chk1 = $("#chk2").val();
		var chk2 = $("#chk3").val();
		var email = $("#mb_email").val()

		if (mbid.length == 0) {
			alert("아이디를 입력해주세요.");
			$("#mb_id").focus();
			return false;
		}

		if (mbpw.length == 0) {
			alert("비밀번호를 입력해주세요.");
			$("#mb_pw").focus();
			return false;
		}
		if (mbpw != mbpw2) {
			alert("비밀번호확인이 일치하지 않습니다. 비밀번호를 확인해주세요.")
			$("#mb_pwcheck").focus();
			return false;
		}

		if (mbname.length == 0) {
			alert("이름을 입력해주세요.")
			$("#mb_name").focus();
			return false;
		}
		if (mbbirth.length == 0) {
			alert("생일을 입력해주세요.")
			$("#mb_birth").focus();
			return false;
		}
		if (mbaddr.length == 0) {
			alert("주소를 입력해주세요.")
			$("#mb_address").focus();
			return false;
		}
		if (email.length == 0) {
			alert("이메일을 입력하세요.")
			$("#mb_email").focus();
			return false;
		}
		if ($('#fileCheck').val() == 0) {
			alert("프로필 이미지를 첨부해주세요.")
			return false;
		}
		if ($("input:checkbox[name=chk2]").is(":checked") == false) {
			alert("이용약관에 동의해주세요.")
			return false;
		}
		if ($("input:checkbox[name=chk3]").is(":checked") == false) {
			alert("개인정보 수집 약관에 동의해주세요.")
			return false;
		}
		if (confirm("회원가입을 하시겠습니까?")) {
			if (idck == 0) {
				alert("아이디 중복체크를 진행해주세요.")
				return false;
			} else {
				alert("회원가입을 축하합니다!");
				$("#memberapplyFrm").submit();
			}
		}
	}
	$(function() { //전체선택 체크박스 클릭
		$("#che").click(function() {
			//만약 전체 선택 체크박스가 체크된상태일경우 
			if ($("#che").prop("checked")) {
				//해당화면에 전체 checkbox들을 체크해준다
				$("input[type=checkbox]").prop("checked", true);
				// 전체선택 체크박스가 해제된 경우 
			} else {
				//해당화면에 모든 checkbox들의 체크를해제시킨다.
				$("input[type=checkbox]").prop("checked", false);
			}
		})
	})
</script>
</html>