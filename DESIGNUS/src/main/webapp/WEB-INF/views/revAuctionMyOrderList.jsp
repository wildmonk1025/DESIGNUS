<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>

<meta charset="UTF-8">
<title>본인의 제작의뢰 내역</title>
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
	height: 250px;
	text-align: left;
	font-size: 20px;
	float: left;
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

#renking {
	border: 1px solid orange;
	margin: 0px 10px 10px 10px;
	width: 1080px;
	height: 200px;
	text-align: center;
	font-size: 20px;
	float: left;
}

#auction {
	border: 1px solid orange;
	margin: 0px 10px 10px 10px;
	width: 1080px;
	height: 300px;
	text-align: center;
	font-size: 20px;
	float: left;
}

#spon {
	border: 1px solid orange;
	margin: 0px 10px 10px 10px;
	width: 1080px;
	height: 300px;
	float: left;
	font-size: 20px;
	text-align: center;
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

#leftmain {
	width: 310px;
	height: 950x;
	border: 1px solid black;
	float: left;
}

#rightmain {
	width: 1210px;
	height: 950px;
	border: 1px solid black;
	float: left;
}

#main {
	width: 1520px;
	height: 170px;
	text-align: center;
}

.bt01 {
	border: none;
	float: right;
	margin-right: 30px;
	width: 100px;
	height: 80px;
}

.bt02 {
	border: none;
	float: right;
	margin-right: 30px;
	margin-top: 50px;
	width: 100px;
	height: 80px;
}

.bt03 {
	float: right;
	margin-right: 30px;
	margin-top: 50px;
	width: 100px;
	height: 80px;
}

.bt:hover { 
	color: white;
}

.bt:active {
	color: yellow;
}

a {
	color: red
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

#lightbox3 {
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
#total {
	position : absolute;
	width: 100%;
	height: 200%;
	background-color: black;
	z-index: 1001;
	opacity: 0.75;
	display: none;
}
#r1 {
position: absolute;
	width: 400px;
	height: 330px;
	border-radius: 100px;
	z-index: 1002;
	padding-top: 70px;
	text-align: center;
	background-color: #FFE08C;
	display: none;
	font-size: 22px;
	top : 500px;
	left: 900px;

}
#c1{
position: absolute;
	width: 400px;
	height: 370px;
	border-radius: 100px;
	z-index: 1002;
	padding-top: 70px;
	text-align: center;
	background-color: #FFE08C;
	display: none;
	font-size: 22px;
	top : 500px;
	left: 900px;
}
#pageing{
   position: absolute;
	top: 1050px;
	left: 800px;
}
#q1{
position: absolute;
	width: 600px;
	height: 570px;
	border-radius: 100px;
	z-index: 1002;
	padding-top: 70px;
	text-align: center;
	background-color: #FFE08C;
	display: none;
	font-size: 22px;
	top : 500px;
	left: 900px;
}
</style>

</head>
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>

<body>
	<div id="mainheader">
		<jsp:include page="main.jsp" />
	</div>
	<div id="leftmain">

			<jsp:include page="Mapagemain.jsp" />
				
			</div>
<div id="total"></div>
<div id="r1"></div>
<div id="c1"></div>
<div id="q1"></div>
	

		
		
		<div id="rightmain">
		<div id="revA"></div>
		
			
			<div id="pageing">${ROpaging}</div>
		</div>
	</div>
</body>
<script type="text/javascript">
var revList = ${revList};
console.log(revList);

var main = "";

for (var i = 0; i < revList.length; i++) {
	 if (revList[i].rap_step == 1) {
	main += "<div id='notice'><a href='imgRevO'><img src='/resources/images/"+revList[i].ra_image+"'/></a></br>"
			+ "상품번호 :"
			+ revList[i].rap_ptnum+"</br>"
			+ "상품명:"
			+ revList[i].ra_title+"</br>"
			+ "구매 금액 : "
			+ revList[i].rap_price+"</br>"
			+ "구매 종류 : "
			if(revList[i].ra_oc=="O"){
		     main +="공개</br>"	
			}else{
			 main +="비공개</br>"	
			}            
		main +="<p>작업이 확정된 시점의 요청사항 추가는 추가 요금 및,<br/> 작업 완료일이 늘어날 수 있습니다.</br>"
			 +"<input id='btzRevM' type='button' onclick=\"javascript:requested('"+revList[i].rap_ptnum+"')\" value='요청'/>"
             +"<input type='button' onclick=\"javascript:ravcancel('"+revList[i].rap_ptnum+"')\" value='취소'/>"
             +"</div>";
             
	} else if(revList[i].rap_step==2){
			main+="<div id='notice'><a href='imgRevO'><img src='/resources/images/"+revList[i].ra_image+"'/></a></br>"              
		    + "상품번호 :"+revList[i].rap_ptnum+"</br>상품명:"+revList[i].ra_title+"</br>"
		    +"구매 금액 : "+revList[i].rap_price+"</br>"
		    if(revList[i].ra_oc=="O"){
			     main +="구매 종류 : 공개</br>"	
				}else{
				 main +="구매 종류 : 비공개</br>"	
				}            
		    main +="<h3>배송대기중...</h3></div>";
		    
		}else if(revList[i].rap_step==3){
			main+="<div id='notice'><a href='imgAuction'><img src='/resources/images/"+revList[i].ra_image+"'/></a></br>"              
		    + "상품번호 :"+revList[i].rap_ptnum+"</br>상품명:"+revList[i].ra_title+"</br>"
		    +"구매 금액 : "+revList[i].rap_price+"</br>"
		    if(revList[i].ra_oc=="O"){
			     main +="구매 종류 : 공개</br>"	
				}else{
				 main +="구매 종류 : 비공개</br>"	
				}           
		    main +="<input type='button' onclick=\"btzRevMy('"+revList[i].rap_ptnum+"')\" value='고객센터 문의'/>"
                 +"<input type='button' onclick=\"RevMyreview('"+revList[i].rap_ptnum+"')\" value='수령확인구매후기 쓰기'/></div>";
		    
			
		} else if(revList[i].rap_step==4){
			main+="<div id='notice'><a href='imgAuction'><img src='/resources/images/"+revList[i].ra_image+"'/></a></br>"              
		    +"상품번호 :"+revList[i].rap_ptnum+"</br>상품명:"+revList[i].ra_title+"</br>"
		    +"구매 금액 : "+revList[i].rap_price+"</br>";
		    if(revList[i].ra_oc=="O"){
			     main +="구매 종류 : 공개</br>"	
				}else{
				 main +="구매 종류 : 비공개</br>"	
				}       
		    main +="<p>작업이 확정된 시점의 요청사항 추가는 추가 요금 및,<br/> 작업 완료일이 늘어날 수 있습니다.</br>"
		    	 +"<h3>완료</h3></div>";
		}else{
			main+="<div id='notice'><a href='imgRevO'><img src='/resources/images/"+revAList[i].ra_image+"'/></a></br>"              
		    + "상품번호 :"+revAList[i].rap_ptnum+"</br>상품명:"+revAList[i].ra_title+"</br>"
		    +"구매 금액 : "+revAList[i].rap_price+"</br>"
		    if(revAList[i].ra_oc=="C"){
			     main +="구매 종류 : 비공개</br>"	
				}            
		    main +="비공개 제작의뢰 요청중입니다... "
		}    
}


$('#revA').html(main);
  
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
			    	alert('해당 상품을 추천하였습니다.');
			    	console.log("1234567"+data);
			    	   sub+="<form action='requestby' method='post'>"
			    	      +"<div id='r2'>"+data.rap_mbid_w+"님에게 의뢰 요청(배송정보입력)<br>"
			    	 if(data.ra_oc=="O"){
				    	   sub+="공개<input type='hidden' name='ra_oc'><br>"   
				    	   }else{
				    	   sub+=+"비공개<input type='hidden' name='ra_oc'><br>"   
				    	   };
			    	sub+="거래번호 :"+data.rap_ptnum+"<input type='hidden' name='rap_ptnum' value='"+data.rap_ptnum+"' ><br>"
			    	   +"상품이름 :"+data.ra_title+"<br>"
	                   +"가격 : "+data.rap_price+	"<input type='hidden' name='rap_price' value='"+data.rap_price+"' ><br>"    	
			    	   +"아이디 : "+data.rap_mbid_n+"<input type='hidden' name='rap_mbid_n' value='"+data.rap_mbid_n+"'><br><hr>"
			    	   +"이름 :<input type='text' name='rap_name'><br>"
			    	   +"주소 :<input type='text' name='rap_address'><br>"
			    	   +"연락처: <input type='text' name='rap_phone'><br>"
			    	   +"<input type='submit' value='요청'><br>"
			    	   +"<input type='button' id='back' value='취소'></div></form>";
			    	  
			    	$('#total').css("display", "inline");
			    	$('#r1').css("display", "inline");
			    	
			    	$('#r1').html(sub);
			    },
			    
			    error:function(error){
			    	alert('정상적인 추천이 실패했습니다.');
			    	console.log(error);
			    }
			 });//end ajax
		
	}//end sho	

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
				    	alert('해당 상품을 추천하였습니다.');
				    	console.log("1234567"+data);
				    	cub+="<form action='revaucinfocancel' method='post'>"
				    	      +"<div id='c2'>제작의뢰 요청 취소"
				    	 if(data.ra_oc=="O"){
				    		 cub+="공개<input type='hidden' name='ra_oc'><br>"   
					    	   }else{
					    		   cub+=+"비공개<input type='hidden' name='ra_oc'><br>"   
					    	   };
					    cub+="<input type='hidden' name='rap_ptnum' value='"+data.rap_ptnum+"' >"
				    	   +"상품이름 :"+data.ra_title+"<br>"
		                   +"가격 : "+data.rap_price+	"<input type='hidden' name='rap_price' value='"+data.rap_price+"' ><br>"    	
				    	   +"아이디 : "+data.rap_mbid_n+"<input type='hidden' name='rap_mbid_n' value='"+data.rap_mbid_n+"'><br>"
				    	   +"<input type='hidden' name='rap_mbid_w' value='"+data.rap_mbid_w+"'>"
				    	   +"<input type='hidden' name='rap_ranum' value='"+data.rap_ranum+"'>"
				    	   +"<input type='hidden' name='ra_mbid' value='"+data.ra_mbid+"'><hr>"
				    	   +"의뢰 취소 사유<br>" 
				    	   +"<textarea rows='7' cols='40' name='nf_contents'></textarea><br>"
				    	   +"<input type='submit' value='취소하기'>"
				    	   +"<input type='button' id='back' value='돌아가기'></div></form>";
				    	  
				    	$('#total').css("display", "inline");
				    	$('#c1').css("display", "inline");
				    	
				    	$('#c1').html(cub);
				    },
				    
				    error:function(error){
				    	alert('정상적인 추천이 실패했습니다.');
				    	console.log(error);
				    }
				 });//end ajax
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
		    	alert('앙앙!');
		    	console.log("1234567"+data.ra_oc);
		    	 bb+="<form action='boardapply' method='post' enctype='multipart/form-data'>"
		    	   +"<div id='q2'>"
		    	 if(data.ra_oc=="O"){
		    		   +"공개<input type='hidden' name='ra_oc'><br>"   
			    	   }else{
			    		   bb+=+"비공개<input type='hidden' name='ra_oc'><br>"   
			    	   };
		    	bb+="<h2>수령 확인 및 <br>구매 후기 쓰기</h2><br/></hr><input type='hidden' name='rap_ptnum' value='"+data.rap_ptnum+"' ><br>"
		    	   +"상품이름 :"+data.ra_title+"<input type='button' id='butt' value='추천하기' onclick=\"good('"+data.rap_mbid_w+"')\"><br><hr>"
                   +"<input type='hidden' name='rap_mbid_w' value='"+data.rap_mbid_w+"')>"
                   +"<input type='hidden' name='rap_price' value='"+data.rap_price+"')>"
		    	   +"구매후기 제목 :<input type='text' name='bd_title'><br>"    	
		    	   +"내용</br>"
		    	   +"<textarea rows='10' cols='70' name='bd_contents'></textarea><br>"
		    	   +"<input type='file' name='bd_imgSysName' id='bd_imgSysName' value='파일 첨부'  onchange='fileChk(this)' multiple><br>"
		    	   +"<input type='hidden' id='fileCheck' value='0' name='fileCheck'><br>"
		    	   +"<input type='submit' value='완료'>"
		    	   +"<input type='button' id='backSetp' value='취소'></div></form>";
		    	  
		    	$('#total').css("display", "inline");
		    	$('#q1').css("display", "inline");
		    	
		    	$('#q1').html(bb); 
		    },
		    
		    error:function(error){
		    	alert('정상적인 추천이 실패했습니다.');
		    	console.log(error);
		    }
		 });//end ajax

}//end RevMyreview
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
}//end fileChk
	$("#action").click(function() {
		$('#lightbox-shadow').css("display", "inline")
		$('#lightbox').css("display", "inline")
	});
	$("#cancel").click(function() {
		$('#lightbox-shadow1').css("display", "inline")
		$('#lightbox1').css("display", "inline")
	});
	$("#service").click(function() {
		$('#lightbox-shadow2').css("display", "inline")
		$('#lightbox2').css("display", "inline")
	});
	$("#review").click(function() {
		$('#lightbox-shadow3').css("display", "inline")
		$('#lightbox3').css("display", "inline")
	});
</script>

</html>
