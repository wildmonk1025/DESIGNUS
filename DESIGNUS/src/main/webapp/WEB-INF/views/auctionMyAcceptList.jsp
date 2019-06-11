<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

<head>

<meta charset="UTF-8">
<title>출품작 판매내역</title>
<style type="text/css">

#mainheader {
	border: 1px solid black;
	width: 1520px;
	height: 170px;
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
<div id="total"></div>
  <div id="notice">
		<h2>출품작 구매 내역 ㅅㅂ,,,,,</h2>
		<hr>
	</div>
	
	
			<div id="img">
				<h1>프로필사진</h1>
			</div>

			<div id="point">
				<h1>포인트:</h1>
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
			<c:forEach var="apwList" items="${apwList}">
				<div>
					<a href='#' onclick="article(${apwList.aup_ranum})"> <img
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
				</c:forEach>
				<form action="delinumupload" method="post">

					<div id="l1">
						<div id="l2"></div>
						<div id="l3">
							
						</div>
						<input type="submit" value="확인"> <input id="back"
							type="button" value="취소">
					</div>
				</form>
				
			

		</div>
		${paging}
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
</script>

</html>