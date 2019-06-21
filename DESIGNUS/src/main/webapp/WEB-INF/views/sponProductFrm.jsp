<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>
<head>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
					<td class="ts2">${ss_date2}</td>
					<td class="ts1">현재 주문량</td>
					<td class="ts2">${st_count}</td>
				</tr>
				<tr>
					<td colspan="6" style="height: 150">${ss_contents}</td>
				</tr>
				<tr>
					<td colspan="4">
						<button class="bt21" onclick="sponAj(${ss_num})"
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
	/* window.onload = function() {
		var msg = '${msg}';
		alert(msg);
	} */
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
					alert('밀어주기 성공! 작가를 응원합니다!');
					console.log("1234567" + data.aup_ptnum);
				
				},

				error : function(error) {
					alert('한 번만 후원할 수 있어요!');
					console.log(error);
				}
			});//end ajax
	}
	var today = new Date();
	var dateString = ${ss_date2};
	var dateArray = dateString.split("-"); //이렇게 쪼개서 나누어준 다음.
	var dateObj = new Date(dateArray[0], Number(dateArray[1])-1, dateArray[2]);

	
	
</script>
</html>