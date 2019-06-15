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
	border: 1px solid orange;
	width: 1080px;
	height: 100px;
	text-align: center;
	font-size: 20px;
	float: left;
	font-size: 100%
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

#main {
	width: 1520px;
	height: 170px;
	text-align: center;
}

.bt01 {
	
}

a {
	color: red
}

#spon1 {
	border: 1px solid orange;
	margin: 0px 10px 10px 10px;
	width: 1080px;
	height: 80px;
	float: left;
	font-size: 20px;
	text-align: center;
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
	width: 130px;
	height: 45px;
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

#leftmain {
	width: 310px;
	height: 950x;
	border: 1px solid black;
	float: left;
}

#rightmain {
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

#mainheader {
	border: 1px solid black;
	width: 1520px;
	height: 170px;
}

#mypagemain {
	width: 1530px;
	height: 1200px;
	border: 1px solid black;
}

#btnset {
	width: 450px;
	height: 100px;
	align-content: center;
	border: none;
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
</style>

</head>
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>

<body>

	<div id="mainheader">
		<jsp:include page="main.jsp" />
	</div>
	<div id="mypagemain">
		<div id="leftmain">
		<jsp:include page="Mapagemain.jsp" />
		</div>

		<div id="rightmain">
			<div id="notice">
				<h2>꿍 리스트</h2>
			</div>
			<div id="spon1">
				<div id="btnset">
					<button id="Lbtn1" class="bt"
						onclick="location.href='basketFrm?kind=A'">출품 꿍리스트</button>
					<!-- &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -->
					<button id="Lbtn2" class="bt"
						onclick="location.href='basketFrmrev?kind=R'">제작의뢰 꿍리스트</button>
					<!-- &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -->
					<button id="Lbtn3" class="bt"
						onclick="location.href='basketFrmspon?kind=S'">후원 꿍리스트</button>
				</div>
				<div id="list">
					<div id="ListView1">
						<div id="listdiv">
							<p align="center" style="font-size: 25px;">후원 꿍리스트</p>
						</div>
						<div id="cnavfn">
							<c:forEach var="board" items="${sList}">
								<a href='#' onclick="articleView(${board.sb_ssnum})"> <img
									src='/resources/images/${board.ssi_img}'></a>
								<P>상품 제목 : ${board.ss_title}</P>
							</c:forEach>
						</div>
						<div class="lv5">${paging}</div>
					</div>
					<div class="lv6">
						<button type="button" class="bt"
							onclick="location.href='myPage.html' ">돌아가기</button>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
<script type="text/javascript">
 
 var btn1=$("#Lbtn1");
 var btn2=$("#Lbtn2");
 var btn3=$("#Lbtn3");

 /*function Aucbtn() {
	 
	  $("#ListView1").css("display", "inline");
      $("#ListView2").css("display", "none");
      $("#ListView3").css("display", "none");
     
      $.ajax({
  		url: "ajax/lbauc",
  		type:"post",
  	    processData : false,
  	    dataType:"json",//생략가능
  	    success:function(data){
  	    
  	    	console.log(data);
  	    	//console.log(data[0][0].aui_img);
  	    	console.log(data[0].aui_img);
  	    	var rList='';
			for(key in data){
					rList+="<a href='auctionread?ab_aunum="+data[key].ab_aunum+"'>"
							+data[key].aui_img+"</a>"
					       +'상품 이름 : '+data[key].au_title+"<br/>";
			}
			$('#cnfvna').html(rList);
  	    	
  	    },
  	    error:function(error){
  	    	alert('에러');
  	    	console.log(error);
  	    }
  		 
  	 });
}*/
 /*function ReAucbtn() {
	 
	
			 
	 $("#ListView1").css("display", "none");
     $("#ListView2").css("display", "inline");
     $("#ListView3").css("display", "none");
     $.ajax({
   		url: "ajax/lbrev",
   		type:"post",
   	    processData : false,
   	    dataType:"json",//생략가능
   	    success:function(data){
   	    console.log(1,data);
   	     var result='';
   	     var data2=data.rList;
		for(key in data.rList){
		
				result+="<a href='auctionread?rab_ranum="+data2[key].rab_ranum+"'>"
				      +"<img src='"+data2[key].ra_image+"'></a>"+"<br/>"
				      +"<p>상품 제목 : "+data2[key].ra_title+"</p><br/>";
		}
		$('#wpwkr').html(result);
		$('#pagerev').html(data.paging);
   	    },
   	    error:function(error){
   	    	alert('에러');
   	    	console.log(error);
   	    }
   		 
   	 });
}*/
 /*function sponbtn() {
	
	 
     $("#ListView1").css("display", "none");
     $("#ListView2").css("display", "none");
     $("#ListView3").css("display", "inline");
     $.ajax({
   		url: "ajax/lbspon",
   		type:"post",
   	    processData : false,
   	    dataType:"json",//생략가능
   	    success:function(data){
   	    console.log(data);
   	 var result='';
	     var data2=data.sList;
	for(key in data.sList){
	
			result+="<a href='auctionread?rab_ranum="+data2[key].sb_ssnum+"'>"
			      +"<img src='"+data2[key].ssi_img+"'></a>"+"<br/>"
			      +"<p>상품 제목 : "+data2[key].ss_title+"</p><br/>";
	}
	$('#gndnjs').html(result);
	$('#pagingspon').html(data.paging);
   	    	
   	    },
   	    error:function(error){
   	    	alert('에러');
   	    	console.log(error);
   	    }
   		 
   	 });
}
    
    /*$("#Lbtn1").click(function() {
        $("#ListView1").css("display", "inline");
        $("#ListView2").css("display", "none");
        $("#ListView3").css("display", "none");
     
    });

    $("#Lbtn2").click(function() {
    	 
        $("#ListView1").css("display", "none");
        $("#ListView2").css("display", "inline");
        $("#ListView3").css("display", "none");
        
    });
    $("#Lbtn3").click(function() {
    	 
        $("#ListView1").css("display", "none");
        $("#ListView2").css("display", "none");
        $("#ListView3").css("display", "inline");
        
    });*/
</script>
</html>