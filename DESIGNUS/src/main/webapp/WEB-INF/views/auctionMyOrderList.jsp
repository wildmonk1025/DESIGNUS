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
	width: 1080px;
	height: 50px;
	text-align: left;
	font-size: 20px;
	float: left;
	overflow: auto;
}


#renking {
	border: 1px solid orange;
	margin: 0px 10px 10px 10px;
	width: 1080px;
	height: 875px;
	text-align: center;
	font-size: 20px;
	float: left;
}
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
	position: absolute;
	width: 400px;
	height: 330px;
	border-radius: 100px;
	z-index: 1002;
	padding-top: 70px;
	text-align: center;
	background-color: #FFE08C;
	display: none;
	font-size: 22px;
	top: 500px;
	left: 900px;
}

#l3 {
	position: absolute;
	width: 600px;
	height: 530px;
	border-radius: 100px;
	z-index: 1002;
	padding-top: 70px;
	text-align: center;
	background-color: #FFE08C;
	display: none;
	font-size: 22px;
	top: 500px;
	left: 900px;
}
#w3 {
	position: absolute;
	width: 600px;
	height: 530px;
	border-radius: 100px;
	z-index: 1002;
	padding-top: 70px;
	text-align: center;
	background-color: #FFE08C;
	display: none;
	font-size: 22px;
	top: 500px;
	left: 900px;
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
	position: absolute;
	width: 100%;
	height: 200%;
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
#sixth{
 position: absolute;
  top: 1080px;
  left: 1150px;  
}
.first{
border: 1px solid orange;
	margin: 10px 10px 10px 10px;
	width: 1060px;
	height: 250px;
	text-align: center;
	font-size: 20px;
	float: left;
}
.p1 {
 width: 500px;
 float: left;
 text-align: left;
}
.p2{
width: 500px;
text-align: left;
float: left;
}
.second{
    background-color : #FFBB00;
	margin: 10px 10px 10px 10px;
	width: 1040px;
	height: 40px;
	text-align: center;
	font-size: 20px;
	float: left;
}
.third{
	margin: 5px 10px 10px 10px;
	width: 270px;
	height: 175px;
	text-align: center;
	font-size: 20px;
	float: left;
}
.fourth{
	margin: 5px 10px 10px 10px;
	width: 570px;
	height: 175px;
	text-align: left;
	font-size: 20px;
	float: left;
}
.Fifth{
	margin: 5px 10px 10px 10px;
	width: 130px;
	height: 175px;
	text-align: center;
	font-size: 20px;
	float: left;
}
.p3{
margin-top: 60px;
}
.p4{
margin-top: 30px;
font-size: 13px;
color: red;
}
.bbttzzz{
  width: 150px;
  height: 50px;
  color: white;
  background-color: orange;
  margin-top: 20px;
}

.bbttzzz:hover {
   background-color: red;
}
</style>

</head>
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>

<body>
	<div id="total"></div>
	<div id="l1"></div>
     <div id="l3"></div>
     <div id="w3"></div>
     
     <div id="mypagemain">
		<div id="mainheader">
			<jsp:include page="main.jsp" />
		</div>

		<jsp:include page="Mapagemain.jsp" />


		<div id="rightmain">
			<div id="notice">
			 <h2>출품작 구매 내역</h2><hr>
			</div>
			<div id="renking">
				
			</div>
        <div id="sixth">${ROpaging}</div>
		</div>
		<jsp:include page="footer.jsp" />
	</div>
		
</body>
<script>
	var apList = ${apList};
	console.log(11,apList);

	var main = "";

	for (var i = 0; i < apList.length; i++) {
		if (apList[i].aup_step == 1) {
			main += "<div class='first'><div class='second'><div class='p1'>"+apList[i].aut_date+"</div><div class='p2'>운송장번호 : -</div></div>"
			     +"<div class='third'><a href='auctionRead?au_num="+apList[i].aup_ranum+"'><img src='/resources/images/"+apList[i].aui_img+"'/></a></div>"
				 + "<div class='fourth'>상품번호 :"+ apList[i].aup_ptnum+"<br>상품명 :"+apList[i].au_title+"<br>"
				 + "구매 금액 :"+ apList[i].aup_price+"<br>상품 수량 :"+apList[i].aup_qty+"<br>"
				 + "<p class='p4'>작업이 확정된 시점의 요청사항 추가는 추가 요금 및,<br> 작업 완료일이 늘어날 수 있습니다.</p></div>"
	             +"<div class='Fifth'><input class='bbttzzz' id='btzRevM' type='button' onclick=\"javascript:shippingInfo('"+ apList[i].aup_ptnum+"')\" value='배송정보입력'/><br>"
	             +"<input class='bbttzzz' type='button' onclick=\"javascript:auccancel('"+apList[i].aup_ptnum+"')\" value='취소'/></div></div>"

		} else if (apList[i].aup_step == 2) {
			main += "<div class='first'><div class='second'><div class='p1'>"+apList[i].aut_date+"</div><div class='p2'>운송장번호 : -</div></div>"
				    +"<div class='third'><a href='auctionRead?au_num="+apList[i].aup_ranum+"'><img src='/resources/images/"+apList[i].aui_img+"'/></a></div>"
					+ "<div class='fourth'>상품번호 :"+ apList[i].aup_ptnum+"<br>상품명 :"+apList[i].au_title+"<br>"
					+ "구매 금액 :"+ apList[i].aup_price+"<br>상품 수량 :"+apList[i].aup_qty+"<br>"
					+ "<p class='p4'>작업이 확정된 시점의 요청사항 추가는 추가 요금 및,<br> 작업 완료일이 늘어날 수 있습니다.</p></div>"
					+ "<div class='Fifth'><p class='p3'>배송대기중...</p></div></div>";

		} else if (apList[i].aup_step == 3) {
			main += "<div class='first'><div class='second'><div class='p1'>"+apList[i].aut_date+"</div><div class='p2'>운송장번호 :"+apList[i].aup_track+"</div></div>"
				    +"<div class='third'><a href='auctionRead?au_num="+apList[i].aup_ranum+"'><img src='/resources/images/"+apList[i].aui_img+"'/></a></div>"
					+ "<div class='fourth'>상품번호 :"+ apList[i].aup_ptnum+"<br>상품명 :"+apList[i].au_title+"<br>"
					+ "구매 금액 :"+ apList[i].aup_price+"<br>상품 수량 :"+apList[i].aup_qty+"<br>"
					+ "<p class='p4'>작업이 확정된 시점의 요청사항 추가는 추가 요금 및,<br> 작업 완료일이 늘어날 수 있습니다.</p></div>"
					+ "<div class='Fifth'><input class='bbttzzz' type='button' onclick=\"location.href='scquestion'\" value='고객센터 문의'/><br>"
					+ "<input class='bbttzzz' type='button' onclick=\"review('"+ apList[i].aup_ptnum+ "')\" value='수령확인구매후기 쓰기'/></div></div>";

		} else if (apList[i].aup_step == 4) {
			main += "<div class='first'><div class='second'><div class='p1'>"+apList[i].aut_date+"</div><div class='p2'>운송장번호 :"+apList[i].aup_track+"</div></div>"
		            +"<div class='third'><a href='auctionRead?au_num="+apList[i].aup_ranum+"'><img src='/resources/images/"+apList[i].aui_img+"'/></a></div>"
			        + "<div class='fourth'>상품번호 :"+ apList[i].aup_ptnum+"<br>상품명 :"+apList[i].au_title+"<br>"
			        + "구매 금액 :"+ apList[i].aup_price+"<br>상품 수량 :"+apList[i].aup_qty+"<br>"
			        + "<p class='p4'>작업이 확정된 시점의 요청사항 추가는 추가 요금 및,<br> 작업 완료일이 늘어날 수 있습니다.</p></div>"
					+ "<div class='Fifth'><p class='p3'>완료</p></div></div>";
		}
	}

	$('#renking').html(main);

	function shippingInfo(even) {

		var form = {
			aup_ptnum : even
		}
		var sub = "";
		$.ajax({
					url : 'enter',
					type : 'post',
					data : JSON.stringify(form),
					contentType : "application/json; charset=utf-8;",
					dataType : 'json',
					success : function(data) {
						console.log("1234567" + data.aup_ptnum);
						sub+="<form action='aucapply' method='post'>"
						if (data.aut_kind == "I") {
							sub += "즉시구매<input type='hidden' name='aut_kind'><br>"
						} else if (data.aut_kind == "O") {
							sub += +"낙찰<input type='hidden' name='aut_kind'><br>"
						} else {
							sub += +"입찰<input type='hidden' name='aut_kind'><br>"
						}
						;
						sub += "거래번호 :"
								+ data.aup_ptnum
								+ "<input type='hidden' name='aup_ptnum' value='"+data.aup_ptnum+"' ><br>"
								+ "상품이름 :"
								+ data.au_title
								+ "<br>"
								+ "가격 : "
								+ data.aup_price
								+ "<input type='hidden' name='aup_price' value='"+data.aup_price+"' ><br>"
								+ "아이디 : "
								+ data.aup_mbid_n
								+ "<input type='hidden' name='aup_mbid_n' value='"+data.aup_mbid_n+"'><br>"
								+ "이름 :<input type='text' name='aup_name'><br>"
								+ "주소 :<input type='text' name='aup_address'><br>"
								+ "연락처: <input type='text' name='aup_phone'><br>"
								+ "<input type='submit' value='요청'><br>"
								+ "<input type='button' id='back' value='취소'></form>";

						$('#total').css("display", "inline");
						$('#l1').css("display", "inline");

						$('#l1').html(sub);
					},

					error : function(error) {
						alert('정상적인 추천이 실패했습니다.');
						console.log(error);
					}
				});//end ajax

	}//end sho

	function review(even) {auccancel

		var form = {aup_ptnum : even}
		var bb = "";
		$.ajax({
					url : 'reviewboard',
					type : 'post',
					data : JSON.stringify(form),
					contentType : "application/json; charset=utf-8;",
					dataType : 'json',
					success : function(data) {
						alert('해당 상품을 추천하였습니다.');
						console.log("1234567" + data.aup_ptnum);
						    bb+="<form action='reviewBoardWrite' method='post' enctype='multipart/form-data'>"
						if (data.aut_kind == "I") {
							bb += "즉시구매<input type='hidden' name='aut_kind'><br>"
						} else if (data.aut_kind == "O") {
							bb += +"낙찰<input type='hidden' name='aut_kind'><br>"
						} else {
							bb += +"입찰<input type='hidden' name='aut_kind'><br>"
						}
						;
						bb += "<h2>수령 확인 및구매 후기 쓰기</h2><br/></hr><input type='hidden' name='aup_ptnum' value='"+data.aup_ptnum+"' ><br>"
								+ "상품이름 :"
								+ data.au_title
								+ "<input type='button' id='butt' value='추천하기' onclick=\"good('"
								+ data.au_mbid_w
								+ "')\"><br><hr>"
								+ "<input type='hidden' name='au_mbid_w' value='"
								+ data.au_mbid_w
								+ "')>"
								+ "<input type='hidden' name='aup_price' value='"
								+ data.aup_price
								+ "')>"
								+ "구매후기 제목 :<input type='text' name='bd_title'><br>"
								+ "내용</br>"
								+ "<textarea rows='10' cols='70' name='bd_contents'></textarea><br>"
								+ "<input type='file' name='bd_imgSysName' id='bd_imgSysName' value='파일 첨부'  onchange='fileChk(this)' multiple><br>"
								+ "<input type='hidden' id='fileCheck' value='0' name='fileCheck'><br>"
								+ "<input type='submit' value='완료'>"
								+ "<input type='button' id='backSetp' value='취소'></form>";

						$('#total').css("display", "inline");
						$('#l3').css("display", "inline");

						$('#l3').html(bb);
					},

					error : function(error) {
						alert('정상적인 추천이 실패했습니다.');
						console.log(error);
					}
				});//end ajax
	}//end review
	
	function auccancel(even) {

		var form = {aup_ptnum : even}
		var cc = "";
		$.ajax({
					url : 'auccancelDelete',
					type : 'post',
					data : JSON.stringify(form),
					contentType : "application/json; charset=utf-8;",
					dataType : 'json',
					success : function(data) {
						alert('해당 상품을 추천하였습니다.');
						console.log("12" + data.aut_date);
						cc+="<form action='auccancel' method='post'>"
						if (data.aut_kind == "I") {
							cc += "즉시구매<input type='hidden' name='aut_kind'><br>"
						} else if (data.aut_kind == "O") {
							cc += +"낙찰<input type='hidden' name='aut_kind'><br>"
						} ;
					    cc += "<h2>취소하기</h2><br/></hr><input type='hidden' name='aup_ptnum' value='"+data.aup_ptnum+"' ><br>"
						   + "상품이름 :"+ data.au_title
						   +"가격 : "+data.aup_price+	"<input type='hidden' name='aup_price' value='"+data.aup_price+"' ><br>"    	
						   +"아이디 : "+data.aup_mbid_n+"<input type='hidden' name='aup_mbid_n' value='"+data.aup_mbid_n+"'><br>"
						   +"<input type='hidden' name='aup_ranum' value='"+data.aup_ranum+"'>"
						   +"<input type='hidden' name='aut_date' value='"+data.aut_date+"'>"
						   +"<input type='hidden' name='au_mbid_w' value='"+data.au_mbid_w+"'>"
						   +"의뢰 취소 사유<br>"
						   +"<textarea rows='7' cols='40' name='nf_contents'></textarea><br>"
						   + "<input type='submit' value='취소'>"
						   + "<input type='button' id='backSetp' value='취소'></form>";

						$('#total').css("display", "inline");
						$('#w3').css("display", "inline");

						$('#w3').html(cc);
					},

					error : function(error) {
						alert('정상적인 추천이 실패했습니다.');
						console.log(error);
					}
				});//end ajax
	}//end review
	
	$('#setpT').html(main);
	function good(data) {
		var btn = $('#butt');
		$.ajax({
			url : "goods",
			type : "post",
			data : {
				idw : data
			},
			success : function(data) {
				alert('해당 상품을 추천하였습니다.');
				console.log("123456" + data);
				//btn.disabled = 'disabled'
				var bu = document.getElementById('butt');
				bu.disabled = true;

			},
			error : function(error) {
				alert('정상적인 추천이 실패했습니다.');
				console.log(error);
			}

		});//end good(ajax)
	}//end good

	$("#total").click(function() {
		$("#total").css("display", "none");
		$("#l1").css("display", "none");
	}); // end total
	$("#back").click(function() {
		$("#total").css("display", "none");
		$("#l1").css("display", "none");
	}); //end back

	$("#review").click(function() {
		$('#total').css("display", "inline")
		$('#Q1').css("display", "inline")
	});//end review
	$("#total").click(function() {
		$("#total").css("display", "none");
		$("#Q1").css("display", "none");
	});// end total
	$("#backSetp").click(function() {
		$("#total").css("display", "none");
		$("#Q1").css("display", "none");
	});//end backSetp	

	function fileChk(elem) {
		console.dir(elem);
		if (elem.value == "") {
			console.log("empty");
			$('#fileCheck').val(0); //파일 첨부 안했음
		} else {
			console.log("Notempty")
			$('#fileCheck').val(1);//파일 첨부 했음
		}
	}//end fileChk
</script>

</html>
