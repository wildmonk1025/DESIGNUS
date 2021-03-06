<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<style>
div {
	margin: auto;
}

#mainheader {
	border: 1px solid #F5BCA9;
	background-color: white;
	width: 1520px;
	height: 170px;
	z-index: 1000;
	box-shadow: 3px 0px 8px -3px rgba(0, 0, 0, 0.56);
}

#homeMain {
	width: 1520px;
	height: auto;
}

#footer {
	border: 1px solid red;
	width: 1518px;
	height: 180px;
	margin-top: 20px;
	border: 1px solid #f0f0f0;
}

#List {
	border-radius: 10px;
	box-shadow: 3px 0px 8px -3px rgba(0, 0, 0, 0.56);
	margin: 50px 20px 20px 20px;
	width: 1480px;
	height: auto;
}

#middle_img {
	float: left;
	width: 300px;
	height: 300px;
	text-align: center;
	margin-top: 13px;
}

#middle_img_lv1 {
	padding: 5px;
	width: 260px;
	height: 35px;
	border-radius: 10px;
}

#middle_img_lv2 {
	padding: 5px;
	border-radius: 10px;
	width: 260px;
	height: 240px;
	margin-top: 5px;
}

#middle_contents1 {
	float: left;
	border-radius: 10px;
	width: 890px;
	height: 300px;
	margin: 13px 0px 0px 0px;
	display: table-cell;
}

#middle_contents1_lv1 {
	width: 850px;
	height: 60px;
	font-size: 30px;
	border-bottom: 4px solid #d0e8f6;
}

#middle_contents1_lv2 {
	width: 150px;
	height: 58px;
	font-size: 20px;
	float: right;
	text-align: right;
}

#middle_contents1_lv3 {
	width: 850px;
	height: 140px;
	font-size: 20px;
	text-align: right;
}

#middle_contents1_lv4 {
	width: 1480px;
	height: 200px;
	float: left;
}

#middle_Person {
	border-radius: 10px;
	box-shadow: 3px 0px 8px -3px rgba(0, 0, 0, 0.56);
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
	height: auto;
	float: left;
}

#clear {
	clear: both;
}

#middle_item {
	border-radius: 10px;
	box-shadow: 3px 0px 8px -3px rgba(0, 0, 0, 0.56);
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
	border-bottom: 0.5px solid #d0e8f6;
}

#asubmitbtn {
	border-radius: 10px;
	padding-top: 40px;
	margin: 13px 0px 0px 10px;
	width: 18.5%;
	height: 200px;
	float: left;
	margin: 13px 0px 0px 10px;
}

.submitbtn {
	background-color: #dceefa;
	margin: 45px 75px 30px 75px;
	width: 120px;
	height: 80px;
	margin-top: 5px;
	margin-right: 10px;
	-moz-border-radius: 5px;
	-webkit-border-radius: 5px;
	border-radius: 5px;
	border: 1px solid #4e6096;
	display: inline-block;
	cursor: pointer;
	color: black;
	font-family: Arial;
	font-size: 17px;
	text-align: center;
	text-decoration: none;
	text-shadow: 0px 1px 0px #283966;
	text-decoration: none;
	-moz-border-radius: 5px;
}

.submitbtn:hover {
	background-color: #476e9e;
	color: white;
}

.submitbtn:active {
	position: relative;
	top: 1px;
}

#inbuyLB {
	box-shadow: 3px 0px 8px -3px rgba(0, 0, 0, 0.56);
	position: absolute;
	width: 400px;
	height: 230px;
	top: 400px;
	left: 50%;
	border-radius: 30px;
	z-index: 1002;
	padding-top: 170px;
	text-align: center;
	background-color: white;
	border: 1px solid gray;
	display: none;
}

#inbuyInput {
	height: 30px;
	width: 150px;
	font-size: 20px;
}

#tenderInput {
	height: 30px;
	width: 200px;
	font-size: 16px;
}

#inbuyLB-shadow {
	position: absolute;
	width: 100%;
	height: 200%;
	background-color: black;
	z-index: 1001;
	opacity: 0.75;
	display: none;
}

#tenderLB {
	box-shadow: 3px 0px 8px -3px rgba(0, 0, 0, 0.56);
	position: absolute;
	width: 400px;
	height: 280px;
	top: 400px;
	left: 50%;
	border-radius: 30px;
	z-index: 1002;
	padding-top: 130px;
	text-align: center;
	background-color: white;
	border: 1px solid gray;
	display: none;
}

#tenderLB-shadow {
	position: absolute;
	width: 100%;
	height: 200%;
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
	background-color: #dceefa;
	width: 70px;
	height: 40px;
	margin-top: 5px;
	margin-right: 10px;
	-moz-border-radius: 5px;
	-webkit-border-radius: 5px;
	border-radius: 5px;
	border: 1px solid #4e6096;
	display: inline-block;
	cursor: pointer;
	color: black;
	font-family: Arial;
	font-size: 17px;
	text-align: center;
	text-decoration: none;
	text-shadow: 0px 1px 0px #283966;
	text-decoration: none;
	-moz-border-radius: 5px;
}

.atList {
	border-top: 1px soild orange;
	border-bottom: 1px soild orange;
}

.wList {
	width: 33.2%;
	height: 100%;
	float: left;
	border-radius: 10px;
	box-shadow: 3px 0px 8px -3px rgba(0, 0, 0, 0.56);
}

.wListPhoto {
	height: 100%;
	width: 40%;
	float: left;
}

.wListTitle {
	border-bottom: 1px solid gray;
	height: 25%;
	width: 59.5%;
	float: left;
	text-align: center;
	font-size: 20px;
}

.wListContents {
	border-bottom: 1px solid gray;
	width: 59.5%;
	height: 74.5%;
	float: left;
	text-align: left;
}

.contentsImg {
	border-radius: 10px;
	box-shadow: 3px 0px 8px -3px rgba(0, 0, 0, 0.56);
	float: left;
	margin: 0px 20px 10px 20px;
	width: 328px;
	height: 250px;
}

.contentsImg:hover {
	transform: scale(1.75);
}

#contents {
	border-radius: 10px;
	box-shadow: 3px 0px 8px -3px rgba(0, 0, 0, 0.56);
	float: left;
	margin: 0px 20px 20px 20px;
	width: 1432px;
	height: auto;
}

.img {
	border-radius: 10px;
	box-shadow: 3px 0px 8px -3px rgba(0, 0, 0, 0.56);
}
</style>
</head>

<body>
	<div id="inbuyLB">
		<form action="auctioninbuy" method="post"
			onsubmit="return checkk(${auInfo.au_qty -1})">
			<input type="hidden" name="inbuyNum" value="${au_num}"> 구입수량
			:<input type="number" id="inbuyInput" name="inbuyQty" max="99"
				min="1" placeholder="최대  99EA" maxlength="3"
				oninput="maxLengthCheck(this)"><br> <br> <input
				type="submit" id="submBtnB" class="btn11" value="구입"> <input
				type="reset" class="btn11" value="취소">
		</form>
	</div>
	<!--   -->
	<div id="inbuyLB-shadow"></div>
	<div id="tenderLB">
		<h2>최소 입찰금액 : ${auInfo.au_minprice}</h2>
		<br>
		<form action="auctiontender" method="post"
			onsubmit="return check2(${point})">
			<input type="hidden" name="tenderNum" value="${au_num}"> 입찰가격
			: <input type="number" id="tenderInput" name="tenderPrice"
				max="99999999" min="${auInfo.au_minprice}" maxlength="8"
				oninput="maxLengthCheck(this)" placeholder="최대 입찰가 이상 입력"> <br>
			<br> <input type="submit" id="submBtnT" class="btn11" value="구입">
			<input type="reset" class="btn11" value="취소">
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
					<c:forEach var="cg" items="${cgList}">
						<c:if test="${code eq cg.cg_code }">${cg.cg_name}</c:if>
					</c:forEach>
				</div>
				<div id="middle_img_lv2">
					<img class="img" src="/auction/${auInfo.aui_imgSysName1}"
						width="100%" height="100%" />
				</div>

			</div>
			<div id="middle_contents1">
				<div id="middle_contents1_lv1">
					${auInfo.au_title }
					<div id="middle_contents1_lv2">
						<div id="peek1">
							<input type="submit" value="꿍♥" class="subtn">
						</div>
						<div id="peek2">
							<input type="submit" value="꿍♡" class="subtn">
						</div>
					</div>
				</div>
				<div id="middle_contents1_lv3">
					<table style="margin: 10px 0px 0px 10px; line-height: 200%">
						<tr>
							<th>작성자 : </th>
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
							<td colspan="2"><div id="tender_result">
									<fmt:formatNumber value="${auInfo.au_inprice}" pattern="#,###" />
									원
								</div></td>
						</tr>
					</table>
					<div id="auctiontime">
						<%-- 남은시간 : ${auInfo.au_date} --%>
					</div>
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
					<button class="submitbtn" onclick="myItem()">
						본인은 구매가 <br> 불가능 합니다.
					</button>
				</c:if>
			</div>
			<div id="middle_contents1_lv4">
				<h2>TOP3 입찰내역</h2>
				<div id="middle_Person">
					<script>
						<% int i = 1;%>
					</script>
					<c:forEach var="at" items="${atList}">
						<table class="atList">
							<tr style="height: 40px">
								<th style="width: 100px">아이디 :</th>
								<td style="width: 70px">${at.aut_mbid }</td>
								<td style="width: 30px">님</td>
								<th style="width: 100px">금액 :</th>
								<td style="width: 100px"><input class="price<%=i++%>" type="hidden"
									value="${at.aut_price}"> <fmt:formatNumber
										value="${at.aut_price}" pattern="#,###" /></td>
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
								<img class="img" src="/auction/${auw.aui_img}" width="100%"
									height="100%" />

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
										<td style="text-align: right;"><fmt:formatNumber
												value="${auw.au_minprice}" pattern="#,###" /></td>
										<td>원</td>
									</tr>
									<tr style="height: 32.5px">
										<th>즉시구매가</th>
										<td style="text-align: right;"><fmt:formatNumber
												value="${auw.au_inprice}" pattern="#,###" /></td>
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
				<div class="contentsImg">
					<img class="img" src="/auction/${auInfo.aui_imgSysName1}"
						width="100%" height="100%" />
				</div>
				<div class="contentsImg">
					<img class="img" src="/auction/${auInfo.aui_imgSysName2}"
						width="100%" height="100%" />
				</div>
				<div class="contentsImg">
					<img class="img" src="/auction/${auInfo.aui_imgSysName3}"
						width="100%" height="100%" />
				</div>
				<div class="contentsImg">
					<img class="img" src="/auction/${auInfo.aui_imgSysName4}"
						width="100%" height="100%" />
				</div>
				<div id="contents">${auInfo.au_contents }</div>
			</div>
			<div id="clear"></div>
		</div>

	</div>
	<div id="footer">
		<hr style="width: 100%; border: 2px solid coral; align: center;">
		<jsp:include page="footer.jsp"></jsp:include>
	</div>



</body>
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<script>

 function checkk(even) {
	console.log(1,even);
	var inbuy=$("#inbuyInput").val();
	if(even<inbuy){
		swal("구입수량이 없습니다.");
		return false;
	}
}
 function check2(even) {
	console.log(2,even);
	var tender=$("#tenderInput").val();
	if(even<tender){
		swal("포인트가 없습니다.");
		return false;
	}
}
	
 function myItem() {
	swal("자신의 상품은 구입하실수 없습니다.");
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
	
	$(document).ready(function() {
 		var date = new Date("${auInfo.au_date}");
 		CountDownTimer(date,'#auctiontime');
		});

 		function CountDownTimer(date,id) {
 		var end = new Date(date);
 	 	end.setDate(end.getDate()+2);
 	 	end.setHours(end.getHours()+13);
 	 	//end.setMinutes(end.getMinutes()+10);
 		var _second = 1000;
 		var _minute = _second * 60;
 		var _hour = _minute * 60;
 		var _day = _hour * 24;
 		var timer;

 		function showRemaining() {
 		var now = new Date();
 		var distance = end - now;

 		if (distance < 0) {
 		clearInterval(timer);
 		$(id).html("경매가 마감되었습니다.");
		$("#btn1").css("pointer-events","none");
		$("#btn2").css("pointer-events","none");
		$(".submitbtn").css("background-color","gray");
		$("#asubmitbtn").click(function() {
			swal("시간이 마감되어 구입이 불가능 합니다.");
		});
		
 		
 		if (!location.hash) { 
 			location.hash = '#reload';
 			
 			
 			location.href="auctionNotify?au_num=${au_num}";
 			
 			window.location.reload();
 		}

 		return;
 		}
 		
 		var days = Math.floor(distance / _day);
 		var hours = Math.floor((distance % _day) / _hour);
 		var minutes = Math.floor((distance % _hour) / _minute);
 		var seconds = Math.floor((distance % _minute) / _second);
 	 
 		$(id).html(" 마감까지 "+days + " 일 " + hours + " 시간 " + minutes +" 분 " + seconds + " 초 남았습니다.");
 		}
 		
 		timer = setInterval(showRemaining, 100);
 		};
 		
 		$("#submBtnB").click(function() {
 			if (!$("#inbuyInput").val()) {
 				swal(" 구매수량을 입력해 주세요 ");
 				return false;
 			}
 			if ($("#inbuyInput").val() > ${auInfo.au_qty -1} ) {
 				swal(" 최대 수량보다 많은 값을 구입하실수 없습니다. ");
 				return false;
 			}
 			if ($("#inbuyInput").val()*${auInfo.au_inprice} > ${point} ) {
 				swal("보유중인 포인트가 부족합니다. "
 					+ "\n 필요한 포인트 : "+ $("#inbuyInput").val()*${auInfo.au_inprice} 
 					+ "\n 보유중인 포인트 : "+${point});
 				return false;
 			}
 		});
 		
 		$("#submBtnT").click(function() {
 			if (!$("#tenderInput").val()) {
 				swal(" 입찰가 를 입력해 주세요 ");
 				return false;
 			} else
 			if ($("#tenderInput").val() < ${auInfo.au_minprice} ) {
 				swal(" 최소 입찰가 이상을 입력해 주세요  ");
 				return false;
 			} else
 			if ($("#tenderInput").val() < $(".price1").val() ){
 				swal(" 11111111111111111  ");
 				return false;
 			}
 		});
	
</script>
</html>