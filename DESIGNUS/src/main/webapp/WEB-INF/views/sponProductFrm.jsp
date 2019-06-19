<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>
<head>

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
	height: 700px;
}

.btn {
	background-color: orange;
	width: 150px;
	height: 30px;
	color: white;
	float: right;
}

#coklist {
	width: 1000px;
	height: 150px;
	float: left;
	display: block;
}

#bestlist {
	width: 1000px;
	height: 150px;
	float: left;
	display: block;
}

#footercheck {
	border: 1px solid black;
	width: 1520px;
	height: 150px;
}

#title {
	left: 50px;
	width: 1000px;
	margin-top: 30px;
	height: 60px;
	font-size: 20px;
	color: orange;
}

#board {
	width: 1000px;
	height: 800px;
	font-size: 20px;
}

td {
	height: 50px;
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

	<div id="homeMain">
		<div id="title">후원 상세 보기</div>

		<div id="board">
			<table border="1" style="text-align: center">
				<tr>
					<td colspan="2" rowspan="4" style="width: 200; height: 200"><img
						src="resources/images/${ssi_imgSysName}" width="150px"
						height="180px"></td>
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
					<td class="ts2">Sponsor table</td>
					<td class="ts1">현재 주문량</td>
					<td class="ts2">0</td>
				</tr>
				<tr>
					<td colspan="6" style="height: 150">${ss_contents}</td>
				</tr>
				<tr>
					<td colspan="4">
						<button class="bt21" id="sponajaxbtn"
							onclick="location.href='sponbuy?ss_num=${ss_num}'; return false"
							style="cursor: pointer">밀어주기</button>
					</td>
					<td colspan="2">
						<button class="bt22" onclick="location.href='sponsor'">목록보기</button>
					</td>
				</tr>
			</table>
			<table>
			</table>
		</div>

	</div>
	<div id="footercheck">
		<jsp:include page="footer.jsp"></jsp:include></div>


</body>
<script>
	/* $("#sponajaxbtn").click function(){
	 var ss_num = ${ss_num};
	 $.ajax({
	 type:'get',
	 url:'sponbuy',
	 data:ss_num,
	 dataType:JSON,
	 success(msg){
	 alert("밀어주기 완료되었습니다.")
	 }
	 error(msg){
	 alert("밀어주기 실패!")
	 }
	 })
	 } */
</script>
</html>