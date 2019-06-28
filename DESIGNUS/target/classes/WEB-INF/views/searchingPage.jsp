<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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
	border: 1px solid #F5BCA9;
	background-color: white;
	width: 1520px;
	height: 170px;
	z-index: 1000;
	box-shadow: 3px 0px 8px -3px rgba(0,0,0,0.56);
}
 
#homeMain {
	width: 1520px;
	height: 600px;
	margin-top: 25px;
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

#footer {
   border: 1px solid red;
   width: 1518px;
   height: 180px;
   margin-top: 20px;
   border: 1px solid #f0f0f0;
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
	border-bottom: 2px solid coral;
	width: 735px;
	top: 3px;
	height: 30px;
	left: 10px;
	color: #1C1C1C;
}

#ListTitle2 {
	text-align: center;
	position: absolute;
	border-bottom: 2px solid coral;
	width: 735px;
	height: 30px;
	top: 3px;
	right: 10px;
	color: #1C1C1C;
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
	display:inline-block;
	border: 1px solid #ffffff;
	border-radius: 5px;
	box-shadow: 4px 4px 5px 0px rgba(0,0,0,0.75);
    margin:5px 0px 0px 0px;
	width: 725px;
	height: 200px;
}

.raListImg {
	float: left;
	border-radius: 15px;
	height: 200px;
	width: 200px;
}
.raListdivv {
	width:506px;
	height:200px;
	float:right;
} 
.raListTitle {
	float: left;
	font-size: 20px;
	text-align: left;
	width: 506px;
	height: 40px;
	color: #0B0B61;
}

.raListPrice {
	float: left;
	border-bottom: 2px solid #6E6E6E;
	width: 506px;
	height: 105px;
	font-size: 20px;
}
 
.raListDate {
	float: left;
	width: 506px;
	height: 48px;
	font-size: 25px;
	color: red;
}

.auListFrm {
	display:inline-block;
	border: 1px solid #ffffff;
	border-radius: 5px;
	box-shadow: 4px 4px 5px 0px rgba(0,0,0,0.75);
    margin:5px 0px 0px 0px;
	width: 725px;
	height: 200px;
}

.auListImg {
	float: left;
	border-radius: 15px;
	height: 200px;
	width: 200px;
}

.auListdivv {
	width:506px;
	height:200px;
	float:right;
}
.auListTitle {
	float: left;
	font-size: 20px;
	text-align: left;
	width: 506px;
	height: 40px;
	color: #0B0B61;
}

.auListPrice {
	float: left;
	border-bottom: 2px solid #6E6E6E;
	width: 506px;
	height: 105px;
	font-size: 20px;
}

.auListDate {
	float: left;
	width: 506px;
	height: 48px;
	font-size: 25px;
	color: red;
}

.ListImg{
	margin-right: 10px;
	border: 1px solid #f2f2f2;
	box-shadow: 1px 2px 4px 2px rgba(0,0,0,0.18);
	border-radius: 15px;
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
								<img class="ListImg" src="/auction/${au.aui_img}" width="99%" height="99%"/>
							</div>
							<div class="auListdivv">
							<div class="auListTitle">
								<h3>[${au.au_title}]</h3>
							</div>
							<div class="auListPrice">
								즉시구매가능수량 : ${au.au_qty -1} <br> 
								경매시작가 : <fmt:formatNumber value="${au.au_minprice}" pattern="#,###"/> <br>
								즉시구매가 : <fmt:formatNumber value="${au.au_inprice}" pattern="#,###"/> <br> 
								경매최고가 : <fmt:formatNumber value="${au.aut_price}" pattern="#,###"/>
							</div>
							<div class="auListDate">${au.au_date }</div>
							</div>
						</div>
					</c:forEach>
				</div>

				<div id="RaList" class="ListCase">
					<c:forEach var="ra" items="${raList}">
						<div class="raListFrm" onclick="location.href='revauctionread?ra_num=${ra.ra_num}'">
							<div class="raListImg">
								<img class="ListImg" src="/revauction/${ra.ra_image}" width="99%" height="99%"/>
							</div>
							<div class="raListdivv">
							<div class="raListTitle">
							<h3>[${ra.ra_title}]</h3>
							</div>
							<div class="raListPrice">
								<br>
								<c:set var="min" value="${ra.ra_min}" />
								<c:if test="${min eq null }"><p>경매최소가 : - </p></c:if>
								<c:if test="${min ne null }"><p>경매최소가 : 
								<fmt:formatNumber value="${ra.ra_min}" pattern="#,###"/></p></c:if>
								<c:set var="max" value="${ra.ra_max}" />
								<c:if test="${max eq null }"><p>경매최대가 : - </p></c:if>
								<c:if test="${max ne null }"><p>경매최대가 : 
								<fmt:formatNumber value="${ra.ra_max}" pattern="#,###"/></p></c:if>
								
							</div>
							<div class="raListDate">${ra.ra_date}</div>
							</div>
						</div>
					</c:forEach>
				</div>
			</div>
		</div>
	</div>
	<div id="footer">
      <hr style="width:100%; border: 2px solid coral; align: center;">   
         <jsp:include page="footer.jsp"></jsp:include>
      </div>

</body>

<script>
	
</script>
</html>