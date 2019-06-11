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
	width: 100%;
	height: 100%;
}

div {
	margin: auto;
}

.bt {
	border: none;
	float: right;
	margin-right: 30px;
	margin-top: 50px;
	width: 100px;
	height: 80px;
	/*General*/
	display: inline-block;
	text-decoration: none;
	/*Text*/
	font-family: "Helvetica Neue", Helvetica, Arial, sans-serif;
	font-size: 13px;
	font-weight: bold;
	line-height: 240%;
	color: rgb(162, 136, 44);
	text-align: center;
	text-shadow: 0px 1px 0px rgba(255, 255, 255, 0.25);
	/*Button*/
	background-color: #FFE79E;
	background-image: -moz-linear-gradient(53% 100% 90deg, rgb(212, 212, 212)
		0%, rgb(237, 237, 237) 100%);
	background-image: -webkit-gradient(linear, 53% 100%, 53% 3%, color-stop(0, rgb(212, 212,
		212)), color-stop(1, rgb(237, 237, 237)));
	background-image: -webkit-linear-gradient(90deg, rgb(212, 212, 212) 0%,
		rgb(237, 237, 237) 100%);
	background-image: -o-linear-gradient(90deg, rgb(212, 212, 212) 0%,
		rgb(237, 237, 237) 100%);
	background-image: -ms-linear-gradient(90deg, rgb(212, 212, 212) 0%,
		rgb(237, 237, 237) 100%);
	background-image: linear-gradient(90deg, rgb(212, 212, 212) 0%,
		rgb(237, 237, 237) 100%);
	width: 85px;
	height: 35px;
	border-color: rgb(223, 192, 86);
	border-width: 1px;
	-moz-border-radius: 3px;
	-webkit-border-radius: 3px;
	border-radius: 3px;
	border-style: solid;
	-moz-box-shadow: 0px 0px 0px 3px rgba(0, 0, 0, 0.1), inset 0px 1px 0px
		rgba(255, 255, 255, 0.25);
	-webkit-box-shadow: 0px 0px 0px 3px rgba(0, 0, 0, 0.1), inset 0px 1px
		0px rgba(255, 255, 255, 0.25);
	box-shadow: 0px 0px 0px 3px rgba(0, 0, 0, 0.1), inset 0px 1px 0px
		rgba(255, 255, 255, 0.25);
	-ms-filter: "progid:DXImageTransform.Microsoft.gradient(startColorstr=#ffffefbf,
		endColorstr=#ffffe185, GradientType=0) progid:DXImageTransform.Microsoft.Glow(Color=#ff000000,
		Strength=3)";
	filter: progid:DXImageTransform.Microsoft.gradient(startColorstr=#ffffefbf,
		endColorstr=#ffffe185, GradientType=0) progid:DXImageTransform.Microsoft.Glow(Color=#ff000000,
		Strength=3);
	display: inline-block;
	background-image: -webkit-gradient(linear, 53% 100%, 53% 3%, color-stop(0, rgb(212, 212,
		212)), color-stop(1, rgb(237, 237, 237)));
	background-image: -webkit-linear-gradient(90deg, rgb(212, 212, 212) 0%,
		rgb(237, 237, 237) 100%);
	background-image: -o-linear-gradient(90deg, rgb(212, 212, 212) 0%,
		rgb(237, 237, 237) 100%);
	background-image: -ms-linear-gradient(90deg, rgb(212, 212, 212) 0%,
		rgb(237, 237, 237) 100%);
	background-image: linear-gradient(90deg, rgb(212, 212, 212) 0%,
		rgb(237, 237, 237) 100%);
}

#notice {
	padding-top: 5px;
	margin: 10px;
	border: 1px solid orange;
	width: 1080px;
	height: 100px;
	text-align: center;
	font-size: 20px;
	float: left;
}

#leftmain {
	width: 310px;
	height: 950x;
	border: 1px solid black;
	float: left;
}

#rightmain {
	width: 1210px;
	height: 950px;
	border: 1px solid black;
	float: left;
}

#info {
	border: 1px solid orange;
	margin: 0px 10px 10px 10px;
	width: 280px;
	height: 580px;
	font-size: 20px;
	text-align: left;
	float: left;
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
	width: 1520px;
	height: 170px;
	text-align: center;
}

.bt01 {
	border: none;
	float: right;
	margin-right: 30px;
	width: 100px;
	height: 80px;
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
	margin: 0px 10px 10px 10px;
	width: 280px;
	height: 60px;
	text-align: left;
	font-size: 20px;
	float: left;
}

#img {
	margin-top: 20px;
	border: 1px solid orange;
	margin: 20px 10px 10px 10px;
	width: 280px;
	height: 290px;
	text-align: left;
	font-size: 20px;
	float: left;
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

#loginwriter {
	padding: 3px;
	padding-top: 20px;
	width: 300px;
	height: 80px;
	float: right;
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
	margin: 0px 10px 10px 10px;
	width: 1200px;
	height: 840px;
	float: left;
	font-size: 20px;
	text-align: center;
	overflow: auto;
}

#setpT {
	width: 1200px;
	margin: 0px 10px 10px 10px;
	height: 900px;
	float: left;
	border: none;
}

#l1 {
	width: 400px;
	height: 230px;
	border-radius: 100px;
	z-index: 1002;
	padding-top: 70px;
	text-align: center;
	background-color: #FFE08C;
	display: none;
	font-size: 22px;
}

#Q1 {
	width: 500px;
	height: 330px;
	border-radius: 100px;
	z-index: 1002;
	padding-top: 70px;
	text-align: center;
	background-color: #FFE08C;
	display: none;
	font-size: 22px;
}

#total {
	width: 100%;
	height: 1200px;
	background-color: black;
	z-index: 1001;
	opacity: 0.75;
	display: none;
}

.t1 {
	top: 100;
	left: -200;
}

#mypagemain {
	width: 1530px;
	height: 1200px;
	border: 1px solid black;
}

#2list {
	width: 1000px;
	height: 250px;
	float: left;
}

#sangimg {
	margin: 10px;
	height: 150px;
	width: 150px;
	float: left;
}

#stepp {
	border: 1px solid black;
	margin: 10px;
	hieght: 50px;
	width: 120px;
	float: right;
}
</style>

</head>
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>

<body>
	<div id="total"></div>
	<div id="mainheader">
		<jsp:include page="main.jsp" />
	</div>


	<div id="mypagemain">
		<div id="leftmain">
			<div id="img">
				<h1>프로필사진</h1>
			</div>

			<div id="point">
				<h1>포인트:</h1>
			</div>

			<div id="info">
				<table width="1000">

					<tr>
						<td style="font-size: 27px"><a href="historylist?list=rev">제작의뢰
								내역</a></td>
					</tr>
					<tr>
						<td style="font-size: 27px"><a href="historylist?list=revre">제작의뢰
								접수내역</a></td>
					</tr>
					<tr>
						<td style="font-size: 27px"><a href="historylist?list=auc">출품작
								구매 내역</a></td>
					</tr>
					<tr>
						<td style="font-size: 27px"><a href="historylist?list=aucre">출품작
								판매 내역</a></td>
					</tr>
					<tr>
						<td style="font-size: 27px"><a href="historylist?list=spon">후원진행
								내역</a></td>
					</tr>
					<tr>
						<td style="font-size: 27px"><a href="historylist?list=sponre">후원요청
								내역</a></td>
					</tr>
					<tr>
						<td style="font-size: 27px"><a href="historylist?list=basket">꿍
								내역</a></td>
					</tr>
					<tr>
						<td style="font-size: 27px"><a href="privacyedit">개인정보 수정</a></td>
					</tr>
					<tr>
						<td style="font-size: 27px"><a href="memberout">회원탈퇴 신청</a></td>
					</tr>
					<tr>
						<td style="font-size: 27px"><a href="nortowri">작가전환 신청</a></td>
					</tr>
				</table>
			</div>
		</div>
		<div id="rightmain">
			<div id="notice">
				<h2>출품작 구매 내역</h2>
				<hr>
			</div>
			<div id="setp">
				<div id="setpT">
					<c:forEach var="apList" items="${apList}">
						<div id="2list">
							<div id="sangimg" align="left">
								<a href='#' onclick="articleView(${apList.aup_ranum})"> <img
									src='/resources/images/${apList.aui_img}'></a>
							</div>
							<br/>
							<p align="left">상품 이름 : ${apList.au_title}</p>
							<div id="stepp">
								<c:set var="step" value="${apList.aup_step}" />
								<c:if test="${step eq 1}">
									<button class="bt" id="btzRevM">배송정보입력</button>
									<button class="bt" id="cencle"
										onclick="location.href='auccancel?ranum=${apList.aup_ranum}'">취소</button>
								</c:if>
								<c:if test="${step eq 2}">
									<h3>
										배송<br /> 대기중
									</h3>
								</c:if>
								<c:if test="${step eq 3}">
									<button class="bt" id="btzRevQ">고객센터 문의</button>
									<br />
									<button class="bt" id="review">수령 확인/구매 후기 쓰기</button>
								</c:if>
								<c:if test="${step eq 4}">
									<h3>완료</h3>
								</c:if>
							</div>

							<p align="left">구매 금액 : ${apList.aup_price}</p>
							<p align="left">주문 수량 : ${apList.aup_qty}</p>
							<br />
							<p align="left">
								작업이 확정된 시정의 요청 사항 추가는 추가 요금 및,<br /> 작업 완료일이 늘어날 수 있습니다.
							</p>
							<br />
						</div>
						<form action="aucapply" method="post">
							<div id="l1">
								${apList.au_mbid_w}님에게 배송요청 <input type="hidden"
									name="au_mbid_w" id="au_mbid_w" value="${apList.au_mbid_w}">
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
								<input type="submit" class="bt" value="요청하기"> <input
									class="bt" id="back" type="button" value="취소">
							</div>
						</form>
						<form action="reviewBoardWrite" method="post"
							enctype="multipart/form-data">
							<div id="Q1">
								수령 확인 및 구매후기 쓰기
								<div id="Q2">
									${apList.au_title} <input class="bt" type="button" id="butt"
										value="추천하기" onclick="good('${apList.au_mbid_w}')"> <input
										type="hidden" name="aup_ptnum" id="aup_ptnum"
										value="${apList.aup_ptnum}">
								</div>
								<div id="Q3">
									구매후기 제목 :<input type="text" name="bd_title" id="bd_title"><br>
									내용 <br />
									<textarea rows="10" cols="70" name="bd_contents"></textarea>
									<input type="file" name="bd_imgSysName" id="bd_imgSysName"
										value="파일 첨부" onchange="fileChk(this)" multiple> <input
										type="hidden" id="fileCheck" value="0" name="fileCheck">
								</div>
								<input type="submit" class="bt" value="완료"> <input
									class="bt" id="backSetp" type="button" value="취소">
							</div>
						</form>
					</c:forEach>

				</div>
				${paging}
			</div>

		</div>
		<div id="lightbox-shadow">

			<div id="lightbox">
				<h1>여기가 배송정보입력</h1>
				<button class="bt">요청</button>
				<button class="bt" type="button"
					onclick="location.href='auctionMyOrderList.html' ">취소</button>
			</div>
		</div>
		<div id="lightbox-shadow1">

			<div id="lightbox1">
				<h1>출품작 낙찰취소</h1>
				<button class="bt">취소하기</button>
				<button class="bt" type="button"
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
	</div>
</body>
<script type="text/javascript">


	

function good(data) {
	var btn = $('#butt');
	 $.ajax({
			url: "goods",
			type:"post",
		    data:{idw:data},
		    success:function(data){
		    	alert('해당 상품을 추천하였습니다.');
		    	console.log("123456"+data);
		    	//btn.disabled = 'disabled'
		    	var bu=document.getElementById('butt');
		    		bu.disabled =true;
		
		    },
		    error:function(error){
		    	alert('정상적인 추천이 실패했습니다.');
		    	console.log(error);
		    }
			 
		 });//end ajax
}

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
$("#backSetp").click(function() {
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
