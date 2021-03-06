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
	background-color: #ff7f50;
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

#ListView1 {
	position: absolute;
	border: 1px solid #f0f0f0;
    border-radius: 5px;
    box-shadow: 3px 0px 8px -3px rgba(0,0,0,0.56);
	top: 50px;
	left: 10px;
	width: 1480px;
	height: 480px;
}


.paging1{
	position:absolute;
	float:left;
	left:0px;
	bottom:-27px;
	height: 50px;
	width: 1500px;
	text-align: center;
}

.raListFrm{
	display:inline-block;
	border: 1px solid #f0f0f0;
    border-radius: 5px;
    box-shadow: 1px 2px 4px 2px rgba(0,0,0,0.52);
    margin:5px 0px 0px 0px;
	width: 487px;
	height: 150px;
}
.raListImg{
	float: left;
	height: 149px;
	width: 150px;
	border: 1px solid #f2f2f2;
	box-shadow: 1px 2px 4px 2px rgba(0,0,0,0.18);
	border-radius: 15px;
}

.ListImg{
	border-radius: 15px;
}

.raListdivv{
	margin-left:10px;
	float: right;
	width: 325px;
	height: 149px;
}

.raListTitle{
	float: left;
	width: 320px;
	height: 30px;	
	font-size: 20px;
	text-align: left;
	font-weight: 800;
	color: #0B0B61;
}

.raListPrice{
	float: left;
	border-bottom: 1px solid gray;
	width: 320px;
	height: 85px;
}
.raListDate{
	float: left;
	width: 320px;
	height: 28px;
	font-size: 17px;
	font-weight: 700;
	color: red;
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
			<button class="btn3" onclick="location.href='auctionList?cgcode=${cgcode}'">출품리스트</button>
			<button class="btn2">제작의뢰 리스트</button>
			<div id="ListView1">
			<c:forEach var="ra" items="${raList}">
				<div class="raListFrm" onclick="location.href='revauctionread?ra_num=${ra.ra_num}'">
					<div class="raListImg">
						<img class="ListImg" src="/revauction/${ra.ra_image}"
						width="100%" height="100%"/>
					</div>
					<div class="raListdivv">
					<div class="raListTitle">
						[${ra.ra_title}]
					</div>
					<div class="raListPrice">
						<p>경매최저가 : ${ra.ra_min }</p>
						<p>경매최고가 : ${ra.ra_max }</p>
						
					</div>
					<div class="raListDate">
							${ra.ra_date}
					</div>
					</div>
					</div>
			</c:forEach>
			</div>
			<div class = paging1>
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