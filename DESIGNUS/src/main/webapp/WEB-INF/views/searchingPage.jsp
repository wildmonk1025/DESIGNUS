<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

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
	height: 600px;
}

.btn1 {
	background-color: orange;
	width: 150px;
	height: 30px;
	color: white;
	float: right;
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
	position: relative;
	top: 30px;
	width: 1500px;
	height: 570px;
	top: 30px;
}

#ListView2 {
	position: absolute;
	top: 35px;
	left: 10px;
	width: 1480px;
	left: 10px;
	width: 1480px;
	height: 520px;
}

#ListTitle1 {
	text-align: center;
	position: absolute;
	border-bottom: 2px solid orange;
	width: 735px;
	top: 3px;
	height: 30px;
	left: 10px;
	position: absolute;
}

#ListTitle2 {
	text-align: center;
	position: absolute;
	border-bottom: 2px solid orange;
	width: 735px;
	height: 30px;
	top: 3px;
	right: 10px;
}

.ListCase {
	float: left;
	width: 735px;
	height: 510px;
	margin-top: 5px;
}

#RaList {
	margin-left: 10px;
	overflow-y: scroll;
	-ms-overflow-style: none;
}

#AuList {
	overflow-y: scroll;
	-ms-overflow-style: none;
}

div::-webkit-scrollbar {
	display: none;
}

.paging2 {
	border: 1px solid red;
	position: absolute;
	float: left;
	left: 0px;
	bottom: 0px;
	height: 50px;
	width: 1500px;
	text-align: center;
}

.raListFrm{
	display: inline-block;
	border: 1px solid red;
	width: 733px;
	height: 200px;
}

.raListImg {
	float: left;
	border: 1px solid blue;
	height: 200px;
	width: 200px;
}

.raListTitle {
	float: left;
	border: 1px solid gray;
	width: 526px;
	height: 40px;
	font-size: 20px;
	text-align: center;
}

.raListPrice {
	float: left;
	border: 1px solid black;
	width: 526px;
	height: 105px;
	font-size: 20px;
}

.raListDate {
	float: left;
	border: 1px solid green;
	width: 526px;
	height: 48px;
	font-size: 30px;
	color: blue;
}

.auListFrm {
	display: inline-block;
	border: 1px solid red;
	width: 733px;
	height: 200px;
}

.auListImg {
	float: left;
	border: 1px solid blue;
	height: 200px;
	width: 200px;
}

.auListTitle {
	float: left;
	border: 1px solid gray;
	width: 526px;
	height: 40px;
	font-size: 20px;
	text-align: center;
}

.auListPrice {
	float: left;
	border: 1px solid black;
	width: 526px;
	height: 105px;
	font-size: 20px;
}

.auListDate {
	float: left;
	border: 1px solid green;
	width: 526px;
	height: 48px;
	font-size: 30px;
	color: blue;
}




</style>
</head>

<body>
	<div id="mainheader">
		<jsp:include page="main.jsp" />
	</div>

	<div id="homeMain">

		<div id="List">
			<div id="ListTitle1">
				<h3>출품</h3>
			</div>
			<div id="ListTitle2">
				<h3>제작의뢰</h3>
			</div>
			<div id="ListView2">
				<div id="AuList" class="ListCase">
					<c:forEach var="au" items="${auList}">
						<div class="auListFrm" onclick="location.href='auctionRead?au_num=${au.au_num}'">
							<div class="auListImg">
								<img src="<c:url value='/resources/upload/${auimg}'/>"
									width="100%" height="100%" />
							</div>
							<div class="auListTitle">
								<h3>${au.au_title }</h3>
							</div>
							<div class="auListPrice">
								즉시구매가능수량 : ${au.au_qty -1} <br> 경매시작가 : ${au.au_minprice} <br>
								즉시구매가 : ${au.au_inprice} <br> 경매최고가 : ${au.aut_price}
							</div>
							<div class="auListDate">${au.au_date }</div>
						</div>
					</c:forEach>
				</div>

				<div id="RaList" class="ListCase">
					<c:forEach var="ra" items="${raList}">
						<div class="raListFrm" onclick="location.href='revauctionread?ra_num=${ra.ra_num}'">
							<div class="raListImg">
								<%-- <img src="./images/${ra.ra_image }.png" /> --%>
							</div>
							<div class="raListTitle">${ra.ra_title }</div>
							<div class="raListPrice">
								<br>
								<p>경매최저가 : ${ra.ra_min }</p>
								<p>경매최고가 : ${ra.ra_max }</p>
							</div>
							<div class="raListDate">${ra.ra_date}</div>
						</div>
					</c:forEach>
				</div>
			</div>
		</div>




	</div>
	<div id="footercheck">
		<jsp:include page="footer.jsp"></jsp:include>
	</div>

</body>

<script>
	
</script>
</html>