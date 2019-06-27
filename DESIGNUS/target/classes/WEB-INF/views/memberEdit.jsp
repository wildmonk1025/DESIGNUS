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
body {
	margin: auto;
	width: 1520px;
	height: auto;
	overflow: auto;
}


#join {
	top: 500px;
	left: 200px;
}

#logoimg {
	width: 250px;
	height: 100px;
}

#norjoinFrm {
	position: relative;
	top: 50px;
	left: 400px;
}

.memberN {
	font-size: 15;
	height: 40;
}

#btz {
	position: relative;
	width: 70;
	height: 40;
}

#leftmain {
	width: 310px;
	height: 950x;
	float: left;
}

#rightmain {
	width: 1200px;
	height: 950px;
	float: left;
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
	height: 40px;
}

#norjoinFrm2 {
	position: relative;
	top: 50px;
	left: 300px;
}

#mb_email {
	font-size: 15;
	width: 200px;
	height: 40px;
	float: left;
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

#null {
	font-size: 15px;
	width: 20px;
}

#i2 {
	position: relative;
	top: 10px;
	left: 150px;
}

#point {
	margin: 0px 10px 10px 10px;
	width: 280px;
	height: 60px;
	text-align: left;
	font-size: 20px;
	float: left;
}

#img {
	margin-top: 20px;
	margin: 20px 10px 10px 10px;
	width: 280px;
	height: 290px;
	text-align: left;
	font-size: 20px;
	float: left;
}

#one {
	width: 100%;
	height: 100%;
}


#notice {
	padding-top: 5px;
	margin: 10px;
	width: 1080px;
	height: 100px;
	font-size: 20px;
	float: left;
}

}
#info {
	margin: 0px 10px 10px 10px;
	width: 280px;
	height: 580px;
	font-size: 20px;
	text-align: left;
	float: left;
}

#main {
	width: 1520px;
	height: 170px;
}



a {
	color: red
}

.btn1 {
	display: inline-block;
	vertical-align: top;
	position: relative;
	overflow: hidden;
	min-width: 96px;
	line-height: 46px;
	padding: 0 24px;
	font-size: 14px;
	color: white;
	text-decoration: none;
	text-shadow: 0 1px #154c86;
	background-color: #247edd;
	background-clip: padding-box;
	border: 1px solid;
	border-color: #1c65b2 #18589c #18589c;
	border-radius: 4px;
	-webkit-box-shadow: inset 0 1px rgba(255, 255, 255, 0.4), 0 1px 2px
		rgba(0, 0, 0, 0.2);
	box-shadow: inset 0 1px rgba(255, 255, 255, 0.4), 0 1px 2px
		rgba(0, 0, 0, 0.2);
	background-image: -webkit-linear-gradient(top, rgba(255, 255, 255, 0.3),
		rgba(255, 255, 255, 0) 50%, rgba(0, 0, 0, 0.12) 51%,
		rgba(0, 0, 0, 0.04));
	background-image: -moz-linear-gradient(top, rgba(255, 255, 255, 0.3),
		rgba(255, 255, 255, 0) 50%, rgba(0, 0, 0, 0.12) 51%,
		rgba(0, 0, 0, 0.04));
	background-image: -o-linear-gradient(top, rgba(255, 255, 255, 0.3),
		rgba(255, 255, 255, 0) 50%, rgba(0, 0, 0, 0.12) 51%,
		rgba(0, 0, 0, 0.04));
	background-image: linear-gradient(to bottom, rgba(255, 255, 255, 0.3),
		rgba(255, 255, 255, 0) 50%, rgba(0, 0, 0, 0.12) 51%,
		rgba(0, 0, 0, 0.04));
}

#spon {
	margin: 10px; 
	width: 1080px;
	height: 800px;
	float: left;
}

#pp {
	color: red;
}



h, td, tr, input, textarea, select, FORM {
	font-family: 고딕;
	font-size: 1em;
	border-radius: 5px;
}

#table1 {
	width: 100%;
	height: 80%;
	border-spacing: 10px;
}

#mypagemain {
	width: 1530px;
	height: 1200px;
}

.memberN {
	font-size: 15;
	width: 90%;
	height: 40;
}

a:active {
	text-decoration: none;
	color: #646464;
}

a:visited {
	text-decoration: none;
	color: #646464;
}

a:link {
	text-decoration: none;
	color: #646464;
}

a:hover {
	text-decoration: none;
	color: #646464;
}

#header {
	padding: 3px;
	width: 1510px;
	height: 100px;
	float: left;
}

#logo {
	padding: 5px;
	width: 270px;
	height: 80px;
	float: left;
}

#search {
	margin-left: 100px;
	padding-left: 120px;
	padding-right: 120px;
	padding-top: 20px;
	width: 570px;
	height: 80px;
	float: left;
}

#loginwriter {
	padding: 3px;
	padding-top: 20px;
	width: 300px;
	height: 80px;
	float: right;
}

#category {
	float: left;
	width: 1500px;
	height: 50px;
}

#searchtxt {
	margin: 50px, 20px;
	width: 300px;
	height: 30px;
}

#subcategory {
	width: 50px;
	height: 50px;
	color: white;
	font-size: 30px;
	float: left;
}

#menu {
	float: left;
	width: 1400px;
	height: 50px
}

#submenu {
	margin-left: 100px;
	width: 150px;
	float: left;
	height: 50px;
	font-size: 18px;
}

#msg {
	width: 50px;
	height: 50px;
	margin-left: 10px;
	float: left;
}

#mypageimg {
	float: left;
	width: 50px;
	height: 50px;
	margin-left: 5px;
}

#loginmsg {
	float: left;
	width: 130px;
	height: 50px;
	margin-left: 10px;
}

#mainheader {
	border: 1px solid #F5BCA9;
	background-color: white;
	width: 1520px;
	height: 170px;
	z-index: 1000;
	box-shadow: 3px 0px 8px -3px rgba(0, 0, 0, 0.56);
}

#mypagemain {
	width: 1530px;
	height: 1200px;
}
#dddd{
	width: 1518px;
	height: 1000px;
	box-shadow: 3px 0px 8px -3px rgba(0, 0, 0, 0.56);
	margin-top: 40px;
}
#footer {
	border: 1px solid red;
	width: 1518px;
	height: 180px;
	margin-top: 20px;
	border: 1px solid #f0f0f0;
}
</style>
</head>

<body>
	<div id="mainheader">
		<jsp:include page="main.jsp" />
	</div>

	<div id="mypagemain">
	<div id="dddd">
		<div id="leftmain">
			<jsp:include page="Mapagemain.jsp" />
		</div>
		<div id="rightmain">
			<div id="notice">
				<h2>개인 정보 수정</h2>
			</div>
			
			<div id="spon">
				<form action=" memberrevise" method="POST"
					enctype="multipart/form-data">
					<table cellspacing="1" id="table1">
						<tr>
							<td>아이디</td>
							<td>${id}</td>
						</tr>
						<tr align="left">
							<td>비밀번호</td>
							<td><input type="password" name="mb_pw" id="mb_pw"
								value="${mb.mb_pw}"></td>
						</tr>
						<tr>
							<td>비밀번호 확인</td>
							<td><input type="password" />&nbsp;비밀번호 확인 메세지</td>
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
							<th>상세주소</th>
						<td><div class="form-group">
								<input class="form-control"
									style="top: 5px; width: 300px; height: 30px"
									placeholder="도로명 주소" name="addr2" id="addr2" type="text"
									readonly="readonly" 
									value="${mb.mb_address}"/>
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
							<td>프로필 사진</td>
							<td><input id="mb_profile" class="memberN" type="file"
								name="mb_profile" value="${mb.mb_profile}"
								onchange="fileChk(this)" multiple> <input type="hidden"
								id="fileCheck" value="1" name="fileCheck"></td>
						</tr>

						<tr>
							<td>이메일</td>
							<td><input type="text" name="mb_email" id="mb_email"
								value="${mb.mb_email}" /></td>
						</tr>

					</table>
					<div id="modif">
					<button class="btn1">수정하기</button>
					<button class="btn1" type="button"
						onclick="location.href='mypage' ">돌아가기</button>

				</div>
		
				</form>
	
			</div>
		
		</div>
		<div id="footer">
			<hr style="width: 100%; border: 2px solid coral; align: center;">
			<jsp:include page="footer.jsp"></jsp:include>
		</div>
		
</body>
<script>
	function fileChk(elem) {
		console.dir(elem);
		if (elem.value == "") {
			console.log("empty");
			$('#fileCheck').val(0); //파일 첨부 안했음
		} else {
			console.log("Notempty")
			$('#fileCheck').val(1);//파일 첨부 했음
		}
	}
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
</script>
</html>
