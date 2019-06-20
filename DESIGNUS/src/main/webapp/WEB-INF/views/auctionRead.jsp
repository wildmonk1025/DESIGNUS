<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
div {
	margin: auto;
}

#mainheader {
	border: 1px solid black;
	width: 1520px;
	height: 170px;
}

#homeMain {
	border: 1px solid black;
	width: 1520px;
	height: auto;
}

#footercheck {
	border: 1px solid black;
	width: 1520px;
	height: 150px;
}

#List {
	border: 1px solid black;
	margin: 20px;
	width: 1480px;
	height: 1425px;
	width: 1480px;
}

#middle_img {
	float: left;
	border: 1px solid red;
	width: 300px;
	height: 300px;
	text-align: center;
}

#middle_img_lv1 {
	padding: 5px;
	border: 1px solid blue;
	width: 260px;
	height: 35px;
}

#middle_img_lv2 {
	padding: 5px;
	border: 1px solid blue;
	width: 260px;
	height: 230px;
	margin-top: 5px;
}

#middle_contents1 {
	float: left;
	border: 1px solid red;
	width: 900px;
	height: 300px;
	display: table-cell;
}

#middle_contents1_lv1 {
	border: 1px solid blue;
	width: 850px;
	height: 60px;
	font-size: 30px;
}

#middle_contents1_lv2 {
	border: 1px solid green;
	width: 150px;
	height: 58px;
	font-size: 20px;
	float: right;
}

/*  #peek2 {
	display: none;
}  */
#middle_contents1_lv3 {
	border: 1px solid blue;
	width: 850px;
	height: 140px;
	font-size: 20px;
	text-align: right;
}

#middle_contents1_lv4 {
	border: 1px soild orange;
	width: 1480px;
	height: 200px;
	float: left;
}

#middle_Person {
	border: 1px soild green;
	width: 1440px;
	height: 125px;
	margin: 20px;
}

#middle_contents1_lv5 {
	border: 1px soild orange;
	width: 1480px;
	height: 270px;
	float: left;
}

#middle_contents1_lv6 {
	border: 1px soild orange;
	width: 1480px;
	height: 650px;
	float: left;
}

#middle_item {
	border: 1px solid black;
	display: inline-block;
	width: 1440px;
	height: 200px;
	margin: 20px;
	width: 1440px;
}

#auctiontime {
	font-size: 30px;
	text-align: left;
	width: 850px;
	display: table-cell;
	vertical-align: middle;
	height: 90px;
	border: 1px solid red;
}

#asubmitbtn {
	border: 1px solid red;
	width: 18.5%;
	height: 300px;
	float: left;
}

.submitbtn {
	background-color: coral;
	width: 120px;
	height: 60px;
	margin: 45px 75px 30px 75px;
	color: white;
	border-radius: 15px;
}

#inbuyLB {
	position: absolute;
	width: 400px;
	height: 230px;
	top: 500px;
	left: 60%;
	border-radius: 100px;
	z-index: 1002;
	padding-top: 170px;
	text-align: center;
	background-color: #FFE08C;
	display: none;
	font-size: 22px;
}

#inbuyInput {
	height: 40px;
	width: 150px;
	font-size: 20px;
}

#tenderInput {
	height: 40px;
	width: 200px;
	font-size: 16px;
}

#inbuyLB-shadow {
	position: absolute;
	width: 100%;
	height: 100%;
	background-color: black;
	z-index: 1001;
	opacity: 0.75;
	display: none;
}

#tenderLB {
	position: absolute;
	width: 400px;
	height: 230px;
	top: 500px;
	left: 60%;
	border-radius: 100px;
	z-index: 1002;
	padding-top: 170px;
	text-align: center;
	background-color: #FFE08C;
	display: none;
}

#tenderLB-shadow {
	position: absolute;
	width: 100%;
	height: 1200px;
	background-color: black;
	z-index: 1001;
	opacity: 0.75;
	display: none;
}

.subtn {
	border: none;
	font-size: 29.5px;
	color: red;
	background-color: white;
}

.btn11 {
	width: 70px;
	height: 40px;
}

.atList {
	border-top: 1px soild orange;
	border-bottom: 1px soild orange;
}

.wList {
	width: 33.2%;
	height: 100%;
	float: left;
	border: 0.5px solid red;
}

.wListPhoto {
	border: 0.5px solid black;
	height: 100%;
	width: 40%;
	float: left;
}

.wListTitle {
	border: 0.5px solid black;
	height: 25%;
	width: 59.5%;
	float: left;
	text-align: center;
}

.wListContents {
	border: 0.5px solid green;
	width: 59.5%;
	height: 74.5%;
	float: left;
	text-align: left;
}

.contentsImg {
	border: 1px solid gray;
	float: left;
	margin: 0px 20px 10px 20px;
	width: 328px;
	height: 250px;
}
.contentsImg:hover{
	transform : scale(2.0);
}

#contents {
	border: 1px solid gray;
	float: left;
	margin: 0px 20px 0px 20px;
	width: 1438px;
	height: 340px;
}
</style>
</head>

<body>
	<div id="inbuyLB">
		<form action="auctioninbuy" method="post" onsubmit="return checkk(${auInfo.au_qty -1})">
			<input type="hidden" name="inbuyNum" value="${au_num}"> 
			구입수량 :<input type="number" id="inbuyInput" name="inbuyQty" max="999"  min="1" 
			placeholder="최대  999EA" maxlength="3" oninput="maxLengthCheck(this)"><br> <br> 
			<input type="submit" class="btn11" value="구입"> 
			<input type="reset" class="btn11" value="취소">
		</form>
	</div>
	<!--   -->
	<div id="inbuyLB-shadow"></div>
	<div id="tenderLB">
	<h3>최소 입찰금액 : ${auInfo.au_minprice}</h3>
		<form action="auctiontender" method="post" onsubmit="return check2(${point})">
			<input type="hidden" name="tenderNum" value="${au_num}"> 
			입찰가격 :<input type="number" id="tenderInput" name="tenderPrice" max="99999999"  
			min="${auInfo.au_minprice}" maxlength="8" oninput="maxLengthCheck(this)" placeholder="최대 입찰가 이상 입력"> <br> <br> 
			 <input type="submit" class="btn11" value="구입"> <input type="reset" class="btn11" value="취소">
		</form>
	</div>
	<div id="tenderLB-shadow"></div>

	<div id="mainheader">
		<jsp:include page="main.jsp" />
	</div>

	<div id="homeMain">

		<div id="List">
			<div id="middle_img">
				<div id="middle_img_lv1">
					카테고리 >
					<c:set var="code" value="${auInfo.au_cgcode}" />
					<c:if test="${code eq 100 }">귀금속공예</c:if>
					<c:if test="${code eq 110 }">원목공예</c:if>
					<c:if test="${code eq 120 }">종이공예</c:if>
					<c:if test="${code eq 130 }">가죽공예</c:if>
					<c:if test="${code eq 140 }">천공예</c:if>
					<c:if test="${code eq 150 }">플라스틱공예</c:if>
					<c:if test="${code eq 160 }">도자기</c:if>
					<c:if test="${code eq 170 }">가공식품</c:if>
					<c:if test="${code eq 180 }">휴대폰</c:if>
					<c:if test="${code eq 190 }">페인팅,캐리커쳐,캘리</c:if>
					<c:if test="${code eq 200 }">유아</c:if>
				</div>
				<div id="middle_img_lv2">
					여기에 이미지<br> 
					${auInfo.aui_imgSysName1}<br>

				</div>
			</div>
			<div id="middle_contents1">
				<div id="middle_contents1_lv1">
					${auInfo.au_title }
					<div id="middle_contents1_lv2">
						<div id="peek1">
							<input type="submit" value="꿍누르기♥" class="subtn">
						</div>
						<div id="peek2">
							<input type="submit" value="꿍누르기♡" class="subtn">
						</div>
					</div>
				</div>
				<div id="middle_contents1_lv3">
					<table style="margin: 10px 0px 0px 10px; line-height: 200%">
						<tr>
							<th>작성자 :</th>
							<td>${auInfo.au_mbid_w}님</td>
							<td></td>
						</tr>
						<tr>
							<th>수량 :</th>
							<td>${auInfo.au_qty -1}EA</td>
							<td style="color: gray; font-size: 11px;"></td>
						</tr>
						<tr>
							<th>즉시구매가격 :</th>
							<td colspan="2"><div id="tender_result">${auInfo.au_inprice}원
								</div></td>
						</tr>
					</table>
					<div id="auctiontime">등록일/마감일 : ${auInfo.au_date}</div>
				</div>

			</div>
			<div id="asubmitbtn">
				<c:set var="se_id" value="${id }" />
				<c:set var="au_id" value="${chkID}" />
				<c:if test="${au_id ne se_id }">
					<button class="submitbtn" id="btn1">즉시구매</button>
					<button class="submitbtn" id="btn2">경매참여</button>
				</c:if>
				<c:if test="${au_id eq se_id }">
					<button class="submitbtn">
						본인은 구매가 <br> 불가능 합니다.
					</button>
				</c:if>
			</div>
			<div id="middle_contents1_lv4">
				<h2>TOP3 입찰내역</h2>
				<div id="middle_Person">
					<c:forEach var="at" items="${atList}">
						<table class="atList">
							<tr style="height: 40px">
								<th style="width: 100px">아이디 :</th>
								<td style="width: 70px">${at.aut_mbid }</td>
								<td style="width: 30px">님</td>
								<th style="width: 100px">금액 :</th>
								<td style="width: 100px">${at.aut_price}</td>
								<td style="width: 30px">원</td>
							</tr>
						</table>
					</c:forEach>
				</div>
			</div>
			<div id="middle_contents1_lv5">
				<h2>작가의 다른작품</h2>
				<div id="middle_item">
					<c:forEach var="auw" items="${auwList}">
						<div class="wList"
							onclick="location.href='auctionRead?au_num=${auw.au_num}'">
							<div class="wListPhoto">
								${auw.aui_img}
							</div>
							<div class="wListTitle">${auw.au_title}</div>
							<div class="wListContents">
								<table>
									<tr style="height: 32.5px">
										<th style="width: 100px">수량</th>
										<td style="width: 170px; text-align: right;">${auw.au_qty -1}
										</td>
										<td style="width: 15px">EA</td>
									</tr>
									<tr style="height: 32.5px">
										<th>경매시작가</th>
										<td style="text-align: right;">${auw.au_minprice}</td>
										<td>원</td>
									</tr>
									<tr style="height: 32.5px">
										<th>즉시구매가</th>
										<td style="text-align: right;">${auw.au_inprice}</td>
										<td>원</td>
									</tr>
									<tr style="height: 32.5px">
										<th>등록일</th>
										<td>${auw.au_date}</td>
									</tr>
								</table>
							</div>
						</div>
					</c:forEach>
				</div>
			</div>
			<div id="middle_contents1_lv6">
				<h2>작품설명</h2>
				<div class="contentsImg">${auInfo.aui_imgSysName1}</div>
				<div class="contentsImg">${auInfo.aui_imgSysName2}</div>
				<div class="contentsImg">${auInfo.aui_imgSysName3}</div>
				<div class="contentsImg">${auInfo.aui_imgSysName4}</div>
				<div id="contents">${auInfo.au_contents }</div>
			</div>


		</div>

		<div id="footercheck">
			<jsp:include page="footer.jsp"></jsp:include>
		</div>


	</div>


</body>
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<script>

 function checkk(even) {
	console.log(1,even);
	var inbuy=$("#inbuyInput").val();
	if(even<inbuy){
		alert("구입수량이 없습니다.");
		return false;
	}else{
		return true;
	}
}
 function check2(even) {
	console.log(2,even);
	var tender=$("#tenderInput").val();
	if(even<tender){
		alert("포인트가 없습니다.");
		return false;
	}else{
		return true;
	}
}
	
	if(${nb} > 0){
		$("#peek2").css("display", "none");
		$("#peek1").css("display", "inline");
	}
	if(${nb} == 0){
		$("#peek1").css("display", "none");
		$("#peek2").css("display", "inline");
	}


	var kind = 1;
	$(".subtn").click(function() {
			 	$.ajax({
				url : 'ajax/BasketSelect',
				type: 'post',
				data: {'num':${au_num}},
				success:function(data){
					if(data > 0){
						$("#peek1").css("display", "none");
						$("#peek2").css("display", "inline");
					}
					if(data == 0){
						$("#peek2").css("display", "none");
						$("#peek1").css("display", "inline");
					}
				},
				error:function(error){
					console.log(error);
				}
			});	
	});
	
	$("#btn1").click(function() {
		$("#inbuyLB").css("display", "inline");
		$("#inbuyLB-shadow").css("display", "inline");
	});

	$("#inbuyLB-shadow").click(function() {
		$("#inbuyLB").css("display", "none");
		$("#inbuyLB-shadow").css("display", "none");
	});

	$("#btn2").click(function() {
		$("#tenderLB").css("display", "inline");
		$("#tenderLB-shadow").css("display", "inline");
	});

	$("#tenderLB-shadow").click(function() {
		$("#tenderLB").css("display", "none");
		$("#tenderLB-shadow").css("display", "none");
	});
	
	function maxLengthCheck(object){
		if (object.value.length > object.maxLength){
			object.value = object.value.slice(0, object.maxLength);
		}   
	};
	
	
// 	window.onload=(function() {
// 		var massege= ${massege} ;
// 		console.log(massege);
// 		var msg = '${massege}';
// 		if (msg != ''){
// 			alert(msg);
// 		}
// 	})	
	
</script>
</html>