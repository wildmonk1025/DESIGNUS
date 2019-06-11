<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

<head>

<meta charset="UTF-8">
<title>출품작 판매내역</title>
<style type="text/css">
#one {
	width: 100%;
	height: 100%;
}

div {
	margin: auto;
}

#info {
	border: 1px solid orange;
	margin: 0px 10px 10px 10px;
	width: 280px;
	height: 580px;
	font-size: 20px;
	text-align: left;
	float: left;
}

#renking {
	border: 1px solid orange;
	margin: 0px 10px 10px 10px;
	width: 1080px;
	height: 200px;
	text-align: center;
	font-size: 20px;
	float: left;
}

#auction {
	border: 1px solid orange;
	margin: 0px 10px 10px 10px;
	width: 1080px;
	height: 870px;
	text-align: center;
	font-size: 20px;
	float: left;
	position: relative;
	left: 30px;
	top: 20px;
}

#spon {
	border: 1px solid orange;
	margin: 0px 10px 10px 10px;
	width: 1080px;
	height: 300px;
	float: left;
	font-size: 20px;
	text-align: center;
}

.bt {
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
	width: 85px;
	height: 35px;
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

#leftmain {
	width: 310px;
	height: 950x;
	border: 1px solid black;
	float: left;
}

#rightmain {
	width: 1150px;
	height: 950px;
	border: 1px solid black;
	float: left;
	position: relative;
	left: 30px;
	top: 100px;
}

#main {
	width: 1520px;
	height: 170px;
	text-align: center;
	height: 170px;
	text-align: center;
}

.bt01 {
	border: none;
	float: right;
	margin-right: 30px;
	width: 100px;
	height: 80px;
}

.bt01 {
	border: none;
	float: right;
	margin-right: 30px;
	width: 100px;
	height: 80px;
}

.bt02 {
	border: none;
	float: right;
	margin-right: 30px;
	margin-top: 50px;
	width: 100px;
	height: 80px;
}

a {
	color: red
}

#lightbox {
	border: 1px solid orange;
	position: absolute;
	top: 200px;
	left: 600px;
	width: 800px;
	height: 700px;
	margin: auto;
	background: #fff;
	z-index: 1001;
	display: none;
	background-color: orange;
	text-align: center;
}

#lightbox-shadow {
	position: absolute;
	top: 0;
	left: 0;
	width: 8000px;
	height: 8000px;
	background: #000;
	opacity: 1;
	z-index: 1000;
	display: none;
}

#lightbox1 {
	border: 1px solid orange;
	position: absolute;
	top: 200px;
	left: 600px;
	width: 800px;
	height: 700px;
	margin: auto;
	background: #fff;
	z-index: 1001;
	display: none;
	background-color: orange;
	text-align: center;
}

#lightbox-shadow1 {
	position: absolute;
	top: 0;
	left: 0;
	width: 8000px;
	height: 8000px;
	background: #000;
	opacity: 1;
	z-index: 1000;
	display: none;
}

.bt:hover {
	color: white;
}

.bt:active {
	color: yellow;
}

#point {
	border: 1px solid orange;
	margin: 0px 10px 10px 10px;
	width: 280px;
	height: 60px;
	text-align: left;
	font-size: 20px;
	float: left;
}

#img {
	margin-top: 20px;
	border: 1px solid orange;
	margin: 20px 10px 10px 10px;
	width: 280px;
	height: 290px;
	text-align: left;
	font-size: 20px;
	float: left;
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

#mainheader {
	border: 1px solid black;
	width: 1520px;
	height: 170px;
}

#mypagemain {
	width: 1530px;
	height: 1200px;
	border: 1px solid black;
}

#notice {
	border: 1px solid orange;
	position: absolute;
	width: 1100px;
	height: 60px;
	text-align: center;
	left: 411px;
	top: 180px;
	font-size: 100%
}
#setp {
	border: 1px solid orange;
	position: relative;
	width: 1100px;
	height: 860px;
	text-align: center;
	left: 208px;
	top: 80px;
	font-size: 100%
}
#setpT {
	height: 800px;
	position: relative;
	top: 10px;
}
#l1 {
	position: absolute;
	width: 400px;
	height: 230px;
	top: 100px;
	left: 20%;
	border-radius: 100px;
	z-index: 1002;
	padding-top: 70px;
	text-align: center;
	background-color: #FFE08C;
	display: none;
	font-size: 22px;
}
#Q1 {
	position: absolute;
	width: 500px;
	height: 330px;
	top: 100px;
	left: 20%;
	border-radius: 100px;
	z-index: 1002;
	padding-top: 70px;
	text-align: center;
	background-color: #FFE08C;
	display: none;
	font-size: 22px;
}
#total {
	position: absolute;
	width: 100%;
	height: 1200px;
	background-color: black;
	z-index: 1001;
	opacity: 0.75;
	display: none;
}
</style>

</head>
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>

<body>
	<div id="mainheader">
		<jsp:include page="main.jsp" />
	</div>

	<div id="notice">
		<h2>출품작 구매 내역 ㅅㅂ,,,,,</h2>
		<hr>
	</div>
	<div id="mypagemain">
		<div id="leftmain">
			<div id="img">
				<h1>프로필사진</h1>
			</div>

			<div id="point">
				<h1>포인트:</h1>
			</div>

			<div id="info">
				<table width="1000">

					<tr>
						<td style="font-size: 27px"><a href="historylist?list=rev">제작의뢰
								내역</a></td>
					</tr>
					<tr>
						<td style="font-size: 27px"><a href="historylist?list=revre">제작의뢰
								접수내역</a></td>
					</tr>
					<tr>
						<td style="font-size: 27px"><a href="historylist?list=auc">출품작
								구매 내역</a></td>
					</tr>
					<tr>
						<td style="font-size: 27px"><a href="historylist?list=aucre">출품작
								판매 내역</a></td>
					</tr>
					<tr>
						<td style="font-size: 27px"><a href="historylist?list=spon">후원진행
								내역</a></td>
					</tr>
					<tr>
						<td style="font-size: 27px"><a href="historylist?list=sponre">후원요청
								내역</a></td>
					</tr>
					<tr>
						<td style="font-size: 27px"><a href="historylist?list=basket">꿍
								내역</a></td>
					</tr>
					<tr>
						<td style="font-size: 27px"><a href="privacyedit">개인정보 수정</a></td>
					</tr>
					<tr>
						<td style="font-size: 27px"><a href="memberout">회원탈퇴 신청</a></td>
					</tr>
					<tr>
						<td style="font-size: 27px"><a href="nortowri">작가전환 신청</a></td>
					</tr>
				</table>
			</div>
		</div>
		<div id="setp">
		<div id="setpT">
			<c:forEach var="apwList" items="${apwList}">
				<div>
					<a href='#' onclick="articleView(${apwList.aup_ranum})"> <img
						src='/resources/images/${apwList.aui_img}'></a> 상품 이름 :
					${apwList.au_title} 구매 금액 : ${apwList.aup_price} 주문 수량 :
					${apwList.aup_qty}
					<p>
						작업이 확정된 시정의 요청 사항 추가는 추가 요금 및,<br /> 작업 완료일이 늘어날 수 있습니다.
					</p>
					<c:set var="step" value="${apwList.aup_step}" />
					<c:if test="${step eq 1}">
						<h3>의뢰 결정을 <br/>기다리는 중입니다.</h3>
					</c:if>
					<c:if test="${step eq 2}">
						
						<button id="client" onclick="location.href='deliinfo?ranum=${apwList.aup_ranum}'">의뢰인 배송 정보</button>
						<button id="btzRevM" onclick="shipping('${apwList.aup_ptnum}')" >배송보내기</button>
					</c:if>
					<c:if test="${step eq 3}">
						<h3>수령 확인 <br/>대기중입니다.</h3>
					</c:if>
					<c:if test="${step eq 4}">
						<h3>완료</h3>
					</c:if>
				</div>
				<form action="delinumupload" method="post">

					<div id="l1">
						<div id="l2"></div>
						<div id="l3">
							
						</div>
						<input type="submit" value="확인"> <input id="back"
							type="button" value="취소">
					</div>
				</form>
				<form action="reviewBoardWrite" method="post" enctype="multipart/form-data">
					<div id="Q1">
						수령 확인 및 구매후기 쓰기
						<div id="Q2">
							${apList.au_title} <input type="button" id="butt" value="추천하기"
								onclick="good('${apList.au_mbid_w}')">
								<input type="hidden" name="aup_ptnum" id="aup_ptnum"
								value="${apList.aup_ptnum}">
						</div>
						<div id="Q3">
							구매후기 제목 :<input type="text" name="bd_title" id="bd_title"><br>
							내용 <br/>
							<textarea rows="10" cols="70" name="bd_contents"></textarea>
								<input type="file" name="bd_imgSysName" id="bd_imgSysName" 
								        value="파일 첨부"  onchange="fileChk(this)" multiple>
								<input type="hidden" id="fileCheck" value="0" name="fileCheck"> 
						</div>
						<input type="submit" value="완료"> 
						<input id="backSetp" type="button" value="취소">
					</div>
				</form>
			</c:forEach>

		</div>
		${paging}
	</div>
		<div id="lightbox">
			<h1>의뢰인배송정보</h1>
			<button>확인</button>
			<button type="button"
				onclick="location.href='auctionMyAcceptList.jsp' ">취소</button>
		</div>

		<div id="lightbox-shadow1">

			<div id="lightbox1">
				<h1>운송장입력</h1>
				<button>확인</button>
				<button type="button"
					onclick="location.href='auctionMyAcceptList.html' ">취소</button>
			</div>
		</div>
	</div>



</body>
<script type="text/javascript">
function shipping(data) {
	
	console.log(data)
	$.ajax({
		url: "sends",
		type:"post",
	    data:{ptnum:data},
	    dataTepy : 'json',
	    success:function(data){
	    	alert('해당 상품을 추천하였습니다.');
	    	console.log(data.aup_ptnum);
	    	$('#l2').html(data.au_title);
	    	///$('#l3').html("운송장 번호 : "+"<input type='text' name='aup_track' id='aup_track'>"
	    			                 // +"<input type='hidden' name='aup_ptnum' id='aup_ptnum' value='"${apwList.aup_ptnum}"'>");
	    	
	    	
	    },
	    error:function(error){
	    	alert('정상적인 추천이 실패했습니다.');
	    	console.log(error);
	    }
		 
	 });//end ajax
}

/* $("#btzRevM").click(function() {
	$('#total').css("display", "inline")
	$('#l1').css("display", "inline")
}); */

$("#total").click(function() {
	$("#total").css("display", "none");
	$("#l1").css("display", "none");
});
$("#back").click(function() {
	$("#total").css("display", "none");
	$("#l1").css("display", "none");
});	

$("#review").click(function() {
	$('#total').css("display", "inline")
	$('#Q1').css("display", "inline")
});
$("#total").click(function() {
	$("#total").css("display", "none");
	$("#Q1").css("display", "none");
});
$("#backSetp").click(function() {
	$("#total").css("display", "none");
	$("#Q1").css("display", "none");
});	
	/* $("#action").click(function() {
		$('#lightbox-shadow').css("display", "inline")
		$('#lightbox').css("display", "inline")
	});
	$("#cancel").click(function() {
		$('#lightbox-shadow1').css("display", "inline")
		$('#lightbox1').css("display", "inline")
	}); */
</script>

</html>