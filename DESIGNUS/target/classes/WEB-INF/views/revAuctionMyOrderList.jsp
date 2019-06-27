<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<meta charset="UTF-8">
<title>본인의 제작의뢰 내역</title>
<style type="text/css">
.imgg{
width:240px;
  height: 170px;
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
	color:#95deea;
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
	width: 1518px;
	height: 170px;
	position: relative;
}

#mainheader {
	border: 1px solid #F5BCA9;
	background-color: white;
	width: 1520px;
	height: 170px;
	z-index: 1000;
	box-shadow: 3px 0px 8px -3px rgba(0, 0, 0, 0.56);
	position: fixed;
}

#point {

	margin: 0px 10px 10px 10px;
	width: 280px;
	height: 60px;
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

#msg {
	width: 50px;
	height: 50px;
	margin-left: 10px;
	float: left;
}
#q1 {
    border : 3px solid orange;
	position: absolute;
	width: 600px;
	height: 530px;
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

#total {
	position: absolute;
	width: 100%;
	height: 200%;
	background-color: black;
	z-index: 1001;
	opacity: 0.85;
	display: none;
}
#mypagemain {
	width: 1518px;
	height: 1200px;
	
	margin-top: 40px;
}
#sixth{
 position: absolute;
 width:300px;
  top: 1130px;
  left: 1050px;  
}
.first{

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
	border: 2px solid #95deea;
	transition-duration: 1s;
	height: 250px;
}
.p1 {
padding-left:20px;
margin-top:5px;
 width: 500px;
 font-weight:bord;
 float: left;
 text-align: left;
}
.p2{
margin-top:5px;
width: 500px;
text-align: left;
float: left;
}
.second{
    background-color : #c3ecf3;
    border-radius:5px;
	margin: 10px 10px 10px 10px;
	width: 1040px;
	height: 40px;
	text-align: center;
	font-size: 20px;
	float: left;
}
.third{
	margin: 5px 10px 10px 10px;
	width: 250px;
	height: 155px;
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
	width: 150px;
	height: 175px;
	text-align: center;
	font-size: 20px;
	float: left;
	
}
.p3{
margin-top: 50px;
color: #55cadd;
font-weight:bold;
font-size: 17pt;
}
.p4{
margin-top: 50px;
font-size: 13px;
color: red;
}
.bbttzzz{
  width: 150px;
  height: 50px;
  color: black;
  cursor:pointer;
  background-color: #95deea;
  border-radius:5px;
  margin-top: 20px;
}

.bbttzzz:hover {
   background-color: #c7c9f4;
}
#r1{
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
#c1{
  border : 3px solid orange;
	position: absolute;
	width: 430px;
	height: 400px;
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
.f1{
 border-bottom: 1px solid orange;
 text-align: left;
 font-size: 17px;
 margin-left : 40px;
 color: red;
 width: 500px;
}
.f2{
margin-top: 20px;
color: black;
}
.f3{

color: black;
}
#butt{
  width : 65px;
  height : 40px;
  border-radius: 30px;
cursor: pointer;
 background: linear-gradient(to bottom, white, #a7e4f6);
  opacity: 0.45;
}
#butt:hover {
   background-color: orange;
  opacity: 1;
}
.f4{
  margin-top: 15px;
  color: black;
}
.bd_title{
  width: 300px;
  height: 30px;
  border:1px solid black;
}
textarea{
 margin-top: 15px;
 resize: none;
 border:1px solid black;
}

.f5  { 
  float: left;
  margin-left: 50px;
}

.b3{

  width : 65px;
  height : 40px;
  border-radius: 10px;
  background-color: orange;
  opacity: 0.45;
}
#footer {
	border: 1px solid red;
	width: 1518px;
	height: 180px;
	margin-top: 20px;
	border: 1px solid #f0f0f0;
	 float: left;
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
.f20{
 margin-top : 50px;
height : auto;
 
}
.f21{
width : 295px;
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
.f30{
 border-bottom: 1px solid orange;
 text-align: left;
 font-size: 17px;
 margin-left : 40px;
 color: red;
 width: 300px;
}
.f31{
  margin-top: 10px;
  
}
.f32{
width : 380px;
  margin-top: 10px;
  margin-left : 40px;
  padding-top : 10px;
  float: left;
  text-align: left;
}
.f33{
 padding-top : 10px;
 margin-top: 20px;
  margin-left : 40px;
   text-align: left;
   font-size: 20px;
}
</style>

</head>


<body>
<script type="text/javascript">
var aa="${aaaa}";
console.log(aa);
if(aa=="bbbb"){
	alert("포인트가 부족합니다. 충전후 사용하세요");
}	
</script>
<div id="total"></div>
<div id="r1"></div>
<div id="c1"></div>
<div id="q1"></div>

<div id="main">
	<div id="mainheader">
	<jsp:include page="main.jsp" />
	</div>
</div>
	
	<div id="mypagemain">

		<jsp:include page="Mapagemain.jsp" />


		<div id="rightmain">
			<div id="notice">
			 <h2>제작의뢰 구매 내역</h2>
			</div>
			<div id="renking">
				
			</div>
        <div id="sixth">${ROpaging}</div>
		</div>
		<div id="footer">
<!-- 			<hr style="width: 100%; border: 2px solid coral; align: center;"> -->
			<jsp:include page="footer.jsp"></jsp:include>
		</div>
	</div>
</body>
<script type="text/javascript">
var revList = ${revList};
console.log(revList);

var main = "";

for (var i = 0; i < revList.length; i++) {
	 if (revList[i].rap_step == 1) {
	main += "<div class='first'><div class='second'>"
	 if(revList[i].ra_oc=="O"){
	main +="<div class='p1'>공개</div><div class='p2'>운송장번호 : -</div></div>"
	 }else{
    main +="<div class='p1'>비공개</div><div class='p2'>운송장번호 : -</div></div>"	 
	  }
	main +="<div class='third'><a href='revauctionread?ra_num="+revList[i].rap_ranum+"'><img class='imgg' src='/revauction/"+revList[i].ra_image+"' width='100%' height='100%'/></a></div>"   
		 + "<div class='fourth'>상품번호 :"+ revList[i].rap_ptnum+"<br>상품명 :"+revList[i].ra_title+"<br>"
		 + "구매 금액 :"+ revList[i].rap_price+"<br>"
		 + "<p class='p4'>작업이 확정된 시점의 요청사항 추가는<br>  추가 요금 및, 작업 완료일이 늘어날 수 있습니다.</p></div>"
	     + "<div class='Fifth'><input class='bbttzzz' id='btzRevM' type='button' onclick=\"javascript:requested('"+revList[i].rap_ptnum+"')\" value='요청'/><br>"
	     + "<input type='button' class='bbttzzz' onclick=\"javascript:ravcancel('"+revList[i].rap_ptnum+"')\" value='취소'/></div></div>"
             
	} else if(revList[i].rap_step==2){
			main+="<div class='first'><div class='second'>"
	       if(revList[i].ra_oc=="O"){
			main +="<div class='p1'> 공개</div><div class='p2'>운송장번호 : -</div></div>"
		   }else{
			main +="<div class='p1'> 비공개</div><div class='p2'>운송장번호 : -</div></div>"	 
			 }
			main +="<div class='third'><a href='revauctionread?ra_num="+revList[i].rap_ranum+"'><img class='imgg' src='/revauction/"+revList[i].ra_image+"' width='100%' height='100%'/></a></div>"   
				 + "<div class='fourth'>상품번호 : "+ revList[i].rap_ptnum+"<br>상품명 : "+revList[i].ra_title+"<br>"
				 + "구매 금액 : "+ revList[i].rap_price+"<br>"
				 + "<p class='p4'>작업이 확정된 시점의 요청사항 추가는 <br>추가 요금 및, 작업 완료일이 늘어날 수 있습니다.</p></div>"
                 + "<div class='Fifth'><p class='p3'>배송대기중...</p></div></div>";				
		    
		}else if(revList[i].rap_step==3){
			main+="<div class='first'><div class='second'>"
		   if(revList[i].ra_oc=="O"){
			main +="<div class='p1'>공개</div><div class='p2'>운송장번호 : -</div></div>"
		  }else{
			main +="<div class='p1'>비공개</div><div class='p2'>운송장번호 : -</div></div>"	 
			  }
			main +="<div class='third'><a href='revauctionread?ra_num="+revList[i].rap_ranum+"'><img class='imgg' src='/revauction/"+revList[i].ra_image+"' width='100%' height='100%'/></a></div>"   
				 + "<div class='fourth'>상품번호 : "+ revList[i].rap_ptnum+"<br>상품명 : "+revList[i].ra_title+"<br>"
				 + "구매 금액 : "+ revList[i].rap_price+"<br>"
			     + "<p class='p4'> 구매후기 작성버튼을 누르시면 수령확인이 완료됩니다. <br> 기타 문의는 고객센터를 이용해주세요!</p></div>"
			     + "<div class='Fifth'><input class='bbttzzz' type='button' onclick=\"location.href='scquestion'\" value='고객센터 문의'/><br>"
			     + "<input class='bbttzzz' type='button' onclick=\"RevMyreview('"+revList[i].rap_ptnum+"')\" value='구매후기 작성'/></div></div>"
		    
		} else if(revList[i].rap_step==4){
			main+="<div class='first'><div class='second'>"
		   if(revList[i].ra_oc=="O"){
			main +="<div class='p1'>공개</div><div class='p2'>운송장번호 : -</div></div>"
		   }else{
			main +="<div class='p1'>비공개</div><div class='p2'>운송장번호 : -</div></div>"	 
			 }
			main +="<div class='third'><a href='revauctionread?ra_num="+revList[i].rap_ranum+"'><img class='imgg' src='/revauction/"+revList[i].ra_image+"' width='100%' height='100%'/></a></div>"   
				 + "<div class='fourth'>상품번호 : "+ revList[i].rap_ptnum+"<br>상품명 : "+revList[i].ra_title+"<br>"
				 + "구매 금액 : " + revList[i].rap_price+"<br>"
				 + "<p class='p4'>완료된 거래입니다.<br> 물건에 대한 불만이나, 기타 문의사항은 고객센터를 이용해주세요!</p></div>"
				 + "<div class='Fifth'><p class='p3'>완료</p></div></div>";
		
		}else{
			main+="<div class='first'><div class='second'>"
		   if(revList[i].ra_oc=="O"){
			main +="<div class='p1'>공개</div><div class='p2'>운송장번호 : -</div></div>"
		  }else{
			main +="<div class='p1'>비공개</div><div class='p2'>운송장번호 : -</div></div>"	 
			 }
			main +="<div class='third'><a href='revauctionread?ra_num="+revList[i].rap_ranum+"'><img class='imgg' src='/revauction/"+revList[i].ra_image+"' width='100%' height='100%'/></a></div>"   
			     + "<div class='fourth'>상품번호 :"+ revList[i].rap_ptnum+"<br>상품명 :"+revList[i].ra_title+"<br>"
				 + "구매 금액 :"+ revList[i].rap_price+"<br>"
				 + "<p class='p4'>작업이 확정된 시점의 요청사항 추가는 <br>  추가 요금 및,작업 완료일이 늘어날 수 있습니다.</p></div>"
				 + "<div class='Fifth'><p class='p3'>비공개 제작의뢰 요청중입니다...</p></div></div>";
		}    
}


$('#renking').html(main);
  
 //스텝1 요청 라이트 박스(ajax) 
function requested(even) {
	var form = {
			rap_ptnum:even
			 }
		var sub="";
		 $.ajax({

				url: 'request',
				type:'post',
			    data:JSON.stringify(form),
			    contentType:"application/json; charset=utf-8;",
			    dataType:'json',
			    success:function(data){
			    	   sub+="<form action='requestby' method='post' onsubmit='return reqCheck();'>"
			    	      +"<div id='r2'>"
			    	 if(data.ra_oc=="O"){
				    	   sub+="<div class='f1'>공개<input type='hidden' name='ra_oc'></div>"   
				    	   }else{
				    	   sub+="<div class='f1'>비공개<input type='hidden' name='ra_oc'></div>"   
				    	   };
			    	sub+="<div class='f50'>" + data.rap_mbid_w+"님에게 의뢰 요청(배송정보입력)</div>"
			    	   +"<div class='f20'><div class='f21'>거래번호 :"+data.rap_ptnum+"<input type='hidden' name='rap_ptnum' value='"+data.rap_ptnum+"' ></div>"
			    	   +"<div class='f23'>상품이름 :"+data.ra_title+"</div>"
	                   +"<div class='f22'>가격 : "+data.rap_price+"<input type='hidden' name='rap_price' value='"+data.rap_price+"' ></div>"    	
			    	   +"<div class='f24'>아이디 : "+data.rap_mbid_n+"<input type='hidden' name='rap_mbid_n' value='"+data.rap_mbid_n+"'></div></div>"
			    	   +"<div class='f25'>이  름 : <input id='mb_name' class='f26' type='text' name='rap_name'><br>"
			    	   +"주  소 :   <input id='mb_add' class='f26' type='text' name='rap_address'><br>"
			    	   +"연락처 : <input id='mb_pho' class='f27' type='text' name='rap_phone'></div>"
			    	   +"<input class='f28' type='submit' value='요청'>"
			    	   +"<input class='f28' type='button' id='back' value='취소'></div></form>";
			    	  
			    	$('#total').css("display", "inline");
			    	$('#r1').css("display", "inline");
			    	
			    	$('#r1').html(sub);
			    	
			    	 $('#back').click(function () {
				    	  $('#total').css("display", "none");
						  $('#r1').css("display", "none");
							});
			    },
			    
			    error:function(error){
			    	alert('정상적인 추천이 실패했습니다.');
			    	console.log(error);
			    }
			 });//end ajax
		
	}//end sho	

	function reqCheck() {
		var bb=$("#mb_name");
		var cc=$("#mb_pho");
		var aa=$("#mb_add");
		
		if(bb.val()==""){
			alert("이름을 입력해주세요.");
			$("#mb_name").focus();
			return false;
		} else if(cc.val()==""){
			alert("핸드폰 번호를 입력해주세요.");
			$("#mb_pho").focus();
			return false;
		}else if(aa.val()==""){
			alert("주소를 입력해주세요.");
			$("#mb_add").focus();
			return false;
		}
		
		
	}
	
	
//스텝 1 취소 라이트박스(ajax)
	function ravcancel(even) {
		var form = {
				rap_ptnum:even
				 }
			var cub="";
			 $.ajax({
					url: 'revauccancel',
					type:'post',
				    data:JSON.stringify(form),
				    contentType:"application/json; charset=utf-8;",
				    dataType:'json',
				    success:function(data){
				    	
				    	cub+="<form action='revaucinfocancel' method='post' onsubmit='return cencelCheck();'>"
				    	      +"<div id='c2'>"
				    	 if(data.ra_oc=="O"){
				    		 cub+="<div class='f30'>공개<input type='hidden' name='ra_oc'></div>"   
					    	   }else{
					    		   cub+="<div class='f30'>비공개<input type='hidden' name='ra_oc'></div>"   
					    	   };
					    cub+="<div class='f31'>제작의뢰 요청 취소<input type='hidden' name='rap_ptnum' value='"+data.rap_ptnum+"' ></div>"
				    	   +"<div class='f32'>상품이름 :"+data.ra_title+"<br>"
		                   +"가격 : "+data.rap_price+	"<input type='hidden' name='rap_price' value='"+data.rap_price+"' >&emsp;&emsp;"    	
				    	   +"아이디 : "+data.rap_mbid_n+"<input type='hidden' name='rap_mbid_n' value='"+data.rap_mbid_n+"'></div>"
				    	   +"<div class='f33'><input type='hidden' name='rap_mbid_w' value='"+data.rap_mbid_w+"'>"
				    	   +"<input type='hidden' name='rap_ranum' value='"+data.rap_ranum+"'>"
				    	   +"<input type='hidden' name='ra_mbid' value='"+data.ra_mbid+"'><hr>"
				    	   +"의뢰 취소 사유<br>" 
				    	   +"<textarea  id='subm' rows='7' cols='50' name='nf_contents'></textarea></div>"
				    	   +"<div class='f6'><input  class='b3' type='submit' value='취소하기'>"
				    	   +"<input class='b3' type='button' id='back' value='돌아가기'></div></div></form>";
				    	  
				    	
				    	  
				    	   
				    	   $('#total').css("display", "inline");
				    	$('#c1').css("display", "inline");
				    	
				    	$('#c1').html(cub);
				    	
				    	 $('#back').click(function () {
					    	  $('#total').css("display", "none");
							  $('#c1').css("display", "none");
								});
				    	 
				    	
				    	 
				    },
				    
				    error:function(error){
				    	alert('정상적인 추천이 실패했습니다.');
				    	console.log(error);
				    }
				 });//end ajax
	}
	 function cencelCheck() {
		   var aa=$("#subm")
				if(aa.val()==""){
					alert("취소 사유를 입력해 주세요!!");
					$("#subm").focus();
					return false;
				}
			 } 	 
	 
function RevMyreview(even) {
	var form = {
			rap_ptnum:even
			 }
	var bb="";
	 $.ajax({
			url: 'boardwrite',
			type:'post',
		    data:JSON.stringify(form),
		    contentType:"application/json; charset=utf-8;",
		    dataType:'json',
		    success:function(data){
		    	
		    	 bb+="<form action='boardapply' method='post' enctype='multipart/form-data' onsubmit='return boardCheck();'>"
		    	   +"<div id='q2'>"
		    	 if(data.ra_oc=="O"){
		    		 bb+="<div class='f1'>공개<input type='hidden' name='ra_oc'></div><br>"   
			    	   }else{
			    		   bb+=+"<div class='f1'>비공개<input type='hidden' name='ra_oc'></div><br>"   
			    	   };
		    	bb+="<h3 class='f3'>수령 확인 및 구매 후기 쓰기</h3><input type='hidden' name='rap_ptnum' value='"+data.rap_ptnum+"' >"
		    	   +"<div class='f2'>상품이름 :"+data.ra_title+"  <input type='button' id='butt' value='추천하기' onclick=\"good('"+data.rap_mbid_w+"')\"></div>"
                   +"<input type='hidden' name='ra_title' value='"+data.ra_title+"' >"
		    	   +"<input type='hidden' name='rap_mbid_w' value='"+data.rap_mbid_w+"')>"
                   +"<input type='hidden' name='rap_price' value='"+data.rap_price+"')>"
		    	   +"<div class='f4'>구매후기 제목 : <input type='text' id='title' class='bd_title' name='bd_title'><br>"
		    	   +"<textarea id='cont' rows='10' cols='70' name='bd_contents' placeholder='고객님들의 소중한 말 한마디가 작가 회원님들의 힘이 됩니다.'></textarea></div>"
		    	   +"<div class='f5'><input type='file' name='bd_imgSysName' id='bd_imgSysName' value='파일 첨부'  onchange='fileChk(this)' multiple>"
		    	   +"<input type='hidden' id='fileCheck' value='0' name='fileCheck'></div><br>"
		    	   +"<div class='f6'><input class='b3' type='submit' value='완료'>"
		    	   +"<input type='button' class='b3' id='backSetp' value='취소'></div></div></form>";
		    	  
		    	$('#total').css("display", "inline");
		    	$('#q1').css("display", "inline");
		    	
		    	$('#q1').html(bb); 
		    	
		    	 $('#backSetp').click(function () {
			    	  $('#total').css("display", "none");
					  $('#q1').css("display", "none");
						});
		    },
		    
		    error:function(error){
		    	alert('정상적인 추천이 실패했습니다.');
		    	console.log(error);
		    }
		 });//end ajax

}//end RevMyreview

function boardCheck() {
	var aa=$("#title");
	var bb=$("#cont");
	var cc=$("#fileCheck");
	if(aa.val()==""){
		alert("제목을 입력해 주세요!!");
		$("#title").focus();
		return false;
	}else if(bb.val()==""){
		alert("내용을 입력해 주세요!!");
		$("#cont").focus();
		return false;
	}else if(cc.val()==0){
		alert("파일을 첨부하세요");
		$("#fileCheck").focus();
		return false;
	}
}

function good(data) {
	var btn = $('#butt');
	 $.ajax({
			url: "goods",
			type:"post",
		    data:{idw:data},
		    success:function(data){
		    	alert('해당 상품을 추천하였습니다.');
		    	console.log("123456"+data);
		    	//btn.disabled = 'disabled'
		    	var bu=document.getElementById('butt');
		    		bu.disabled =true;
		
		    },
		    error:function(error){
		    	alert('정상적인 추천이 실패했습니다.');
		    	console.log(error);
		    }
			 
		 });//end good(ajax)
}//end good
function fileChk(elem) {
	console.dir(elem);
	if(elem.value==""){
		console.log("empty"); 
		$('#fileCheck').val(0); //파일 첨부 안했음
	}else{
		console.log("Notempty")
		$('#fileCheck').val(1);//파일 첨부 했음
	}
}
</script>

</html>
