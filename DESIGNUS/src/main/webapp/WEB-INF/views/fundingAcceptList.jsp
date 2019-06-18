<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
	width: 1520px;
	height: 170px;
	text-align: center;
}

#point {
	border: 1px solid orange;
	margin: 0px 10px 10px 10px;
	width: 280px;
	height: 60px;
	text-align: left;
	font-size: 15px;
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

#category {
	float: left;
	width: 1500px;
	height: 50px;
}

#menu {
	float: left;
	width: 1400px;
	height: 50px
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

#mypagemain {
	width: 1530px;
	height: 1200px;
	border: 1px solid black;
}

#full {
	float: right;
}
#nonw{
  color: #BDBDBD;
}
#Participation{
 margin-left:40px;
 margin-top:20px;
 width: 1000px;
}
#sk{
margin-left:40px;
 margin-top:20px;
 width: 1000px;
}
#gsc{
margin-left:40px;
 margin-top:20px;
 width: 1000px;
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
</style>

</head>
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>

<body>
	<div id="mypagemain">
		<div id="mainheader">
			<jsp:include page="main.jsp" />
		</div>

		<jsp:include page="Mapagemain.jsp" />


		<div id="rightmain">
			<div id="notice">
			 <h2>후원 진행내역</h2><hr>
			</div>
			
			<div id="renking">
				
			</div>

		</div>
	</div>
</body>
<script type="text/javascript">
var spgList=${spgList}
console.log(spgList);
var stpList=${stpList}
console.log(stpList);
var cc="";
for(var i=0; i<spgList.length;i++){
	for(var j=0; j<stpList.length;j++){
	if(spgList[i].ssp_step==1){
	cc+="<div class='first'><div class='second'><div class='p1'>"+spgList[i].ss_date+"</div><div class='p2'>운송장번호 : -</div></div>"
	  +"<div class='third'><img src='"+spgList[i].ssi_img+"'></div>"
	  +"<div class='fourth'>"+spgList[i].ss_title+"<br>후원 총 인원 : "+stpList[j]+"/"+spgList[i].ss_goalqty+"<br>후원 기간 :"+spgList[i].end_date+"<br>후원요청 작가 :"+spgList[i].ss_mbid_w+"<br>후원 진행상황 :</div>"
	  +"<div class='Fifth'><p class='p3'>후원진행중</p></div></div>"
	}
 }
}
$('#renking').html(cc)

	$("#action").click(function() {
		$('#lightbox-shadow').css("display", "inline")
		$('#lightbox').css("display", "inline")
	});
	$("#cancel").click(function() {
		$('#lightbox-shadow1').css("display", "inline")
		$('#lightbox1').css("display", "inline")
	});
</script>

</html>