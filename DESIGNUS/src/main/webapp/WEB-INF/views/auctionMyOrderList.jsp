<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

<head>

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

#lightbox3 {
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

.setpT {
	height: 212px;
	position: relative;
	top: 2px;
}
</style>

</head>
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>

<body>
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
		<div class="setpT">
			<h1>SETP1</h1>
			<div class="bt01">
			<table>
			<c:forEach var="stepone" items="${step1}">
			   <tr>
			     <td rowspan="4">
			     <a href='#' onclick="articleView(${stepone.aup_ranum})">
			     <img src='/resources/images/${stepone.aui_img}'></a>
			     </td>
			     <td>
			     ${stepone.au_title} 
			     </td>
			   </tr>
			   <tr>
			     <td>구매 금액 : ${stepone.aup_price}</td>
			     </tr>
			     <tr>
			     <td>주문 수량 : ${stepone.aup_qty}</td>
			     </tr>
			     <tr>
			     <td><p>작업이 확정된 시정의 요청 사항 추가는 추가 요금 및,<br/> 작업 완료일이 늘어날 수 있습니다.</p></td>
			   </tr>
			   </c:forEach>
			</table>
			<div>${paging}</div>
			   <%-- <c:forEach var="stepone" items="${step1}">
					<a href='#' onclick="articleView(${stepone.ab_aunum})">
					<img src='/resources/images/${board.aui_img}'></a>
					<P>상품 제목 : ${board.au_title}</P><br/>
				</c:forEach> --%>
				<button id="service">고객센터문의</button>
				<br>
				<br>

				<button id="review">구매후기쓰기</button>
			</div>
		</div>
		<div class="setpT">
			<h1>SETP2</h1>
			<div class="bt01">
			<table>
			<c:forEach var="stepone" items="${step2}">
			   <tr>
			     <td rowspan="4">
			     <a href='#' onclick="articleView(${stepone.aup_ranum})">
			     <img src='/resources/images/${stepone.aui_img}'></a>
			     </td>
			     <td>
			     ${stepone.au_title} 
			     </td>
			   </tr>
			   <tr>
			     <td>구매 금액 : ${stepone.aup_price}</td>
			     </tr>
			     <tr>
			     <td>주문 수량 : ${stepone.aup_qty}</td>
			     </tr>
			     <tr>
			     <td><p>작업이 확정된 시정의 요청 사항 추가는 추가 요금 및,<br/> 작업 완료일이 늘어날 수 있습니다.</p></td>
			   </tr>
			   </c:forEach>
			</table>
			<div>${paging}</div>
				<button id="service">고객센터문의</button>
				<br>
				<br>

				<button id="review">구매후기쓰기</button>
			</div>
		</div>
		<div class="setpT">
			<h1>SETP3</h1>
			<div class="bt01">
			<table>
			<c:forEach var="stepone" items="${step3}">
			   <tr>
			     <td rowspan="4">
			     <a href='#' onclick="articleView(${stepone.aup_ranum})">
			     <img src='/resources/images/${stepone.aui_img}'></a>
			     </td>
			     <td>
			     ${stepone.au_title} 
			     </td>
			   </tr>
			   <tr>
			     <td>구매 금액 : ${stepone.aup_price}</td>
			     </tr>
			     <tr>
			     <td>주문 수량 : ${stepone.aup_qty}</td>
			     </tr>
			     <tr>
			     <td><p>작업이 확정된 시정의 요청 사항 추가는 추가 요금 및,<br/> 작업 완료일이 늘어날 수 있습니다.</p></td>
			   </tr>
			   </c:forEach>
			</table>
			<div>${paging}</div>
				<button id="service">고객센터문의</button>
				<br>
				<br>

				<button id="review">구매후기쓰기</button>
			</div>
		</div>
		<div class="setpT">
			<h1>SETP4</h1>
			<div class="bt01">
			<table>
			<c:forEach var="stepone" items="${step4}">
			   <tr>
			     <td rowspan="4">
			     <a href='#' onclick="articleView(${stepone.aup_ranum})">
			     <img src='/resources/images/${stepone.aui_img}'></a>
			     </td>
			     <td>
			     ${stepone.au_title} 
			     </td>
			   </tr>
			   <tr>
			     <td>구매 금액 : ${stepone.aup_price}</td>
			     </tr>
			     <tr>
			     <td>주문 수량 : ${stepone.aup_qty}</td>
			     </tr>
			     <tr>
			     <td><p>작업이 확정된 시정의 요청 사항 추가는 추가 요금 및,<br/> 작업 완료일이 늘어날 수 있습니다.</p></td>
			   </tr>
			   </c:forEach>
			</table>
			<div>${paging}</div>
				<button id="service">고객센터문의</button>
				<br>
				<br>

				<button id="review">구매후기쓰기</button>
			</div>
		</div>

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
	$("#review").click(function() {
		$('#lightbox-shadow3').css("display", "inline")
		$('#lightbox3').css("display", "inline")
	});
</script>

</html>
