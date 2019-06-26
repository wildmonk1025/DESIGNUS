<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>

<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
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
	margin: 0px 10px 10px 10px;
	width: 280px;
	height: 60px;
	text-align: left;
	font-size: 15px;
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
	border-radius: 5px;
}
.first:hover {
	transform: scale(1.05);
	background-color : white;
	border: 2px solid coral;
	transition-duration: 1s;
	height: 250px;
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
#l1 {
	 border : 3px solid orange;
	position: absolute;
	width: 600px;
	height: 430px;
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
#v1 {
	position: absolute;
	width: 600px;
	height: 430px;
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
.b3{
margin-top:10px;
  width : 65px;
  height : 40px;
  border-radius: 10px;
  background-color: orange;
  opacity: 0.45;
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
.f50{
 border-bottom: 1px solid orange;
 text-align: left;
 font-size: 20px;
 margin-left : 20px;
 margin-top : 10px;
 color: orange;
 width: 560px;
 float: left;
}
.f22{
width : 295px;
  float: left;
  border-bottom: 1px solid orange;
}
.f23{
width : 295px;
  float: left;
  
}
.f24{

width : 295px;
  float: left;
  border-bottom: 1px solid orange;
}
.f25{
margin-left: 100px;
  width: 600px;
  float: left;
  text-align: left;
}
.f26{
margin-top : 10px;
 width: 300px;
 height: 35px;
}
.f27{
margin-top : 10px;
width: 286px;
 height: 35px;
}
.f28{
width : 65px;
  height : 40px;
  border-radius: 10px;
  background-color: orange;
  opacity: 0.45;
  margin-left: 10px;
  margin-top: 10px;
}
.f21{
width : 295px;
  float: left;

}
.f20{
 margin-top : 50px;
height : auto;
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
		    	console.log(error);
		    }
		 });//end ajax
});
// contentType:"application/json; charset=utf-8;",
</script>
<script type="text/javascript">
var aa="${aaaa}";
console.log(aa);
if(aa=="bbbb"){
	alert("포인트가 부족합니다. 충전후 사용하세요");
}	
</script>
</head>


<body>
<div id="total"></div>
	
		<div id="l1"></div>
		<div id="v1"></div>

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
        <div id="sixth">${Spaging}</div>
		</div>
		<jsp:include page="footer.jsp" />
	</div>
	
</body>
<script type="text/javascript">
var spgList=${spgList}
console.log(spgList);
var stList=${stList}
console.log(stList);
var cc="";
var qq="";
for(var j=0; j<stList.length;j++){
	qq+=stList[j]+","

 }
console.log(qq);
var ww=qq.split(",");
console.log(4,spgList.length);
for(var i=0; i<spgList.length;i++){
	if(spgList[i].ssp_step==1){
		cc+="<div class='first'><div class='second'><div class='p1'>"+spgList[i].ss_date+"</div><div class='p2'>운송장번호 : -</div></div>"
		  +"<div class='third'><img src='/sponsor/"+spgList[i].ssi_img+"' width='100%' height='100%'></div>"
		  +"<div class='fourth'>"+spgList[i].ss_title+"<br>후원 총 인원 : "+ww[i]+"/"+spgList[i].ss_goalqty+"<br>후원 마감 :"+spgList[i].end_date+"<br>후원요청 작가 :"+spgList[i].ss_mbid_w+"<br>후원 진행상황 <progress value="+ww[i]+" max="+spgList[i].ss_goalqty+"></progress>("+ww[i]/spgList[i].ss_goalqty*100+"%)</div>"
		  +"<div class='Fifth'><p class='p3'>후원진행중</p></div></div>"
			  var ptnum=spgList[i].ssp_ptnum;
			  console.log(3,spgList[i].ssp_ptnum);
			  
		  if(ww[i]==spgList[i].ss_goalqty){
			  var form = {
					  ssp_ptnum : ptnum
					}
			  jQuery.ajaxSettings.traditional = true
			  $.ajax({
					url : 'support',
					type : 'post',
					data : JSON.stringify(form),
					contentType : "application/json; charset=utf-8;",
					dataType : 'json',
					success : function(data) {
						
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
			  +"<div class='third'><img src='/sponsor/"+spgList[i].ssi_img+"' width='100%' height='100%'></div>"
			  +"<div class='fourth'>"+spgList[i].ss_title+"<br>후원 마감 :"+spgList[i].end_date+"<br>후원요청 작가 :"+spgList[i].ss_mbid_w+"<br>후원 진행상황 <progress value="+ww[i]+" max="+spgList[i].ss_goalqty+"></progress></div>"
			  +"<div class='Fifth'><p class='p3'>목표 후원에<br>도달하진 못했어요ㅜㅜ</p></div></div>"
		}else if(spgList[i].ssp_step==3){
			cc+="<input type='hidden' id='ptnum' value='"+spgList[i].ssp_ptnum+"'>" 
			  +"<div class='first'><div class='second'><div class='p1'>"+spgList[i].ss_date+"</div><div class='p2'>운송장번호 : -</div></div>"
			  +"<div class='third'><img src='/sponsor/"+spgList[i].ssi_img+"' width='100%' height='100%'></div>"
			  +"<div class='fourth'>"+spgList[i].ss_title+"<br>후원 총 인원 : "+ww[i]+"/"+spgList[i].ss_goalqty+"<br>후원 마감 :"+spgList[i].end_date+"<br>후원 진행상황 <progress value="+ww[i]+" max="+spgList[i].ss_goalqty+"></progress></div>"
			  +"<div class='Fifth'><input class='bbttzzz' type='button' onclick=\"spo('"+ spgList[i].ssp_ptnum+ "')\" value='배송정보 입력'/></div></div>"
		}else if(spgList[i].ssp_step==4){
			cc+="<input type='hidden' id='ptnum' value='"+spgList[i].ssp_ptnum+"'>" 
			  +"<div class='first'><div class='second'><div class='p1'>"+spgList[i].ss_date+"</div><div class='p2'>운송장번호 : -</div></div>"
			  +"<div class='third'><img src='/sponsor/"+spgList[i].ssi_img+"' width='100%' height='100%'></div>"
			  +"<div class='fourth'>"+spgList[i].ss_title+"<br>후원 마감 :"+spgList[i].end_date+"<br>후원요청 작가 :"+spgList[i].ss_mbid_w+"<br>후원 진행상황 <progress value="+ww[i]+" max="+spgList[i].ss_goalqty+"></progress></div>"
			  +"<div class='Fifth'><p class='p3'>제작을<br>진행중 입니다.</p></div></div>"
		}else if(spgList[i].ssp_step==5){
			cc+="<input type='hidden' id='ptnum' value='"+spgList[i].ssp_ptnum+"'>" 
			  +"<div class='first'><div class='second'><div class='p1'>"+spgList[i].ss_date+"</div><div class='p2'>운송장번호 :"+spgList[i].ssp_track+"</div></div>"
			  +"<div class='third'><img src='/sponsor/"+spgList[i].ssi_img+"'  width='100%' height='100%'></div>"
			  +"<div class='fourth'>"+spgList[i].ss_title+"<br>후원 총 인원 : "+ww[i]+"/"+spgList[i].ss_goalqty+"<br>후원 마감 :"+spgList[i].end_date+"<br>후원 진행상황 <progress value="+ww[i]+" max="+spgList[i].ss_goalqty+"></progress></div>"
			  +"<div class='Fifth'><input class='bbttzzz' type='button' onclick=\"Board('"+ spgList[i].ssp_ptnum+ "')\" value='후원 후기 쓰기'/></div></div>"
		}else if(spgList[i].ssp_step==6){
			cc+="<input type='hidden' id='ptnum' value='"+spgList[i].ssp_ptnum+"'>" 
			  +"<div class='first'><div class='second'><div class='p1'>"+spgList[i].ss_date+"</div><div class='p2'>운송장번호 :"+spgList[i].ssp_track+"</div></div>"
			  +"<div class='third'><img src='/sponsor/"+spgList[i].ssi_img+"' width='100%' height='100%'></div>"
			  +"<div class='fourth'>"+spgList[i].ss_title+"<br>후원 마감 :"+spgList[i].end_date+"<br>후원요청 작가 :"+spgList[i].ss_mbid_w+"<br>후원 진행상황 <progress value="+ww[i]+" max="+spgList[i].ss_goalqty+"></progress></div>"
			  +"<div class='Fifth'><p class='p3'>완료</p></div></div>"
		}
	
	
}
$('#renking').html(cc)

function Board(even) {
	var form = {ssp_ptnum : even}
	var vub = "";
	$.ajax({
		url : 'SponBoardWrite',
		type : 'post',
		data : JSON.stringify(form),
		contentType : "application/json; charset=utf-8;",
		dataType : 'json',
		success : function(data) {
			alert('해당 상품을 추천하였습니다.');
			console.log("12" + data.ss_price);
			vub+="<form action='WriteAReview' method='post' enctype='multipart/form-data'>"
			   +"<input type='hidden' name='ss_mbid_w' value='"+data.ss_mbid_w+"'>"
			   +"<input type='hidden' name='ss_price'  value='"+data.ss_price+"'>"
			   +"<input type='hidden' name='ssp_ptnum'  value='"+data.ssp_ptnum+"'>"
			   +"<div class='v2'>후원 후기 쓰기<input type='button' id='butt' value='추천하기' onclick=\"good('"+ data.ss_mbid_w+ "')\"><br></div>"
			   +"<div class='v3'><h2>"+data.ss_title+"</h2><h4>"+data.ss_price+"</h4></div>"
			   +"<div class='v4'>구매후기 쓰기<input type='text' name='bd_title' ><br>"
			   +"<textarea rows='10' cols='70' name='bd_contents'></textarea></div>"
			   +"<div class='v5'><input type='file' name='bd_imgSysName' id='bd_imgSysName' value='파일 첨부'  onchange='fileChk(this)' multiple>"
			   +"<input type='hidden' id='fileCheck' value='0' name='fileCheck'></div>"
			   +"<div class='v6'><input type='submit' value='완료'>"
			   +"<input type='button' value='취소'></div></form>"
			   
			
			
			
				$('#total').css("display", "inline");
			    $('#v1').css("display", "inline");		
				$('#v1').html(vub);
				
		},

		error : function(error) {
			alert('정상적인 추천이 실패했습니다.');
			console.log(error);
		}
	});//end ajax
}

function good(data) {
	var btn = $('#butt');
	$.ajax({
		url : "goods",
		type : "post",
		data : {
			idw : data
		},
		success : function(data) {
			alert('해당 상품을 추천하였습니다.');
			console.log("123456" + data);
			//btn.disabled = 'disabled'
			var bu = document.getElementById('butt');
			bu.disabled = true;

		},
		error : function(error) {
			alert('정상적인 추천이 실패했습니다.');
			console.log(error);
		}

	});//end good(ajax)
}//end good
function spo(even) {
	var form = {ssp_ptnum : even}
	var sub = "";
	$.ajax({
		url : 'fundapply',
		type : 'post',
		data : JSON.stringify(form),
		contentType : "application/json; charset=utf-8;",
		dataType : 'json',
		success : function(data) {
			alert('해당 상품을 추천하였습니다.');
			console.log("12" + data.ss_price);
			sub+="<form action='funddeliupload' method='post' onsubmit='return reqCheck();'>"
			   +"<div id='r2'>"
			   +"<input type='hidden' name='ssp_ptnum' value='"+data.ssp_ptnum+"'>"
			   +"<div class='f50'>"+data.ss_mbid_w+"님에게 배송정보 입력</div>"
			   +"<div class='f20'><div class='f21'>거래번호 :"+ data.ssp_ptnum+ "<input type='hidden' name='aup_ptnum' value='"+data.ssp_ptnum+"' ></div>"
			   +"<div class='f23'>상품이름 :"+data.ss_title+"</div>"
			   +"<div class='f22'>가격 :"+data.ss_price+"<input type='hidden' name='aup_price' value='"+data.ss_price+"' ></div>"
			   +"<div class='f24'>아이디 :"+data.ssp_mbid_n+" <input type='hidden' name='ssp_mbid_n' id='ssp_mbid_n'value='"+data.ssp_mbid_n+"'></div></div>"
			   +"<div class='f25'>이름 : <input id='mb_name' class='f26' type='text' name='ssp_name'><br>"
			   +"주소 : <input type='text' class='f26' name='ssp_address' id='mb_add'><br>"
			   +"연락처 : <input type='text' class='f27' name='ssp_phone' id='mb_pho'></div>"
			   +"<div class='l5'><input class='f28' type='submit' value='요청'>"
			   +"<input class='f28' type='button' id='back' value='취소'>"
			   +"</div></div></form>";
			
			
			
			
				$('#total').css("display", "inline");
			    $('#l1').css("display", "inline");		
				$('#l1').html(sub);
				$("#back").click(function() {
				$("#total").css("display", "none");
				$("#l1").css("display", "none");
				});
		},

		error : function(error) {
			alert('정상적인 추천이 실패했습니다.');
			console.log(error);
		}
	});//end ajax
}

function reqCheck() {
	var bb=$("#mb_name");
	var cc=$("#mb_pho");
	var aa=$("#mb_add");
	
	if(bb.val()==""){
		alert("이름을 입력해주세요.");
		$("#mb_name").focus();
		return false;
	}else if(aa.val()==""){
		alert("주소를 입력해주세요.");
		$("#mb_add").focus();
		return false;
	}else if(cc.val()==""){
		alert("핸드폰 번호를 입력해주세요.");
		$("#mb_pho").focus();
		return false;
	} 
	
}


	$("#action").click(function() {
		$('#lightbox-shadow').css("display", "inline")
		$('#lightbox').css("display", "inline")
	});
	$("#cancel").click(function() {
		$('#lightbox-shadow1').css("display", "inline")
		$('#lightbox1').css("display", "inline")
	});
	function fileChk(elem) {
		console.dir(elem);
		if (elem.value == "") {
			console.log("empty");
			$('#fileCheck').val(0); //파일 첨부 안했음
		} else {
			console.log("Notempty")
			$('#fileCheck').val(1);//파일 첨부 했음
		}
	}//end fileChk
</script>

</html>