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
	position: absolute;
	width: 1520px;
	height: 170px;
	left: 190px;
	text-align: center;
}

.bt01 {
	position: absolute;
	right: 100px;
	top: 50px;
}

a {
	color: red
}

#spon1 {
	position: absolute;
	width: 1100px;
	height: 60px;
	text-align: center;
	left: 611px;
	top: 280px;
	font-size: 100%
}

#ListView1 {
	border: 1px solid black;
	position: absolute;
	top: 10px;
	left: 10px;
	width: 97%;
	height: 96%;
}

#ListView2 {
	border: 1px solid black;
	position: absolute;
	top: 10px;
	left: 10px;
	width: 97%;
	height: 96%;
	display: none;
}

#ListView3 {
	border: 1px solid black;
	position: absolute;
	top: 10px;
	left: 10px;
	width: 97%;
	height: 96%;
	display: none;
}

#list {
	width: 1100px;
	height: 700px;
	text-align: center;
	left: 603px;
	position: absolute;
	top: 360px;
}

.lv1 {
	border: 1px solid black;
	position: absolute;
	top: 90px;
	left: 10%;
	width: 40%;
	height: 25%;
}

.lv2 {
	border: 1px solid black;
	position: absolute;
	top: 90px;
	left: 50%;
	width: 40%;
	height: 25%;
}

.lv3 {
	border: 1px solid black;
	position: absolute;
	top: 260px;
	left: 10%;
	width: 40%;
	height: 25%;
}

.lv4 {
	border: 1px solid black;
	position: absolute;
	top: 260px;
	left: 50%;
	width: 40%;
	height: 25%;
}

.lv5 {
	position: absolute;
	top: 430px;
	left: 30%;
	width: 40%;
	height: 10%;
}

.lv6 {
	position: absolute;
	top: 540px;
	left: 50%;
	width: 40%;
	height: 10%;
}

.page {
	color: blue;
}

#point {
	border: 1px solid orange;
	position: absolute;
	width: 300px;
	height: 80px;
	text-align: left;
	left: 190px;
	top: 508px;
	font-size: 20px;
}

#img {
	border: 1px solid orange;
	position: absolute;
	width: 300px;
	height: 310px;
	text-align: left;
	left: 190px;
	top: 188px;
	font-size: 20px;
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

#category {
	float: left;
	width: 1500px;
	height: 50px;
}

#searchtxt {
	margin: 50px, 20px;
	width: 300px;
	height: 30px;
	align: center;
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
</style>

</head>
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>

<body>

	<div id="mainheader">
		<jsp:include page="main.jsp" />
	</div>

	<div id="notice">
		<h2>꿍 리스트</h2>
		<hr>
	</div>
	<div id="info">
		<table width="1000">

			<tr>
				<td style="font-size: 30px"><a href="historylist?list=rev">제작의뢰
						내역</a></td>
			</tr>
			<tr>
				<td style="font-size: 30px"><a href="historylist?list=revre">제작의뢰
						접수내역</a></td>
			</tr>
			<tr>
				<td style="font-size: 30px"><a href="historylist?list=auc">출품작
						구매 내역</a></td>
			</tr>
			<tr>
				<td style="font-size: 30px"><a href="historylist?list=aucre">출품작
						판매 내역</a></td>
			</tr>
			<tr>
				<td style="font-size: 30px"><a href="historylist?list=spon">후원진행
						내역</a></td>
			</tr>
			<tr>
				<td style="font-size: 30px"><a href="historylist?list=sponre">후원요청
						내역</a></td>
			</tr>
			<tr>
				<td style="font-size: 30px"><a href="historylist?list=basket">꿍
						내역</a></td>
			</tr>
			<tr>
				<td style="font-size: 30px"><a href="privacyedit">개인정보 수정</a></td>
			</tr>
			<tr>
				<td style="font-size: 30px"><a href="memberout">회원탈퇴 신청</a></td>
			</tr>
			<tr>
				<td style="font-size: 30px"><a href="nortowri">작가전환 신청</a></td>
			</tr>
		</table>
	</div>
	<div id="spon1">
		<button id="Lbtn1" onclick="location.href='basketFrm?kind=A'">
			출품 꿍리스트</button>
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<button id="Lbtn2" onclick="location.href='basketFrmrev?kind=R'">제작의뢰 꿍리스트</button>
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<button id="Lbtn3" onclick="location.href='basketFrmspon?kind=S'">후원 꿍리스트</button>
	</div>
	<div id="list">
		<div id="ListView1">
			출품 꿍리스트
			<div id="cnfvna" class="lv1">
				<c:forEach var="board" items="${bList}">
					<a href='#' onclick="articleView(${board.ab_aunum})">
					<img src='/resources/images/${board.aui_img}'></a>
					<P>상품 제목 : ${board.au_title}</P><br/>
				</c:forEach>
			</div>

			<div class="lv5">${paging}</div>
	
			<div class="lv6">
				<button type="button" onclick="location.href='myPage.html' ">돌아가기</button>
			</div>
		</div>
		
	</div>
	<div id="point">
		<h1>포인트:</h1>
	</div>
	<div id="img">
		<h1>프로필사진</h1>
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