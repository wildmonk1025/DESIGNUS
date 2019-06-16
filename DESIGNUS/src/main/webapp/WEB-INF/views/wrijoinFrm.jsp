<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<meta charset="UTF-8">
<title>Insert title here</title>
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

#writable {
	width: 700px;
	height: 600px;
	text-align: center;
}

#wrijoinFrm {
	margin: auto;
	width: 520px;
	text-align: center;
	height: auto;
}

#logoimg {
	margin: 10px;
	width: 250px;
	height: 100px;
}

.memberN {
	font-size: 15px;
	width: 300px;
	height: 30px;
}

#btz {
	width: 70px;
	height: 40px;
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

#mb_email2 {
	font-size: 15;
	width: 200px;
	height: 40;
}

#emailList {
	font-size: 15;
	width: 100px;
	height: 40;
}

#Echeck {
	width: 100;
	height: 40;
}

#null {
	font-size: 15px;
	width: 20px;
}

#checkbx {
	padding-top: 10px;
	width: 400px;
	height: 100px;
	text-align: left;
}
#eacheck{
  display: none;
}
</style>
</head>
<body>
	<div id="join">
		<div id="null"></div>
		<a href="home"><img id="logoimg" src="./images/logo.png" /></a>

		<form action="wriapply" name="wrimemberapplyFrm" method="post"
			enctype="multipart/form-data" onsubmit="return joinCheck2()">

			<div id="writable">
				<table id="wrijoinFrm">
					<tr>
						<th>아이디</th>
						<td><input class="memberN" type="text" name="mb_id"
							id="mb_id"></td>
						<td><input id="idcheckbtz" type="button" value="중복확인" /></td>
					</tr>
					<tr>
						<td colspan="3" align="right"><p class="result">
								<span class="msg"> 아이디를 확인해주세요.</span></td>
					<tr>
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
							name="mb_profile" onchange="fileChk(this)"> <input
							type="hidden" id="fileCheck" value="0" name="fileCheck"></td>
					</tr>
					<tr>
						<th>전공</th>
						<td><select id="mj_cg_code" name="mj_cg_code" class="memberN">
								<option value="100">전공선택</option>
								<option value="110">귀금속</option>
								<option value="120">도예</option>
								<option value="130">가죽</option>
						</select></td>
					</tr>
					<tr>
						<th>포트폴리오</th>
						<td><input id="mj_portf" class="memberN" type="file"
							name="mj_portf" onchange="fileChk2(this)" value="4"> <input
							type="hidden" id="fileCheck2" value="3" name="fileCheck2"></td>
					</tr>
					<tr>
						<th>주소</th>
						<!-- <td><input id="mb_address" class="memberN" type="text"
							name="mb_address"></td> -->
						<td><div class="form-group">
								<input class="form-control"
									style="top: 5px; width: 180px; height: 30px" placeholder="우편번호"
									name="addr1" id="addr1" type="text" readonly="readonly">
								<button type="button" class="btn btn-default"
									onclick="execPostCode();">
									<i class="fa fa-search"></i> 우편번호 찾기
								</button>
							</div></td>
					</tr>
					<tr>
						<th></th>
						<td><div class="form-group">
								<input class="form-control"
									style="top: 5px; width: 300px; height: 30px"
									placeholder="도로명 주소" name="addr2" id="addr2" type="text"
									readonly="readonly" />
							</div></td>
					</tr>
					<tr>
						<th></th>
						<td>
							<div class="form-group">
								<input class="form-control" placeholder="상세주소" name="addr3"
									style="width: 300px; height: 30px" id="addr3" type="text" />
							</div>
						</td>
					</tr>
					<tr>
						<th>이메일</th>
						<td><input id="mb_email" type="email" class="memberN"
							name="mb_email" width="300"></td>
						<!-- 	<td><select id="emailList" class="Data">
							<option value="1">직접입력</option>
							<option value="naver">naver.com</option>
							<option value="daum">daum.net</option>
							<option value="google">google.com</option>
					</select></td> -->

						<td><input id="sendRndNum" type="button" value="이메일 인증"></td>
						<td><input id="joinhidden" type="hidden"></td>
					</tr>
					<tr id="eacheck">
					<th>인증번호 입력</th>
					<td><input id="emailNum" type="text"
					     style="width: 300px; height: 30px"></td>
						<td><input id="sendRndNumCheck" type="button" value="인증 확인"></td>
					</tr>
				</table>
				<div id="checkbx">
					<input id="che" name="check1" type="checkbox" value="1">전체동의<br>
					<input class="i1" id="chk2" name="chk2" type="checkbox">이용약관(필수)<br>
					<input class="i2" type="checkbox" id="Chk3" name="chk3">개인정보
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
			focus();
		} else {
			console.log("Notempty");
			$('#fileCheck').val(1);//파일 첨부 했음
		}
	}
	function fileChk2(elem) {
		console.dir(elem);
		if (elem.value == "") {
			console.log("wriempty");
			$('#fileCheck2').val(3); //파일 첨부 안했음
			focus();

		} else {
			console.log("wriNotempty");
			$('#fileCheck2').val(4);//파일 첨부 했음
		}
	}
	/* 	$(document).ready(function(){
	 $('#idcheckbtz').on('click',function(){
	 $.ajax({
	 type:'POST',
	 url:'/HomeControllerjy/memberidfind'
	 data:{
	
	 }})
	 })}
	 }) */
	var idck = 0;
	$(function() {
		$('#idcheckbtz').click(function() {
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
						$(".result .msg").text("사용할 수 없습니다.");
						$(".result .msg").attr("style", "color:#f00");
						$("#mb_id").focus();
					} else {
						$(".result .msg").text("사용 가능한 아이디입니다.");
						$(".result .msg").attr("style", "color:#00f");
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
	function joinCheck2() {
		var mbid = $("#mb_id").val();
		var mbpw = $("#mb_pw").val();
		var mbpw2 = $("#mb_pwcheck").val();
		var mbname = $("#mb_name").val();
		var mbbirth = $("#mb_birth").val();
		var chk1 = $("#chk2").val();
		var chk2 = $("#chk3").val();
		var cate = $("#mj_cg_code").val();
		var email = $("#mb_email").val()
		var mbaddr = $("#addr1").val();
		var mbaddr2 = $("#addr2").val();
		var mbaddr3 = $("#addr3").val();

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
			alert("우편번호를 입력해주세요.")
			$("#addr1").focus();
			return false;
		}
		if (mbaddr2.length == 0) {
			alert("주소를 입력해주세요.")
			$("#addr2").focus();
			return false;
		}
		if (mbaddr3.length == 0) {
			alert("상세주소를 입력해주세요.")
			$("#addr3").focus();
			return false;
		}
		if (cate == 100) {
			alert("카테고리를 선택해주세요.")
			return false;
		}
		if ($('#fileCheck').val() == 0) {
			alert("프로필 이미지를 첨부해주세요.")
			return false;
		}
		if ($('#fileCheck2').val() == 3) {
			alert("가입신청을 위해 포트폴리오를 첨부해주셔야합니다.")
			return false;
		}
		if (email.length == 0) {
			alert("이메일을 입력하세요.")
			$("#mb_email").focus();
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

		if (confirm("가입 신청을 하시겠습니까?")) {
			if (idck == 0) {
				alert("아이디 중복체크를 진행해주세요.")
				return false;
			} else {
				alert("정상적으로 가입신청 되었습니다!");
				$("#wrimemberapplyFrm").submit();
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

	function execPostCode() {
		new daum.Postcode({
			oncomplete : function(data) {
				// 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

				// 도로명 주소의 노출 규칙에 따라 주소를 조합한다.
				// 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
				var fullRoadAddr = data.roadAddress; // 도로명 주소 변수
				var extraRoadAddr = ''; // 도로명 조합형 주소 변수

				// 법정동명이 있을 경우 추가한다. (법정리는 제외)
				// 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
				if (data.bname !== '' && /[동|로|가]$/g.test(data.bname)) {
					extraRoadAddr += data.bname;
				}
				// 건물명이 있고, 공동주택일 경우 추가한다.
				if (data.buildingName !== '' && data.apartment === 'Y') {
					extraRoadAddr += (extraRoadAddr !== '' ? ', '
							+ data.buildingName : data.buildingName);
				}
				// 도로명, 지번 조합형 주소가 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
				if (extraRoadAddr !== '') {
					extraRoadAddr = ' (' + extraRoadAddr + ')';
				}
				// 도로명, 지번 주소의 유무에 따라 해당 조합형 주소를 추가한다.
				if (fullRoadAddr !== '') {
					fullRoadAddr += extraRoadAddr;
				}

				// 우편번호와 주소 정보를 해당 필드에 넣는다.
				console.log(data.zonecode);
				console.log(fullRoadAddr);

				$("[name=addr1]").val(data.zonecode);
				$("[name=addr2]").val(fullRoadAddr);

				/* document.getElementById('signUpUserPostNo').value = data.zonecode; //5자리 새우편번호 사용
				document.getElementById('signUpUserCompanyAddress').value = fullRoadAddr;
				document.getElementById('signUpUserCompanyAddressDetail').value = data.jibunAddress; */
			}
		}).open();
	}
	//인증메일전송
	var mail = null;
	$('#sendRndNum').click(function() {
		$.ajax({
			url : "sendrndnum",
			type : "post",
			data :{"mb_email" : $("#mb_email").val()},
			dataType : "html",
			/*data:{m_id : $('#m_id').val(), sdf:"sdfsdfdfsdf"},*/
			success : function(data) {
				mail = data;
				console.log("data" + data);
				console.log("mail" + mail);
				$("#eacheck").show();
				alert("인증번호를  발송하였습니다");
		
		},

			error : function(error) {

				console.log(error);

				alert(" 실패 ");

			}
		});//end ajax
	});//end click
	//인증번호 체크

	$("#sendRndNumCheck").click(function() {

		console.log(mail);

		if ($("#emailNum").val() == mail) {

			$('#joinbtn').prop("disabled", false);

			alert("인증되었습니다")

		} else {

			alert("인증번호를 다시 확인해주세요")

		}

	});
</script>
</html>