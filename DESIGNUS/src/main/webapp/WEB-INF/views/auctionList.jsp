<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%> <!-- 숫자 컴마찍기 -->
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
	background-color: #FF7F50;
	border: 0.1px soild gray;
}

.btn3 {
	width: 140px;
	height: 50px;
	background-color: white;
	border: 0.1px soild gray;
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
}


#ListView2 {
	position: absolute;
	border: 1px solid #f0f0f0;
    border-radius: 5px;
    box-shadow: 3px 0px 8px -3px rgba(0,0,0,0.56);
	top: 50px;
	left: 10px;
	width: 1480px;
	height: 490px;
}

.paging2{
	position:absolute;
	float:left;
	left:0px;
	bottom:-27px;
	height: 50px;
	width: 1500px;
	text-align: center;
}

.auListFrm{
	display:inline-block;
	border: 1px solid #f0f0f0;
    border-radius: 5px;
    box-shadow: 3px 0px 8px -3px rgba(0,0,0,0.56);
    margin:5px 0px 0px 0px;
	width: 487px;
	height: 150px;
}
.auListImg{
	float: left;
	height: 149px;
	width: 150px;
	border-radius: 15px;
}

.ListImg{
	border-radius: 15px;
}

.auListTitle{
	float: left;
	border-bottom: 1px solid gray;
	width: 333px;
	height: 30px;	
	font-size: 20px;
	text-align: center;
}
.auListPrice{
	float: left;
	border-bottom: 1px solid gray;
	width: 333px;
	height: 85px;
}
.auListDate{
	float: left;
	border-bottom: 1px solid gray;
	width: 333px;
	height: 28px;
	font-size: 17px;
	color: blue;
}

a{
	text-decoration: noen;
	color: black;
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
			<div id="ListView2">
			<c:forEach var="au" items="${auList}">
				<div class="auListFrm" onclick="location.href='auctionRead?au_num=${au.au_num}'">
					<div class="auListImg">
						<img class="ListImg" src="/auction/${au.aui_img}" width="100%" height="100%"/>
					</div>
					<div class="auListTitle">
						${au.au_title }
					</div>
					<div class="auListPrice">
						즉시구매가능수량 : ${au.au_qty -1}	<br>
						경매시작가 : <fmt:formatNumber value="${au.au_minprice}" pattern="#,###"/>      <br>
						즉시구매가 : <fmt:formatNumber value="${au.au_inprice}" pattern="#,###"/>      <br>
						경매최고가 : <fmt:formatNumber value="${au.aut_price}" pattern="#,###"/>
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
	<div id="footer">
      <hr style="width:100%; border: 2px solid coral; align: center;">   
         <jsp:include page="footer.jsp"></jsp:include>
      </div>

</body>

<script>
	
</script>
</html>