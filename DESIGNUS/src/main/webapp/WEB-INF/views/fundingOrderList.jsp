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
#sixth{
 position: absolute;
  top: 1080px;
  left: 1150px;  
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
#q1 {
	position: absolute;
	width: 800px;
	height: 530px;
	border-radius: 100px;
	z-index: 1002;
	padding-top: 70px;
	text-align: center;
	background-color: #FFE08C;
	display: none;
	font-size: 22px;
	top: 400px;
	left: 700px;
}
#back{
  position : absolute;
  botton :200px;
     
}
#q3{
 width: 700px;
 margin-top: 60px;
 
}
#p1 {
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
	top: 400px;
	left: 700px;
}
#p3{
 width: 400px;
 margin-top: 60px;
 margin-left: 30px;
}
</style>
<script type="text/javascript">
$(document).ready(function(){
	 $.ajax({
			url: 'deadline',
			type:'post',
		    dataType:'json',
		    success:function(data){
		    }, 
		    error:function(error){
		    	alert('정상적인 추천이 실패했습니다.');
		    	console.log(error);
		    }
		 });//end ajax
});
// contentType:"application/json; charset=utf-8;",
</script>
</head>
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>

<body>
<div id="total"></div>
	
		<div id="q1"></div>
		<div id="p1"></div>
	<div id="mypagemain">
		<div id="mainheader">
			<jsp:include page="main.jsp" />
		</div>

		<jsp:include page="Mapagemain.jsp" />


		<div id="rightmain">
			<div id="notice">
			 <h2>후원 요청내역</h2><hr>
			</div>
			
			<div id="renking">
				
			</div>
        <div id="sixth">${Spqging }</div>
		</div>
	</div>
</body>
<script type="text/javascript">
var spgList=${spgList}
console.log(spgList);
var Mapst=${Mapst}
console.log(Mapst);
var cc="";
var qq="";
for(var j=0; j<Mapst.length;j++){
	qq+=Mapst[j]+","

 }
var ww=qq.split(",");
for(var i=0; i<spgList.length;i++){
	if(spgList[i].ssp_step==1){
		cc+="<input type='hidden' id='ptnum' value='"+spgList[i].ssp_ptnum+"'>" 
		  +"<div class='first'><div class='second'><div class='p1'>"+spgList[i].ss_date+"</div><div class='p2'>운송장번호 : -</div></div>"
		  +"<div class='third'><img src='"+spgList[i].ssi_img+"'></div>"
		  +"<div class='fourth'>"+spgList[i].ss_title+"<br>후원 총 인원 : "+ww[i]+"/"+spgList[i].ss_goalqty+"<br>후원 마감 :"+spgList[i].end_date+"<br>후원요청 작가 :"+spgList[i].ss_mbid_w+"<br>후원 진행상황 <progress value="+ww[i]+" max="+spgList[i].ss_goalqty+"></progress>("+ww[i]/spgList[i].ss_goalqty*100+"%)</div>"
		  +"<div class='Fifth'><p class='p3'>후원진행중</p></div></div>"
		  if(ww[i]==spgList[i].ss_goalqty){
			  var ptnum=$('#ptnum').val();
			  var form = {
					  ssp_ptnum : ptnum
					}
			  $.ajax({
					url : 'support',
					type : 'post',
					data : JSON.stringify(form),
					contentType : "application/json; charset=utf-8;",
					dataType : 'json',
					success : function(data) {
						alert('해당 상품을 추천하였습니다.');
						console.log("1234567" + data.aup_ptnum);
					
					},

					error : function(error) {
						alert('정상적인 추천이 실패했습니다.');
						console.log(error);
					}
				});//end ajax
		  }
		}else if(spgList[i].ssp_step==2){
			cc+="<input type='hidden' id='ptnum' value='"+spgList[i].ssp_ptnum+"'>" 
			  +"<div class='first'><div class='second'><div class='p1'>"+spgList[i].ss_date+"</div><div class='p2'>운송장번호 : -</div></div>"
			  +"<div class='third'><img src='"+spgList[i].ssi_img+"'></div>"
			  +"<div class='fourth'>"+spgList[i].ss_title+"<br>후원 마감 :"+spgList[i].end_date+"<br>후원요청 작가 :"+spgList[i].ss_mbid_w+"<br>후원 진행상황 <progress value="+ww[i]+" max="+spgList[i].ss_goalqty+"></progress></div>"
			  +"<div class='Fifth'><p class='p3'>목표 후원에<br>도달하진 못했어요ㅜㅜ</p></div></div>"
		}else if(spgList[i].ssp_step==3){
			cc+="<input type='hidden' id='ptnum' value='"+spgList[i].ssp_ptnum+"'>" 
			  +"<div class='first'><div class='second'><div class='p1'>"+spgList[i].ss_date+"</div><div class='p2'>운송장번호 : -</div></div>"
			  +"<div class='third'><img src='"+spgList[i].ssi_img+"'></div>"
			  +"<div class='fourth'>"+spgList[i].ss_title+"<br>후원 총 인원 : "+ww[i]+"/"+spgList[i].ss_goalqty+"<br>후원 마감 :"+spgList[i].end_date+"<br></div>"
			  +"<div class='Fifth'><p class='p3'>후원인의<br>배송정보를 수집 중입니다!</p></div></div>"
		}else if(spgList[i].ssp_step==4){
			cc+="<input type='hidden' id='ptnum' value='"+spgList[i].ssp_ptnum+"'>" 
			  +"<div class='first'><div class='second'><div class='p1'>"+spgList[i].ss_date+"</div><div class='p2'>운송장번호 : -</div></div>"
			  +"<div class='third'><img src='"+spgList[i].ssi_img+"'></div>"
			  +"<div class='fourth'>"+spgList[i].ss_title+"<br>후원 마감 :"+spgList[i].end_date+"<br>후원 진행상황 <progress value="+ww[i]+" max="+spgList[i].ss_goalqty+"></progress></div>"
			  +"<div class='Fifth'><input type='button' onclick=\"funddeliin('"+ spgList[i].ssp_ssnum+ "')\" value='후원인 배송정보'/>"
			  +"<input type='button' onclick=\"funddelinu('"+ spgList[i].ssp_ptnum+ "')\" value='배송 보내기'/></div></div>"
		}else if(spgList[i].ssp_step==5){
			cc+="<input type='hidden' id='ptnum' value='"+spgList[i].ssp_ptnum+"'>" 
			  +"<div class='first'><div class='second'><div class='p1'>"+spgList[i].ss_date+"</div><div class='p2'>운송장번호 : "+spgList[i].ssp_track+"</div></div>"
			  +"<div class='third'><img src='"+spgList[i].ssi_img+"'></div>"
			  +"<div class='fourth'>"+spgList[i].ss_title+"<br>후원 총 인원 : "+ww[i]+"/"+spgList[i].ss_goalqty+"<br>후원 마감 :"+spgList[i].end_date+"<br></div>"
			  +"<div class='Fifth'><p class='p3'>수령확인<br>대기중!</p></div></div>"
		}else if(spgList[i].ssp_step==6){
			cc+="<input type='hidden' id='ptnum' value='"+spgList[i].ssp_ptnum+"'>" 
			  +"<div class='first'><div class='second'><div class='p1'>"+spgList[i].ss_date+"</div><div class='p2'>운송장번호 :"+spgList[i].ssp_track+"</div></div>"
			  +"<div class='third'><img src='"+spgList[i].ssi_img+"'></div>"
			  +"<div class='fourth'>"+spgList[i].ss_title+"<br>후원 마감 :"+spgList[i].end_date+"<br>후원요청 작가 :"+spgList[i].ss_mbid_w+"<br>후원 진행상황 <progress value="+ww[i]+" max="+spgList[i].ss_goalqty+"></progress></div>"
			  +"<div class='Fifth'><p class='p3'>완료</p></div></div>"
		}
	
	
}

$('#renking').html(cc)

function funddelinu(even) {
	var form = {ssp_ptnum : even}
	var pub = "";
	$.ajax({
		url : 'funddelinum',
		type : 'post',
		data : JSON.stringify(form),
		contentType : "application/json; charset=utf-8;",
		dataType : 'json',
		success : function(data) {
			console.info("15" + data);
			alert('해당 상품을 추천하였습니다.');
			if(data.ssp_step==4){
			pub+="<form action='funddelinumupload' method='post'>"
			   +"<div id='p2'>후원인들의 운송장 입력</div>"
			   +"<table id='p3'><tr><th>아이디</th><th>운송장 입력</th</tr>"
			   +"<tr><td>"+data.ssp_mbid_n+"</td><td><input type='test' name='ssp_track' id='ssp_track'></td></tr>"
			   +"<input type='hidden' name='ssp_ptnum' value='"+data.ssp_ptnum+"'>"
			   +"</table><input type='submit' value='요청'><input type='button' value='취소'></form>";
				   
	 }
			$('#total').css("display", "inline");
		    $('#p1').css("display", "inline");		
			$('#p1').html(pub);
			
		},

		error : function(error) {
			alert('정상적인 추천이 실패했습니다.');
			console.log(error);
		}
	});//end ajax
}

function funddeliin(even) {
	var form = {ssp_ssnum : even}
	var cub = "";
	$.ajax({
		url : 'funddeliinfo',
		type : 'post',
		data : JSON.stringify(form),
		contentType : "application/json; charset=utf-8;",
		dataType : 'json',
		success : function(data) {
			console.info("13" + data.length);
			alert('해당 상품을 추천하였습니다.');
			 
			cub+="<div id='q2'>후원인들의 배송정보</div>"
			   +"<table id='q3'><tr><th>아이디</th><th>이름</th><th>주소</th><th>연락처</th></tr>"
			for(var i=0; i<data.length;i++){
			   if(data[i].ssp_step==4){
				 cub+="<tr><td>"+data[i].ssp_mbid_n+"</td><td>"+data[i].ssp_name+"</td>"
				    +"<td>"+data[i].ssp_address+"</td><td>"+data[i].ssp_phone+"</td></tr>"
			   }	 
				 
			}
			   cub+="</table><button id='back'>확인</button>";
			$('#total').css("display", "inline");
		    $('#q1').css("display", "inline");		
			$('#q1').html(cub);
			$("#back").click(function() {
			$("#total").css("display", "none");
			$("#q1").css("display", "none");
				});
		},

		error : function(error) {
			alert('정상적인 추천이 실패했습니다.');
			console.log(error);
		}
	});//end ajax
}

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