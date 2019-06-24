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
	width: 1520px;
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
	height: auto;
	font-size: 20px;
	box-shadow: 3px 0px 8px -3px rgba(0, 0, 0, 0.56);
	margin-bottom: 30px;
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
		</div>

	</div>
	<div id="footercheck">
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
		console.log(2,even)
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
					swal('밀어주기 성공! 작가를 응원합니다!');
					console.log("1234567" + data.aup_ptnum);
				
				},

				error : function(error) {
					swal('한 번만 후원할 수 있어요!');
					console.log(error);
				}
			});//end ajax
	}
	
	
</script>
</html>