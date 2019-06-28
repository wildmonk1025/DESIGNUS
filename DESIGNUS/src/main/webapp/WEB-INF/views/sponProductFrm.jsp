<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>


<style>
::-webkit-scrollbar {
	width: 4px;
}

::-webkit-scrollbar-track {
	background-color: white;
}

::-webkit-scrollbar-thumb {
	background-color: #F5BCA9;
	border-radius: 5px;
}

::-webkit-scrollbar-thumb:hover {
	background: #F5BCA9;
}

::-webkit-scrollbar-button:start:decrement, ::-webkit-scrollbar-button:end:increment
	{
	width: 0px;
	height: 0px;
	background: coral;
}

div {
	margin: auto;
}

#mainheader {
	border: 1px solid #F5BCA9;
	width: 1518px;
	height: 170px;
	z-index: 1000;
	box-shadow: 3px 0px 8px -3px rgba(0, 0, 0, 0.56);
}

#homeMain {
	width: 640px;
	height: auto;
}

.btn {
	background-color: orange;
	width: 150px;
	height: 30px;
	color: white;
	float: right;
}

#footercheck {
	width: 1520px;
	height: 150px;
}

#title {
	left: 50px;
	width: 1200px;
	margin-top: 50px;
	height: 60px;
	font-size: 25px;
	color: orange;
}

#board {
	width: 1000px;
	height: auto;
	font-size: 20px;
	box-shadow: 3px 0px 8px -3px rgba(0, 0, 0, 0.56);
	margin-bottom: 30px;
}

td {
	height: 50px;
	border: 1px solid black;
}

.ts1 {
	width: 100px;
}

.ts2 {
	width: 233px;
}

.bt22 {
	width: 100%;
	height: 48px;
}

.bt21 {
	width: 100%;
	height: 48px;
}
</style>
<title>Home</title>
</head>
<body>
	<div id="mainheader">
		<jsp:include page="main.jsp" />
	</div>
	<div id="title">후원 상세 보기</div>

	<div id="homeMain" style="text-align: center;">

		<div id="sptitle" style="font-size: 30px;">
			(${ss_num})${ss_title} <br> <span
				style="font-size: 14px; color: gray; margin: 10px;">
				${ss_date}</span>
		</div>

		<div id="spimg" style="width: 500px; height: 300px; margin-top: 20px;">
			<img src="/sponsor/${ssi_img}" width="auto" height="100%">
		</div>
		<div id="contents"
			style="width: 640px; margin-top: 10px; text-align: left; margin-bottom: 10px; height: auto;">
			<div id="spid"
				style="font-weight: border; width: 215px; float: left; height: 40px; margin-top: 10px;">
				<span> 작성자 </span>
			</div>
			<div id="spid2"
				style="width: 320px; float: left; font-size: 17px; margin-top: 10px; text-align: left;">
				${ss_mbid_w}</div>

			<div id="spprice" style="float: left;">
				<div id="spprice"
					style="font-weight: bord; width: 150px; height: 40px; margin-top: 3px; float: left;">
					<span>가격</span>
				</div>
				<div id="spprice2"
					style="width: 170px; float: left; font-size: 17px; margin-top: 5px; text-align: center;">${ss_price}</div>
				<div id="spqty"
					style="font-weight: bord; width: 150px; float: left; margin-top: 3px;">
					<span> 후원 목표량 </span>
				</div>
				<div id="spqty2"
					style="width: 170px; float: left; font-size: 17px; margin-top: 7px; text-align: center;">${ss_goalqty}</div>
			</div>
			<br>
			<hr style="width: 100%; border: 0.5px solid #dceefa; align: center;">
			<div id="spdate"
				style="width: 640px; height: 60px; float: left; margin-top: 20px; font-size: 23px; color: red;">
				<span id="spdate2"> 여기 </span>
			</div>
			<hr style="width: 100%; border: 0.5px solid #dceefa; align: center;">
			<div id="spon" style="height: 50px; margin-top: 30px;">
				<span style="font-size: 15px; color: #1e8ccd;"> 현재
					${st_count} 명이 후원중입니다! </span>
			</div>
			<hr style="border: 4px solid #dceefa; align: center;">
			<div id="sponcon"
				style="text-align: center; margin-top: 10px; height: 50px; font-size: 22px;">
				<span style="margin: 20px; height: 30px;">상품 정보</span>
			</div>
			<hr style="width: 100%; border: 0.5px solid #dceefa; align: center;">
			<div id="spcontents"
				style="margin-top: 10px; font-size: 17px; margin-bottom: 10px; width: 600px; height: 300px; text-align: center">
				${ss_contents}</div>
		</div>

		<div id="btn" style="width: 640px; height: 100px;">
			<div id="btn1" style="float: left; width: 320px;">
				<c:choose>
					<c:when test="${ss_mbid_w == id}">
						<button class="bt21" id="bt21" onclick="sponEnd3()"
							style="background-color: gray">밀어주기</button>
					</c:when>
					<c:when test="distance le 0">
						<button class="bt21" id="bt21" onclick="sponEnd2()"
							style="background-color: gray">밀어주기</button>
					</c:when>
					<c:when test="${ss_goalqty == st_count}">
						<button class="bt21" id="bt21" onclick="sponEnd()"
							style="background-color: gray">밀어주기</button>
					</c:when>

					<c:when test="${ss_goalqty != st_count}">
						<button class="bt21" id="bt21" onclick="sponAj(${ss_num})"
							style="cursor: pointer; background: linear-gradient(to bottom, white, #a7e4f6)">밀어주기</button>
					</c:when>
				</c:choose>
			</div>
			<div id="btn2">
				<button class="bt22" onclick="location.href='sponsor'"
					style="margin-left: 10px; width: 310px; float: left;">목록보기</button>
			</div>
		</div>
		<%-- <div id="board">

			<table border="1" style="text-align: center">
				<tr>
					<td colspan="2" rowspan="4" style="width: 200; height: 200"><img
						src="/sponsor/${ssi_img}" width="150px" height="180px"></td>
					<td style="width: 100; height: 50;">제품명</td>
					<td colspan="3" style="width: 700">(${ss_num})${ss_title}</td>
				</tr>
				<tr>
					<td>작성자</td>
					<td colspan="3">${ss_mbid_w}</td>
				</tr>
				<tr>
					<td>가격</td>
					<td colspan="3">${ss_price}</td>
				</tr>
				<tr>
					<td>등록일</td>
					<td colspan="3">${ss_date}</td>
				</tr>
			</table>
			<table border="1" style="text-align: center" class="ts">
				<tr>
					<td class="ts1">후원 목표량</td>
					<td class="ts2">${ss_goalqty}</td>
					<td class="ts1">후원 기간</td>
					<td class="ts2">${ss_date2}</td>
					<td class="ts1">현재 주문량</td>
					<td class="ts2">${st_count}</td>
				</tr>
				<tr>
					<td colspan="6" style="height: 200px">${ss_contents}</td>
				</tr>
				<tr>
					<td colspan="4"><c:choose>
							<c:when test="${ss_mbid_w == id}">
								<button class="bt21" onclick="sponEnd3()"
									style="background-color: gray">밀어주기</button>
							</c:when>
							<c:when test="${enddate <= sysdate}">
								<button class="bt21" onclick="sponEnd2()"
									style="background-color: gray">밀어주기</button>
							</c:when>
							<c:when test="${ss_goalqty == st_count}">
								<button class="bt21" onclick="sponEnd()"
									style="background-color: gray">밀어주기</button>
							</c:when>
							<c:when test="${ss_goalqty != st_count}">
								<button class="bt21" onclick="sponAj(${ss_num})"
									style="cursor: pointer; background-color: yellow">밀어주기</button>
							</c:when>
						</c:choose></td>
					<td colspan="2">
						<button class="bt22" onclick="location.href='sponsor'">목록보기</button>
					</td>
				</tr>
			</table>
			<table>
			</table>
		</div> --%>

	</div>
	<div id="footercheck">
		<hr style="width: 100%; border: 2px solid coral; align: center;">
		<jsp:include page="footer.jsp"></jsp:include></div>


</body>
<script>
	function sponEnd3() {
		swal("자신이 올린 제품에는 후원할 수 없습니다.");
	}

	function sponEnd2() {
		swal("후원을 신청할 수 있는 기간이 끝났습니다!");
	}

	function sponEnd() {
		swal("마감이 완료된 후원입니다!");
	}


	function sponAj(even) {
		console.log(2, even)
		var form = {
			ss_num : even
		}
		$.ajax({
			url : 'sponbuy',
			type : 'post',
			data : JSON.stringify(form),
			contentType : "application/json; charset=utf-8;",
			dataType : 'json',
			success : function(data) {
				swal('밀어주기 성공! 작가를 응원합니다!')
				.then((value) =>{
				location.href="sponproduct?ss_num=${ss_num}";
				});
				console.log("1234567" + data.aup_ptnum);
			},
			error : function(error) {
				swal('한 번만 후원할 수 있어요!');
				console.log(error);
			}
		});//end ajax
	}
	
	$(document).ready(function() {
 		var date = new Date("${ss_date}");
 		CountDownTimer(date,'#spdate2');
		});

 		function CountDownTimer(date,id) {
 		var end = new Date(date);
 		end.setDate(end.getDate()+7);
 	 	/* end.setMinutes(end.getMinutes()+10);  */
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
 		$('#spdate2').html("후원 시간이 마감되었습니다.");
/* 		$("#btn1").css("pointer-events","none");
		$("#btn2").css("pointer-events","none");*/
		$('#bt21').css("background","gray"); 
		$('#bt21').ready(function() {  
			$('#bt21').removeAttr("onclick");
			$('#bt21').html('종료된 후원입니다.');
		});
 		if (!location.hash) { 
 			location.hash = '#reload';
 			location.href="sponproduct?ss_num=${ss_num}";
 			window.location.reload();
 		}

 		return;
 		}
 		
 		var days = Math.floor(distance / _day);
 		var hours = Math.floor((distance % _day) / _hour);
 		var minutes = Math.floor((distance % _hour) / _minute);
 		var seconds = Math.floor((distance % _minute) / _second);
 	 
 		$(id).html("후원 마감까지 "+days + "일 " + hours + "시간 " + minutes +"분 " + seconds + "초 남았습니다!");
 		}
 		
 		timer = setInterval(showRemaining, 100);
 		}
</script>
</html>