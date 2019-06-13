<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<html>
<head>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
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

#revauctionbtn, #auctionbtn {
	background-color: orange;
	width: 150px;
	height: 30px;
	color: white;
	float: right;
}

#coklist {
	width: 1450px;
	height: 150px;
	float: left;
	display: block;
	border: 1px solid orange;
}

#bestlist {
	width: 1450px;
	height: 150px;
	float: left;
	display: block;
	border: 1px solid orange;
}

#list {
	width: 1100px;
	height: 400px;
	float: left;
	margin: 50px;
	border: 1px solid orange;
}

#text1 {
	width: 400px;
	height: 30px;
	float: left;
	border: 1px solid orange;
}

#text2 {
	margin-top: 30px;
	width: 400px;
	height: 30px;
	float: left;
	border: 1px solid orange;
}

#footercheck {
	border: 1px solid black;
	width: 1510px;
	height: 200px;
}
.best{
	color:red;
	display:inline;
	float:left;
	width: 320px;
	heigth:55px;
}
#bestitem{
width:150px;
height: 150px;
border: 1px solid black;
float: left;
}
#img1{
width: 145px;
height: 145px;
}
</style>
<title>Home</title>
</head>
<body>
	<div id="mainheader">
		<jsp:include page="main.jsp" />
	</div>

	<div id="homeMain">
		
		<br> <br>
		<div id="list">
			<div id="text1" align="center" >오늘의 추천 작품</div>
			<div id="coklist" ></div>
			<br> <br>
			<div id="text2" align="center">베스트 상품</div>
			<div id="bestlist">
			
			</div>
		</div>
	</div>
	<div id="footercheck">
		<jsp:include page="footer.jsp"></jsp:include></div>
	

</body>
<script>
//var rList = ${rList}
$(document).ready(function() {
	$.ajax({
		url : 'bestajax',
		type: 'post',
		dataType : 'json',
		//contentType:'application/json',
		success:function(data){
			var result = "";
			console.dir(data);
			console.log("성공");
							
			for(var i=0; i<3; i++){
				result+=
					"<div id='bestitem'>"+"<img src='resources/images/su1.jpg' id='img1'>"+"</div>"+
					"<div class='best'>"
					  +"작가아이디:"+data[i].au_mbid_w+"<br>"
					  +"상품번호:"+data[i].au_num+"<br>"
					  +"상품설명:"+data[i].au_contents+"<br>"
					  +"추천수:"+data[i].au_count+"<br>"
					  +"</div>"}
			$("#bestlist").html(result);
		},
	error:function(error){
		console.log("실패");
		console.log(error);
	}
	});
});

$(document).ready(function() {
	$.ajax({
		url : 'newajax',
		type: 'post',
		dataType : 'json',
		//contentType:'application/json',
		success:function(data){
			var result = "";
			console.dir(data);
			console.log("성공");

			for(var i=0; i<3; i++){
				result+=
					"<div id='bestitem'>"+"<img src='resources/images/yyy.jpg' id='img1'>"+"</div>"+"<div class='best'>"+"작가아이디:"
					   +data[i].au_mbid_w+"<br>"+"상품번호:"+data[i].au_num+"<br>"
				+"상품설명:"+data[i].au_contents+"<br>"+"신상:"+data[i].au_date+"<br>"
				+"</div>"}
			$("#coklist").html(result);
		},
	error:function(error){
		console.log("실패");
		console.log(error);
	}
	});
});


</script>
</html>
