<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
	height: 600px;
}

.btn1 {
	background-color: orange;
	width: 150px;
	height: 30px;
	color: white;
	float: right;
}

.btn2 {
	width: 140px;
	height: 50px;
	background-color: orange;
	border: none;
}

#list {
	width: 1420px;
	height: 480px;
	float: left;
	margin: 50px;
	display: inline-block;
}

#footercheck {
	border: 1px solid black;
	width: 1520px;
	height: 150px;
}

.ipt {
	font-size: 18px;
	border: 0.1 solid gray;
	height: 55px;
	width: 99%;
	text-align: center;
}

#main {
	width: 1520px;
	height: 170px;
	border: 1px solid black;
	display: flex;
}

#Listbtn {
	border: 1px solid black;
	position: relative;
	width: 305px;
	height: 50px;
	top: 10px;
	left: 700px;
}

#List {
	border: 1px solid black;
	position: relative;
	top: 30px;
	width: 1500px;
	height: 550px;
}

#ListView1 {
	border: 1px solid black;
	position: absolute;
	top: 50px;
	left: 10px;
	width: 1480px;
	height: 480px;
}

#ListView2 {
	display: none;
	position: absolute;
	border: 1px solid black;
	top: 50px;
	left: 10px;
	width: 1480px;
	height: 480px;
}

.raListFrm{
	display:inline-block;
	border:1px solid red;
	width: 487px;
	height: 150px;
}
.raListImg{
	float: left;
	border: 1px solid blue;
	height: 149px;
	width: 150px;
}
.raListTitle{
	float: left;
	border: 1px solid gray;
	width: 333px;
	height: 30px;	
	font-size: 20px;
	text-align: center;
}
.raListPrice{
	float: left;
	border: 1px solid black;
	width: 333px;
	height: 65px;
}
.raListDate{
	float: left;
	border: 1px solid green;
	width: 333px;
	height: 49px;
	font-size: 20px;
	color: red;
}

.auListFrm{
	display:inline-block;
	border:1px solid red;
	width: 487px;
	height: 150px;
}
.auListImg{
	float: left;
	border: 1px solid blue;
	height: 149px;
	width: 150px;
}
.auListTitle{
	float: left;
	border: 1px solid gray;
	width: 333px;
	height: 30px;	
	font-size: 20px;
	text-align: center;
}
.auListPrice{
	float: left;
	border: 1px solid black;
	width: 333px;
	height: 65px;
}
.auListDate{
	float: left;
	border: 1px solid green;
	width: 333px;
	height: 49px;
	font-size: 20px;
	color: red;
}

</style>
</head>

<body>
	<div id="mainheader">
		<jsp:include page="main.jsp" />
	</div>

	<div id="homeMain">
		
		<div id="List">
			<button id="Lbtn1" class="btn2">제작의뢰 리스트</button>
			<button id="Lbtn2" class="btn2">출품 리스트</button>
			 <a href="#">공지사항 [ 제작의뢰/출품 방식 설명서       LEE수원   추천수  조회수  date]</a>
			<div id="ListView1">
			<c:forEach var="ra" items="${raList}">
				<div class="raListFrm" onclick="location.href='revauctionread?ra_num=${ra.ra_num}'">
					<div class="raListImg">
						<img src="./images/${ra.ra_image }.png" />
					</div>
					<div class="raListTitle">
						${ra.ra_title }
					</div>
					<div class="raListPrice">
						경매최저가 : el로 가져와      <br>
						경매최고가 : el로 가져와
					</div>
					<div class="raListDate">
						마감시간 : ${ra.ra_date}
					</div>
					</div>
			</c:forEach>
			</div>
			<div id="ListView2">
			<c:forEach var="au" items="${auList}">
				<div class="auListFrm" onclick="location.href='auctionRead?au_num=${au.au_num}'">
					<div class="auListImg">
						<img src="./images/logo.png" />
					</div>
					<div class="auListTitle">
						${au.au_title }
					</div>
					<div class="auListPrice">
						수	   량 : ${au.au_qty }			<br>
						경매최저가 : ${au.au_minprice}     <br>
						경매최고가 : el로 가져와
					</div>
					<div class="auListDate">
						마감시간 :  ${au.au_date }
					</div>
					
					</div>
			</c:forEach>
			</div>

		</div>



	</div>
	<div id="footercheck">
		<jsp:include page="footer.jsp"></jsp:include>
	</div>

</body>
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<script>
	
	$("#Lbtn1").click(function() {
		$("#ListView1").css("display", "inline");
		$("#ListView2").css("display", "none");
	});

	$("#Lbtn2").click(function() {
		$("#ListView1").css("display", "none");
		$("#ListView2").css("display", "inline");
	});
	
	
	
</script>
</html>