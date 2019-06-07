<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
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
	height: 775px;
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
	text-align: center;
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

#peek2 {
	display: none;
}

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

#middle_item {
	border: 1px solid black;
	width: 1440px;
	height: 200px;
	margin: 20px;
}

#auctiontime {
	margin-top: 20px;
	width: 50%;
	height: 70px;
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
}

#inbuyLB-shadow {
	position: absolute;
	width: 100%;
	height: 1200px;
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

.subtn{
	border: none;
	font-size: 29.5px;
	color: red;
	background-color: white;

}

</style>
</head>

<body>
	<div id="inbuyLB"></div>
	<div id="inbuyLB-shadow"></div>
	<div id="tenderLB"></div>
	<div id="tenderLB-shadow"></div>

	<div id="mainheader">
		<jsp:include page="main.jsp" />
	</div>
	
	<div id="homeMain">

		<div id="List">
			<div id="middle_img">
				<div id="middle_img_lv1">카테고리 > ${raInfo.ra_cgcode}</div>
				<div id="middle_img_lv2">여기에 이미지</div>
			</div>
			<div id="middle_contents1">
				<div id="middle_contents1_lv1">
					여기에 상품 이름
					<div id="middle_contents1_lv2">
						<form action="shopbasket?ab_aunum=${au_num}" method="post">
							<div id="peek1">
								<input type="submit" value="꿍누르기♡" class="subtn">
							</div>
							<div id="peek2">
								<input type="submit" value="꿍누르기♥" class="subtn">
							</div>
						</form>
					</div>
				</div>
				<div id="middle_contents1_lv3">
					<table style="margin: 10px 0px 0px 10px; line-height: 200%">
						<tr>
							<th>작성자 :</th>
							<td>${raInfo.ra_mbid}님</td>
							<td></td>
						</tr>
						<tr>
							<th>수량 : 총수량</th>
							<td>총수량</td>
							<th>즉시구매가능수량 :</th>
							<td>총수량-1</td>
							<td style="color: gray; font-size: 11px;"></td>
						</tr>
						<tr>
							<th>즉시구매가격 :</th>
							<td colspan="2"><div id="tender_result">0원</div></td>
						</tr>
					</table>
					<div id="auctiontime">경매 남은 시간 표시</div>
				</div>
			</div>
			<div id="asubmitbtn">
				<button class="submitbtn" id="btn1">즉시구매</button>
				<button class="submitbtn" id="btn2">경매참여</button>
			</div>
			<div id="middle_contents1_lv4">
				<h2>TOP3 입찰내역</h2>
				<div id="middle_Person"></div>
			</div>
			<div id="middle_contents1_lv5">
				<h2>작가의 다른작품</h2>
				<div id="middle_item"></div>
			</div>

			
		</div>
		
		<div id="footercheck">
			<jsp:include page="footer.jsp"></jsp:include>
		</div>	
		

	</div>


</body>
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<script>




	var kind = 1;

	$("#peek1").click(function() {
		if ($("#peek2").val != null) {
			$("#peek1").css("display", "none");
			$("#peek2").css("display", "inline");
			kind = kind + 1;
		}
	});
	$("#peek2").click(function() {
		if ($("#peek1").val != null) {
			$("#peek2").css("display", "none");
			$("#peek1").css("display", "inline");
			kind = kind - 1;
		}
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
	
	var chk = ${au_num};
	$(document).ready(function() {
		alert("제작의뢰 리스트 시퀀스 "+chk+"번 글 입니다.");
	});
</script>
</html>