<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

<head>

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

#Lbtn1, #Lbtn2, #Lbtn3 {
	margin-top: 10px;
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


#info {
	
	margin: 0px 10px 10px 10px;
	width: 280px;
	height: 580px;
	font-size: 20px;
	text-align: left;
	float: left;
}


.bt01 {
	
}

a {
	color: red
}


#ListView1 {
	margin-top: 20px;
	position: relative;
	border: 1px solid black;
	width: 97%;
	height: 600px;
}

#ListView2 {
	float: left;
	border: 1px solid black;
	width: 97%;
	height: 96%;
	display: none;
}

#ListView3 {
	float: left;
	border: 1px solid black;
	width: 97%;
	height: 96%;
	display: none;
}

.bt {
   margin-left:50px;
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
	width: 330px;
	height: 105px;
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

.bt:hover {
	color: white;
}

.bt:active {
	color: yellow;
}

#list {
	margin: 10px;
	width: 1080px;
	height: 700px;
	text-align: center;
	float: left;
}

.lv1 {
	border: 1px solid black;
	float: left;
	height: 25%;
	width: 40%;
}

.lv2 {
	border: 1px solid black;
	width: 40%;
	height: 25%;
}

.lv3 {
	border: 1px solid black;
	width: 40%;
	height: 25%;
}

.lv4 {
	float: left;
	border: 1px solid black;
	width: 50%;
	height: 30%;
}

.lv5 {
	position: absolute;
	bottom: 0%;
	width: 40%;
	height: 10%;
	left: 25%;
}

.lv6 {
	border: none;
	width: 40%;
	height: 10%;
}

.page {
	color: blue;
}

#point {
	
	margin: 0px 10px 10px 10px;
	width: 280px;
	height: 60px;
	text-align: left;
	font-size: 20px;
	float: left;
}

#img {
	margin-top: 20px;
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

#search {
	margin-left: 100px;
	padding-left: 120px;
	padding-right: 120px;
	padding-top: 20px;
	width: 570px;
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

#msg {
	width: 50px;
	height: 50px;
	margin-left: 10px;
	float: left;
}

#left {
	width: 310px;
	height: 950x;
	border: 1px solid black;
	float: left;
}

#right {
	width: 1200px;
	height: 950px;
	border: 1px solid black;
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

#main {
	width: 1518px;
	height: 170px;
	position: relative;
}

#mainheader {
	border: 1px solid black;
	width: 1520px;
	height: 170px;
	position: fixed;
	background-color: white;
}

#mypagemain {
	width: 1518px;
	height: 1200px;
	border: 1px solid black;
}
#dddd{
	width: 1530px;
	height: 1020px;
}

#listdiv {
	width: 1000px;
	height: 60px;
	border: none;
}

#cnavfn {
	margin: 25px;
	float: left;
	width: 480px;
	border: 1px solid black;
	height: 200px;
}
#renking {
    border-bottom: 5px solid orange;
	margin: 0px 10px 10px 10px;
	width: 1080px;
	height: 155px;
	text-align: center;
	font-size: 20px;
	float: left;
}
#spon {
 
	margin: 0px 10px 10px 10px;
	width: 1100px;
	height: 50px;
	float: left;
	font-size: 20px;
	text-align: center;
	padding-top: 5px;
/* 	overflow: scroll; */
	
	
}
#auction {
	margin: 0px 10px 10px 10px;
	width: 1100px;
	height: 660px;
	text-align: center;
	font-size: 20px;
	float: left;
	display:inline-block;
	border: 1px solid #f0f0f0;
	border-radius: 10px;
	box-shadow: 3px 0px 8px -3px rgba(0,0,0,0.56);
}
.maucba{
border: 1px solid orange;
margin-left:30px;
margin-top:15px;
width: 500px;
height: 160px;
float: left;
border-radius: 5px;
box-shadow: 3px 0px 8px -3px rgba(0,0,0,0.56);
}
.bimg{

 width: 180px;
 height: 130px;
 margin-top:10px;
 margin-left:10px;
 float:left;
 
}
.cnavfn{

 width: 280px;
 height: 70px;
 margin-top:20px;
 margin-left:10px;
 float:left;
 font-size: 18px;
 text-align: left;
}
.btzz{

 width: 280px;
 height: 50px;
 margin-top:10px;
 margin-left:10px;
 float:left;

}
.b3{

  width : 60px;
  height : 35px;
  border-radius: 10px;
  background-color: orange;
  opacity: 0.45;
 margin-left:20px;
}
#sixth{
 position: absolute;
  top: 1130px;
  left: 1150px;  
}
#footer {
   border: 1px solid red;
   width: 1518px;
   height: 170px;
   margin-top: 20px;
   float: left;
}
</style>

</head>
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>

<body>

	<div id="main">
	<div id="mainheader">
	<jsp:include page="main.jsp" />
	</div>
</div>

	<div id="mypagemain">
	 <jsp:include page="Mapagemain.jsp" />
      
		<div id="rightmain">
			<div id="notice">
				<h2>꿍 리스트</h2><hr>
			</div>
			<div id="renking">
				<button id="Lbtn1" class="bt"
						onclick="location.href='basketFrm?kind=A'">출품 꿍리스트</button>
					<!-- &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -->
					<button id="Lbtn2" class="bt"
						onclick="location.href='basketFrmrev?kind=R'">제작의뢰 꿍리스트</button>
			</div>
			   
			   <div id="spon">
				<h3>출품 꿍리스트♥</h3>
			</div>
				
				<div id="auction">
				
			</div>
			 <div id="sixth"> ${paging}</div>
		</div>
		<div id="footer">
		<jsp:include page="footer.jsp" />
		</div>
     </div>
</body>
<script type="text/javascript">

var auc=${jsonStr};
console.log(1,auc);
var ss="";

for(var i=0; i<auc.length;i++){
	ss+="<div class='maucba'><div class='bimg'>"
	  +"<a href='auctionRead?au_num="+auc[i].ab_aunum+"'><img src='/auction/"+auc[i].aui_img+"' width='100%' height='100%'></a></div>"
	  +"<div class='cnavfn'>상품 이름 : "+auc[i].au_title+"<br>"
	  +"즉시 구매 : "+auc[i].au_inprice+"원</div>"
	  +"<div class='btzz'><input class='b3' type='button' value='보러가기' onclick=\"location.href='auctionRead?au_num="+auc[i].ab_aunum+"'\">"
	  +"<input class='b3' type='button' value='취소하기' onclick=\"location.href='basketcencle?au_num="+auc[i].ab_aunum+"'\">"	
      +"</div></div>"
}

$("#auction").html(ss);

</script>
</html>