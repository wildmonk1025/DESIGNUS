<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<script src="https://code.jquery.com/jquery-3.4.0.min.js"></script>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
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
	font-size: 25px;
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
	height: 40px;
	left: 300px;
	position: absolute;
	top: 785px;
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

#table1 {
	width: 100%;
	height: 80%;
	border-spacing: 10px;
}

h, td, tr, input, textarea, select, FORM {
	font-family: 고딕;
	font-size: 1em;
	border-radius: 5px;
}

textarea {
	width: 800px;
	height: 500px;
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

#mainheader {
	border: 1px solid black;
	width: 1520px;
	height: 170px;
}
</style>
</head>

<body>
	<div id="mainheader">
		<jsp:include page="main.jsp" />
	</div>

	<div id="notice">
		<h2>작가 전환 신청</h2>
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


	<div id="spon">


		<div id="btn1">
			<form action="nortowriapply" method="post"
				enctype="multipart/form-data">
				<table cellspacing="1" id="table1">

					<tr>
						<td text-align="center">${id}</td>
						<td>전문분야 <select name="mj_cg_code" id="mj_cg_code">
								<option value="100">귀금속 공예</option>
								<option value="110">원목 공예</option>
								<option value="120">종이 공예</option>
								<option value="130">가죽 공예</option>
								<option value="140">천 공예</option>
								<option value="150">플라스틱 공예</option>
								<option value="160">도자기 공예</option>
								<option value="170">가공 식품</option>
								<option value="180">휴대폰 액세서리</option>
								<option value="190">페인팅,캐리커쳐,캘리</option>
								<option value="200">유아 용품</option>
						</select>

						</td>
					</tr>
					<tr>
						<td>본인 소개</td>
						<td><textarea name="mj_contents" id="mj_contents"></textarea>
						</td>
					</tr>

					<tr>
						<td>포토폴리오</td>
						<td><input id="mj_portf" class="memberN" type="file"
							name="mj_portf" onchange="fileChk(this)" multiple> <input
							type="hidden" id="fileCheck" value="0" name="fileCheck"></td>
					</tr>

				</table>
				<div id="ckbox">
					<button>전환신청</button>
					<input type="button" id="btz2" value="취소">
					
				</div>
			</form>
		</div>
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
	/*  function formData(){
		 var $obj=$('#mj_portf');
	 console.log(1,$obj[0]);
		 console.log(2,$obj[0].files);
		 console.log(3,$obj[0].files[0]);
		 console.log(4,$obj[0].files[1]); 
		 //multipart/form-data를 전송시 무조건 사용(파일 업로드할때 사용)
		 //FormData객체는 form의 일부 데이터만 서버에 전송하고 싶을때 좋음.
		 //ajax에서 사용함.
		 var formData=new FormData();
		 formData.append("mj_cg_code",$('#mj_cg_code').val());
		 formData.append("mj_contents",$('#mj_contents').val());
		 formData.append("fileCheck",$('#fileCheck').val());//0,1
		 
		 var files=$obj[0].files;//배열로 파일정보를 반환
		 //formData.append("files",files)
		  for(var i=0; i<files.length;i++){
			 formData.append("files",files[i]);// 속성이 같으면 배열로 반환
		 }
		  console.log(formData.get("files"));
		  $.ajax({
				url: "nortowriapply",
				type:"post",
			    data:formData,
			    processData : false,
			    contentType : false,
			    dataType:"json",
			    success:function(data){
			    	alert('성공');
			    	console.log(data);
			    	
			    },
			    error:function(error){
			    	alert('에러');
			    	console.log(error);
			    }
				 
			 });
	 }  */
</script>
</html>
