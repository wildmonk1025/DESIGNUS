<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

<head>

<meta charset="UTF-8">
<title>출품작 판매내역</title>
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
	 border : 3px solid orange;
	position: absolute;
	width: 400px;
	height: 330px;
	border-radius: 100px;
	z-index: 1002;
	padding-top: 30px;
	text-align: center;
	background-color: white;
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
	width: 1518px;
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
#l2{
 border : 3px solid orange;
	position: absolute;
	width: 400px;
	height: 330px;
	border-radius: 100px;
	z-index: 1002;
	padding-top: 30px;
	text-align: center;
	background-color: white;
	display: none;
	font-size: 22px;
	top: 500px;
	left: 900px;
}
.bbttzzz{
  width: 120px;
  height: 50px;
  color: white;
  background-color: orange;
  margin-top: 20px;
}

.bbttzzz:hover {
   background-color: red;
}
#footer {
   border: 1px solid red;
   width: 1518px;
   height: 170px;
   margin-top: 20px;
   float: left;
}
.f1{
 border-bottom: 1px solid orange;
 text-align: left;
 font-size: 17px;
 margin-left : 40px;
 color: red;
 width: 300px;
}
.h1{
margin-top:10px;
}
.f2{
margin-top:10px;
text-align: left;
margin-left : 40px;
width: 350px;
}
.b3{
margin-top:10px;
  width : 65px;
  height : 40px;
  border-radius: 10px;
  background-color: orange;
  opacity: 0.45;
}
.f3{
margin-top:10px;
text-align: left;
margin-left : 30px;
width: 350px;
}
.f4{
text-align: left;
 font-size: 17px;
 margin-left : 40px;
 color: #BDBDBD;
 width: 350px;
}
</style>

</head>
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>

<body>
	<div id="total"></div>
	<div id="l1"></div>
	<div id="l2"></div>
	
	<div id="main">
	<div id="mainheader">
			<jsp:include page="main.jsp" />
	</div>
	</div>
	
	<div id="mypagemain">

		<jsp:include page="Mapagemain.jsp" />


		<div id="rightmain">
			<div id="notice">
			 <h2>출품작 판매 내역</h2><hr>
			</div>
			<div id="renking">
				
			</div>
        <div id="sixth">${pagMPWing}</div>
		</div>
		<div id="footer">
		<jsp:include page="footer.jsp" />
		</div>
	</div>
</body>
<script type="text/javascript">
	var apwList = ${apwList};
	console.log(apwList);
	var main = "";

	for (var i = 0; i < apwList.length; i++) {
		 if (apwList[i].aup_step == 1) {
		main += "<div class='first'><div class='second'><div class='p1'>"+apwList[i].aut_date+"</div><div class='p2'>운송장번호 : -</div></div>"
	         +"<div class='third'><a href='auctionRead?au_num="+apwList[i].aup_ranum+"'><img src='/resources/images/"+apwList[i].aui_img+"'/></a></div>"
		     + "<div class='fourth'>상품번호 :"+ apwList[i].aup_ptnum+"<br>상품명 :"+apwList[i].au_title+"<br>"
		     + "구매 금액 :"+ apwList[i].aup_price+"<br>상품 수량 :"+apwList[i].aup_qty+"<br>"
		     + "<p class='p4'>작업이 확정된 시점의 요청사항 추가는 추가 요금 및,<br> 작업 완료일이 늘어날 수 있습니다.</p></div>"
		     + "<div class='Fifth'><p class='p3'>의뢰결정을 <br/>기다리는 중입니다.</p></div></div>";    

		} else if(apwList[i].aup_step==2){
				main+="<div class='first'><div class='second'><div class='p1'>"+apwList[i].aut_date+"</div><div class='p2'>운송장번호 : -</div></div>"
		         +"<div class='third'><a href='auctionRead?au_num="+apwList[i].aup_ranum+"'><img src='/resources/images/"+apwList[i].aui_img+"'/></a></div>"
			     + "<div class='fourth'>상품번호 :"+ apwList[i].aup_ptnum+"<br>상품명 :"+apwList[i].au_title+"<br>"
			     + "구매 금액 :"+ apwList[i].aup_price+"<br>상품 수량 :"+apwList[i].aup_qty+"<br>"
			     + "<p class='p4'>작업이 확정된 시점의 요청사항 추가는 추가 요금 및,<br> 작업 완료일이 늘어날 수 있습니다.</p></div>"
			     +"<div class='Fifth'><input class='bbttzzz' id='btzsho' type='button' onclick=\"delivery('"+apwList[i].aup_ptnum+"')\" value='배송보내기'/><br>"
				 +"<input class='bbttzzz' type='button' onclick=\"shocheck('"+apwList[i].aup_ptnum+"')\" value='의뢰인 배송정보'/></div></div>"	
					
			}else if(apwList[i].aup_step==3){
				main+="<div class='first'><div class='second'><div class='p1'>"+apwList[i].aut_date+"</div><div class='p2'>운송장번호 :"+apwList[i].aup_track+"</div></div>"
		         +"<div class='third'><a href='auctionRead?au_num="+apwList[i].aup_ranum+"'><img src='/resources/images/"+apwList[i].aui_img+"'/></a></div>"
			     + "<div class='fourth'>상품번호 :"+ apwList[i].aup_ptnum+"<br>상품명 :"+apwList[i].au_title+"<br>"
			     + "구매 금액 :"+ apwList[i].aup_price+"<br>상품 수량 :"+apwList[i].aup_qty+"<br>"
			     + "<p class='p4'>작업이 확정된 시점의 요청사항 추가는 추가 요금 및,<br> 작업 완료일이 늘어날 수 있습니다.</p></div>"
			     + "<div class='Fifth'><p class='p3'>수령확인 <br/>대기중</p></div></div>"; 
					
			} else if(apwList[i].aup_step==4){
				main+="<div class='first'><div class='second'><div class='p1'>"+apwList[i].aut_date+"</div><div class='p2'>운송장번호 :"+apwList[i].aup_track+"</div></div>"
		         +"<div class='third'><a href='auctionRead?au_num="+apwList[i].aup_ranum+"'><img src='/resources/images/"+apwList[i].aui_img+"'/></a></div>"
			     + "<div class='fourth'>상품번호 :"+ apwList[i].aup_ptnum+"<br>상품명 :"+apwList[i].au_title+"<br>"
			     + "구매 금액 :"+ apwList[i].aup_price+"<br>상품 수량 :"+apwList[i].aup_qty+"<br>"
			     + "<p class='p4'>작업이 확정된 시점의 요청사항 추가는 추가 요금 및,<br> 작업 완료일이 늘어날 수 있습니다.</p></div>"
			     + "<div class='Fifth'><p class='p3'>완료</p></div></div>";
					

			} 
	}
	console.log(1, main);

	$('#renking').html(main);

	
	function shocheck(even) {

		var form = {
			aup_ptnum:even
			 }
		
		var aa="";
		 $.ajax({
				url: 'scheck',
				type:'post',
			    data:JSON.stringify(form),
			    contentType:"application/json; charset=utf-8;",
			    dataType:'json',
			    success:function(data){
			    	alert('성공');
			    	console.log("1234567"+data.aup_ptnum);
			    	$('#total').css("display", "inline");
			    	$('#l2').css("display", "inline");
			    	   if(data.aut_kind=="I"){
				    	   aa+="<div class='f1'>즉시구매<input type='hidden' name='aut_kind'></div>"   
				    	   }else if(data.aut_kind=="O"){
				    	   aa+=+"<div class='f1'>낙찰<input type='hidden' name='aut_kind'></div>"   
				    	   }else{
				    	   aa+=+"<div class='f1'>입찰<input type='hidden' name='aut_kind'></div>" 
				    	   };
			    	aa+="<h3 class='h1'>의뢰인 배송정보</h3><hr>"
			    	   +"<div class='f2'>아이디 : "+data.aup_mbid_n+"<br>"
			    	   +"이름 : "+data.aup_name+"<br>"
			    	   +"주소 :"+data.aup_address+"<br>"
			    	   +"연락처 :"+data.aup_phone+"</div>"
			    	   +"<input class='b3' type='button' id='back' value='확인'>";
			    	  
			    	
			    	
			    	$('#l2').html(aa); 
			    },
			    
			    error:function(error){
			    	alert('정상적인 추천이 실패했습니다.');
			    	console.log(error);
			    }
			 });//end ajax
		
	}//end shocheck
	
	
	function delivery(even) {
		
		var form = {
			aup_ptnum:even
			 }
		var sub="";
		 $.ajax({

				url: 'sends',
				type:'post',
			    data:JSON.stringify(form),
			    contentType:"application/json; charset=utf-8;",
			    dataType:'json',
			    success:function(data){
			    	alert('해당 상품을 추천하였습니다.');
			    	console.log("1234567"+data.aup_ptnum);
			    	$('#total').css("display", "inline");
			    	$('#l1').css("display", "inline");
			    	       sub+="<form action='delinumupload' method='post'>"
			    	  if(data.aut_kind=="I"){
				    	   sub+="<div class='f1'>즉시구매<input type='hidden' name='aut_kind'></div>"   
				    	   }else if(data.aut_kind=="O"){
				    	   sub+=+"<div class='f1'>낙찰<input type='hidden' name='aut_kind'></div>"   
				    	   }else{
				    	   sub+=+"<div class='f1'>입찰<input type='hidden' name='aut_kind'></div>" 
				    	   };
			    	sub+="<h3 class='h1'>운송장 입력</h3><input type='hidden' name='aup_ptnum' value='"+data.aup_ptnum+"' ><br>"
			    	   +"<div class='f2'>상품이름 :"+data.au_title+"<br>"
	                   +"가격 : "+data.aup_price+	"<input type='hidden' name='aup_price' value='"+data.aup_price+"' ></div><hr>"    	
			    	   +"<div class='f3'>운송장번호<br/><input type='text' name='aup_track'></div>"
			    	   +"<div class='f6'><input class='b3' type='submit' value='보내기'>"
			    	   +"<input class='b3' type='button' id='back' value='취소'></div>"
			    	   +"<div class='f4'>('"+data.aup_mbid_n+"')님에게 운송장번호가 전달 됩니다.<input type='hidden' name='aup_mbid_n' value='"+data.aup_mbid_n+"'></div></div></form>";
			    	
			    	
			    	$('#l1').html(sub);
			    },
			    
			    error:function(error){
			    	alert('정상적인 추천이 실패했습니다.');
			    	console.log(error);
			    }
			 });//end ajax
		
	}//end delivery	
	
	//$('#setpT').html(sub);
	/* $("#btzRevM").click(function() {
	 $('#total').css("display", "inline")
	 $('#l1').css("display", "inline")
	 }); */
	 /* 
	 $("#btzsho").click(function() {
			$('#total').css("display", "inline")
			$('#l1').css("display", "inline")
		}); */
	$("#total").click(function() {
		$("#total").css("display", "none");
		$("#l1").css("display", "none");
		$("#l2").css("display", "none");
	});
	$("#back").click(function() {
		$("#total").css("display", "none");
		$("#l1").css("display", "none");
	});
</script>

</html>