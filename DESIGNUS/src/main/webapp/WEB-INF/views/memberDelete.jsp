<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
#mainheader {
	border: 1px solid black;
	width: 1520px;
	height: 170px;
}
#articleView_layer {
	display: none;
	position: fixed;
	position: absolute;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%
}

 #articleView_layer.open {
	display: block;
	color: red
} 

#articleView_layer #bg_layer {
	position: absolute;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
	background: #000;
	opacity: .5;
	filter: alpha(opacity = 50);
	z-index: 101;
}

#contents_layer {
	position: absolute;
	top: 40%;
	left: 40%;
	width: 600px;
	height: 600px;
	margin: -150px 0 0 -194px;
	padding: 28px 28px 0 28px;
	border: 2px solid #555;
	background: #fff;
	font-size: 12px;
	z-index: 200;
	color: #767676;
	line-height: normal;
	white-space: normal;
	overflow: scroll
}

#join {
	position: absolute;
	top: 500px;
	left: 200px;
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

#mb_email {
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

#null {
	position: absolute;
	font-size: 15px;
	width: 20px;
	top: 360px;
	left: 715px;
}

#i2 {
	position: relative;
	top: 10px;
	left: 150px;
}

  #point {
            border: 1px solid orange;
            position: absolute;
            width: 300px;
            height: 80px;
            text-align: left;
            left: 190px;
            top: 508px;

            font-size: 20px;
        }

        #img {
            border: 1px solid orange;
            position: absolute;
            width: 300px;
            height: 310px;
            text-align: left;
            left: 190px;
            top: 188px;

            font-size: 20px;

        }

#one {
	position: relative;
	width: 100%;
	height: 100%;
}

div {
	margin: auto;
}

#notice {
	background-color: orange;
	border: 1px solid orange;
	position: absolute;
	width: 1100px;
	height: 60px;
	text-align: center;
	left: 611px;
	top: 180px;
	font-size: 100%
}

#info {
	border: 1px solid orange;
	position: absolute;
	width: 300px;
	height: 600px;
	text-align: left;
	left: 190px;
	top: 600px;
}

#main {
	position: absolute;
	width: 1520px;
	height: 170px;
	left: 183px;
	text-align: center;
}

.bt01 {
	position: absolute;
	right: 100px;
	top: 50px;
}

a {
	color: red
}

#spon {
	border: 1px solid orange;
	width: 1100px;
	height: 700px;
	left: 611px;
	position: absolute;
	top: 275px;
}

#ckbox {
	align-content: center;
	width: 600px;
	height: 70px;
	left: 850px;
	position: absolute;
	top: 985px;
}

#pp {
	color: red;
}

#btn1 {
	text-align: center;
}

#h1 {
	font-size: 70px;
}

#btn2 {
	left: 250px;
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
	align: center;
}

#subcategory {
	width: 50px;
	height: 50px;
	background-color: orange;
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
	text-align: center;
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
#mb_pw,#Delecheck{
 border : 1px solid black;
   color : black;
  position: relative;
	top: 350px;
	left: 850px;
	font-size: 25px;
	z-index: 202;
}
p{
color : black;
  position: relative;
	top: 350px;
	left: 850px;
	font-size: 25px;
	z-index: 202;
}
/* #mb_pw{
 width: 100px;
 height: 50px;
} */
</style>
</head>

<body>
	<div id="one">

		<div id="mainheader">
			<jsp:include page="main.jsp" />
		</div>

		<div id="notice">
			<h2>회원탈퇴 신청</h2>
			<hr>
		</div>
		<div id="info">
			<table width="1000">

				<tr>
					<td style="font-size: 30px"><a href="historylist?list=rev">제작의뢰
							내역</a></td>
				</tr>
				<tr>
					<td style="font-size: 30px"><a href="historylist?list=revre">제작의뢰
							접수내역</a></td>
				</tr>
				<tr>
					<td style="font-size: 30px"><a href="historylist?list=auc">출품작
							구매 내역</a></td>
				</tr>
				<tr>
					<td style="font-size: 30px"><a href="historylist?list=aucre">출품작
							판매 내역</a></td>
				</tr>
				<tr>
					<td style="font-size: 30px"><a href="historylist?list=spon">후원진행
							내역</a></td>
				</tr>
				<tr>
					<td style="font-size: 30px"><a href="historylist?list=sponre">후원요청
							내역</a></td>
				</tr>
				<tr>
					<td style="font-size: 30px"><a href="historylist?list=basket">꿍
							내역</a></td>
				</tr>
				<tr>
					<td style="font-size: 30px"><a href="privacyedit">개인정보 수정</a></td>
				</tr>
				<tr>
					<td style="font-size: 30px"><a href="memberout">회원탈퇴 신청</a></td>
				</tr>
				<tr>
					<td style="font-size: 30px"><a href="nortowri">작가전환 신청</a></td>
				</tr>
			</table>
		</div>


		<div id="point">
			<h1>포인트:</h1>
		</div>
		<div id="img">
			<h1>프로필사진</h1>
		</div>
	</div>

	<div id="spon">


		<div id="btn1">
			<br> <br> <br> <br> <br> <br> <br>
			<br> <br> <br> <br>
			<h1 id="h1">회원탈퇴시 주의사항</h1>
		</div>
	</div>

	<div id="ckbox">
		<h3>
			안내 사항을 모두 확인하였으며, 이에 동의합니다.<input type="checkbox">
		</h3>
		<button id="btz2" onclick="MemberDelete()">수정하기</button>
		<button type="button" onclick="location.href='myPage.html' " id="btn2">돌아가기</button>
	</div>

	<div id="articleView_layer">
	<p>정말로 탈퇴하시겠습니까?</p><br/>
	<p>정말 탈퇴를 원하시면 <br/>현재 사용중인 비밀번호를 입력해주세요.</p>
		<input type="password" name="mb_pw" id="mb_pw">
		 <a id="Delecheck" href="AjmemberDelete('withdrawalconfirm','mb_pw')">탈퇴하기</a>
		<div id="bg_layer">
		</div>
		<div id="contents_layer"></div>
	</div>
	
</body>

<script>
function MemberDelete() {
	$('#articleView_layer').addClass('open');
      //$("#articleView_layer").css('display','inline');
      //$('#bg_layer').html('<input type="password" name="mb_pw" id="mb_pw">')
}
//ModalBox 해제
var $layerWindow= $('#articleView_layer');
$layerWindow.find('#bg_layer').on('mousedown',function(event){
	console.log(event);
	$layerWindow.removeClass('open');
	
});//function End
function AjmemberDelete(url,data) {
	$.ajax({
		type:'post',
		url :url,
		data:data,
		dataType:'json',
		success:function(data){
			consol.log(data);
		},
		error:function(error){
			console.log(error);
		}
	});
	
}
</script>
</html>


