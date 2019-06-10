<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

<head>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
#one {
	position: relative;
	width: 100%;
	height: 100%;
}

div {
	margin: auto;
}

#notice {
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

/*#renking {
            border: 1px solid orange;
            width: 1100px;
            height: 230px;
            text-align: center;
            left: 611px;
            position: absolute;
            top: 510px;

        }*/
#main {
	position: absolute;
	width: 1520px;
	height: 170px;
	left: 190px;
	text-align: center;
}

.bt01 {
	position: absolute;
	right: 100px;
	top: 50px;
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

#lightbox2 {
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

#lightbox-shadow2 {
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



#lightbox-shadow3 {
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

#setp {
	border: 1px solid orange;
	position: relative;
	width: 1100px;
	height: 860px;
	text-align: center;
	left: 298px;
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

.t1 {
	position: relative;
	top: 100;
	left: -200;
}
</style>

</head>
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>

<body>
	<div id="total"></div>
	<div id="mainheader">
		<jsp:include page="main.jsp" />
	</div>

	<div id="notice">
		<h2>출품작 구매 내역</h2>
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
	<div id="setp">
		<div id="setpT">
			<c:forEach var="apList" items="${apList}">
				<div>
					<a href='#' onclick="articleView(${apList.aup_ranum})"> <img
						src='/resources/images/${apList.aui_img}'></a> 상품 이름 :
					${apList.au_title} 구매 금액 : ${apList.aup_price} 주문 수량 :
					${apList.aup_qty}
					<p>
						작업이 확정된 시정의 요청 사항 추가는 추가 요금 및,<br /> 작업 완료일이 늘어날 수 있습니다.
					</p>
					<c:set var="step" value="${apList.aup_step}" />
					<c:if test="${step eq 1}">
						<button id="btzRevM">배송정보입력</button>
						<button id="cencle" onclick="location.href='auccancel'">취소</button>
					</c:if>
					<c:if test="${step eq 2}">
						<h3>배송 대기중</h3>
					</c:if>
					<c:if test="${step eq 3}">
						<button id="btzRevQ">고객센터 문의</button>
						<button id="review">수령 확인/구매 후기 쓰기</button>
					</c:if>
					<c:if test="${step eq 4}">
						<h3>완료</h3>
					</c:if>
				</div>
				<form action="aucapply" method="post">

					<div id="l1">
						${apList.au_mbid_w}님에게 배송요청 <input type="hidden" name="au_mbid_w"
							id="au_mbid_w" value="${apList.au_mbid_w}">
						<div id="l2">${apList.au_title}</div>
						<div id="l3">
							아이디 : ${apList.aup_mbid_n} <br /> <input type="hidden"
								name="aup_mbid_n" id="aup_mbid_n" value="${apList.aup_mbid_n}">
							이름 : <input type="text" name="aup_name" id="aup_name"><br />
							주소 : <input type="text" name="aup_address" id="aup_address"><br />
							연락처 :<input type="text" name="aup_phone" id="aup_phone">
							<input type="hidden" name="aup_ptnum" id="aup_ptnum"
								value="${apList.aup_ptnum}"> <input type="hidden"
								name="aup_price" id="aup_price" value="${apList.aup_price}">
						</div>
						<input type="submit" value="요청하기"> <input id="back"
							type="button" value="취소">
					</div>
				</form>
				<form action="reviewBoardWrite" method="post">
					<div id="Q1">
						수령 확인 및 구매후기 쓰기
						<div id="Q2">
							${apList.au_title} <input type="button" id="butt" value="추천하기"
								onclick="good()">
						</div>
						<div id="Q3">
							구매후기 제목 :<input type="text" name="bd_title" id="bd_title"><br>
							내용 <br/>
							<textarea rows="10" cols="70" name="bd_contents"></textarea>
								<input type="file" name="bd_imgSysName" id="bd_imgSysName" 
								        value="파일 첨부"  onchange="fileChk(this)" multiple>
								<input type="hidden" id="fileCheck" value="0" name="fileCheck"> 
						</div>
						<input type="submit" value="완료"> <input id="back"
							type="button" value="취소">
					</div>
				</form>
			</c:forEach>

		</div>
		${paging}
	</div>

	<div id="point">
		<h1>포인트:</h1>
	</div>
	<div id="img">
		<h1>프로필사진</h1>
	</div>
	<div id="lightbox-shadow">

		<div id="lightbox">
			<h1>여기가 배송정보입력</h1>
			<button>요청</button>
			<button type="button"
				onclick="location.href='auctionMyOrderList.html' ">취소</button>
		</div>
	</div>
	<div id="lightbox-shadow1">

		<div id="lightbox1">
			<h1>출품작 낙찰취소</h1>
			<button>취소하기</button>
			<button type="button"
				onclick="location.href='auctionMyOrderList.html' ">돌아가기</button>
		</div>
	</div>
	<div id="lightbox-shadow2">

		<div id="lightbox2">
			<h1>1:1문의</h1>
			<button>문의하기</button>
			<button type="button"
				onclick="location.href='auctionMyOrderList.html' ">취소</button>
		</div>
	</div>
	<div id="lightbox-shadow3">

		<div id="lightbox3">
			<h1>구매후기</h1>
			<button>완료</button>
			<button type="button"
				onclick="location.href='auctionMyOrderList.html' ">취소</button>
		</div>
	</div>


</body>
<script type="text/javascript">

$("#btzRevM").click(function() {
	$('#total').css("display", "inline")
	$('#l1').css("display", "inline")
});
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

	$("#action").click(function() {

		$('#lightbox-shadow').css("display", "inline")
		$('#lightbox').css("display", "inline")
	});
	$("#cancel").click(function() {
		$('#lightbox-shadow1').css("display", "inline")
		$('#lightbox1').css("display", "inline")
	});
	$("#service").click(function() {
		$('#lightbox-shadow2').css("display", "inline")
		$('#lightbox2').css("display", "inline")
	});
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
