<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

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

.btn2 {
	width: 140px;
	height: 50px;
	background-color: orange;
	border: 0.1px soild gray;
}

.btn3 {
	width: 140px;
	height: 50px;
	background-color: white;
	border: 0.1px soild gray;
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
	height: 570px;
}


#ListView2 {
	position: absolute;
	border: 1px solid black;
	top: 50px;
	left: 10px;
	width: 1480px;
	height: 470px;
}

.paging2{
	border:1px solid red;
	position:absolute;
	float:left;
	left:0px;
	bottom:0px;
	height: 50px;
	width: 1500px;
	text-align: center;
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
	font-size: 17px;
	color: blue;
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
	height: 85px;
}
.auListDate{
	float: left;
	border: 1px solid green;
	width: 333px;
	height: 28px;
	font-size: 17px;
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
			<button class="btn2">출품 리스트</button>
			<button class="btn3" onclick="location.href='revauctionList?cgcode=${cgcode}'">제작의뢰 리스트</button>
			 <a href="#">공지사항 [ 제작의뢰/출품 방식 설명서       LEE수원   추천수  조회수  date]</a>
			
			<div id="ListView2">
			<c:forEach var="au" items="${auList}">
				<div class="auListFrm" onclick="location.href='auctionRead?au_num=${au.au_num}'">
					<div class="auListImg">
						<%-- <img src="<c:url value='/resources/upload/${auimg}'/>" width="100%" height="100%"/> --%>
					</div>
					<div class="auListTitle">
						${au.au_title }
					</div>
					<div class="auListPrice">
						즉시구매가능수량 : ${au.au_qty -1}	<br>
						경매시작가 : ${au.au_minprice}     <br>
						즉시구매가 : ${au.au_inprice}      <br>
						경매최고가 : ${au.aut_price}
					</div>
					<div class="auListDate">
						${au.au_date }
					</div>
					
					</div>
			</c:forEach>
			</div>
			
			<div class = paging2>
				${paging}
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