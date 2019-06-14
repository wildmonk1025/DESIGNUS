<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

<head>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
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
	border: 1px solid orange;
	width: 1080px;
	height: 100px;
	text-align: center;
	font-size: 20px;
	float: left;
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

#info {
	border: 1px solid orange;
	margin: 0px 10px 10px 10px;
	width: 280px;
	height: 580px;
	font-size: 20px;
	text-align: left;
	float: left;
}

/*#renking {
            border: 1px solid orange;
            width: 1100px;
            height: 230px;
            text-align: center;
            left: 611px;
            position: absolute;
            top: 510px;

        }*/
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

#mainheader {
	border: 1px solid black;
	width: 1520px;
	height: 170px;
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
#l3{
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
	top : 500px;
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
	position : absolute;
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
	width: 1530px;
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

#stepp {
	border: 1px solid black;
	margin: 10px;
	hieght: 50px;
	width: 120px;
	float: right;
}
</style>

</head>
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>

<body>
	<div id="total"></div>
	<form action="aucapply" method="post">
	<div id="l1">
		
		  </div>
	</form>
	<form action="reviewBoardWrite" method="post" enctype="multipart/form-data">
	 <div id="l3"></div>
	</form>
	<div id="mainheader">
	
		<jsp:include page="main.jsp" />
	</div>


	<div id="mypagemain">
		<div id="leftmain">
			<div id="info">
			<jsp:include page="Mapagemain.jsp" />
				
			</div>
		</div>
		<div id="rightmain">
			<div id="notice">
				<h2>출품작 구매 내역</h2>
				<hr>
			
			<div id="setp">
				<div id="setpT">
				</div>
				${MPpaging}
				</div>

				</div>
				
			</div>
		</div>
	
</body>
<script>

var apList = ${apList};
console.log(apList);

var main = "";

for (var i = 0; i < apList.length; i++) {
	 if (apList[i].aup_step == 1) {
	main += "<table style=\"border:1px solid orange\" ><tr rowspan=4><td><a href='imgAuction'><img src='/resources/images/"+apList[i].aui_img+"'/></a>"
			+ "<tr><td>상품번호 :"
			+ apList[i].aup_ptnum
			+ "</td><td>상품명:"
			+ apList[i].au_title
			+ "</td></tr>"
			+ "<tr><td colspan='2'>구매 금액 : "
			+ apList[i].aup_price
			+ "</td></tr>"
			+ "<tr><td colspan='2'>상품 수량 : "
			+ apList[i].aup_qty + "</td></tr>"
            +"<tr><td colspan='2'><p>작업이 확정된 시점의 요청사항 추가는 추가 요금 및,<br/> 작업 완료일이 늘어날 수 있습니다.</td></tr>";
            
		main +="<tr><td colspan='3'><input id='btzRevM' type='button' onclick=\"javascript:shippingInfo('"+apList[i].aup_ptnum+"')\" value='배송정보입력'/>"
             +"<input type='button' onclick=\"location.href='auccancel?aup_ptnum="+apList[i].aup_ptnum+"&aup_ranum="+apList[i].aup_ranum+"&aup_mbid_n="+apList[i].aup_mbid_n+"&aut_date="+apList[i].aut_date+"'\" value='취소'/></td></tr></table>";
             
	} else if(apList[i].aup_step==2){
			main+="<table style=\"border:1px solid orange\"><tr rowspan=4><td><a href='imgAuction'><img src='/resources/images/"+apList[i].aui_img+"'/></a>"              
		    + "<tr><td>상품번호 :"+apList[i].aup_ptnum+"</td><td>상품명:"+apList[i].au_title+"</td></tr>"
		    +"<tr><td colspan='2'>구매 금액 : "+apList[i].aup_price+"</td></tr>"
		    +"<tr><td colspan='2'>상품 수량 : "+apList[i].aup_qty+"</td></tr>"
		    +"<tr><td colspan='3'><h3>배송대기중...</h3></td></tr></table>";
		    
		}else if(apList[i].aup_step==3){
			main+="<table style=\"border:1px solid orange\"><tr rowspan=4><td><a href='imgAuction'><img src='/resources/images/"+apList[i].aui_img+"'/></a>"              
		    + "<tr><td>상품번호 :"+apList[i].aup_ptnum+"</td><td>상품명:"+apList[i].au_title+"</td></tr>"
		    +"<tr><td colspan='2'>구매 금액 : "+apList[i].aup_price+"</td></tr>"
		    +"<tr><td colspan='2'>상품 수량 : "+apList[i].aup_qty+"</td></tr>"
		    +"<tr><td colspan='3'><input type='button' onclick=\"btzRevQ('"+apList[i].aup_ptnum+"')\" value='고객센터 문의'/>"
            +"<input type='button' onclick=\"review('"+apList[i].aup_ptnum+"')\" value='수령확인구매후기 쓰기'/></td></tr></table>";
		    
			
		} else if(apList[i].aup_step==4){
			main+="<table style=\"border:1px solid orange\"><tr rowspan=4><td><a href='imgAuction'><img src='/resources/images/"+apList[i].aui_img+"'/></a>"              
		    + "<tr><td>상품번호 :"+apList[i].aup_ptnum+"</td><td>상품명:"+apList[i].au_title+"</td></tr>"
		    +"<tr><td colspan='2'>구매 금액 : "+apList[i].aup_price+"</td></tr>"
		    +"<tr><td colspan='2'>상품 수량 : "+apList[i].aup_qty+"</td></tr>"
		    +"<tr><td colspan='2'><p>작업이 확정된 시점의 요청사항 추가는 추가 요금 및,<br/> 작업 완료일이 늘어날 수 있습니다.</td></tr>"
		    +"<tr><td colspan='3'><h3>완료</h3></td></tr></table>";
		} 
}


$('#setpT').html(main);

function shippingInfo(even) {
	
	var form = {
		aup_ptnum:even
		 }
	var sub="";
	 $.ajax({

			url: 'enter',
			type:'post',
		    data:JSON.stringify(form),
		    contentType:"application/json; charset=utf-8;",
		    dataType:'json',
		    success:function(data){
		    	alert('해당 상품을 추천하였습니다.');
		    	console.log("1234567"+data.aup_ptnum);
		    	 if(data.aut_kind=="I"){
			    	   sub+="즉시구매<input type='hidden' name='aut_kind'><br>"   
			    	   }else if(data.aut_kind=="O"){
			    	   sub+=+"낙찰<input type='hidden' name='aut_kind'><br>"   
			    	   }else{
			    	   sub+=+"입찰<input type='hidden' name='aut_kind'><br>" 
			    	   };
		    	sub+="거래번호 :"+data.aup_ptnum+"<input type='hidden' name='aup_ptnum' value='"+data.aup_ptnum+"' ><br>"
		    	   +"상품이름 :"+data.au_title+"<br>"
                   +"가격 : "+data.aup_price+	"<input type='hidden' name='aup_price' value='"+data.aup_price+"' ><br>"    	
		    	   +"아이디 : "+data.aup_mbid_n+"<input type='hidden' name='aup_mbid_n' value='"+data.aup_mbid_n+"'><br>"
		    	   +"이름 :<input type='text' name='aup_name'><br>"
		    	   +"주소 :<input type='text' name='aup_address'><br>"
		    	   +"연락처: <input type='text' name='aup_phone'><br>"
		    	   +"<input type='submit' value='요청'><br>"
		    	   +"<input type='button' id='back' value='취소'>";
		    	  
		    	$('#total').css("display", "inline");
		    	$('#l1').css("display", "inline");
		    	
		    	$('#l1').html(sub);
		    },
		    
		    error:function(error){
		    	alert('정상적인 추천이 실패했습니다.');
		    	console.log(error);
		    }
		 });//end ajax
	
}//end sho

function review(even) {
	
	var form = {
			aup_ptnum:even
			 }
	var bb="";
	 $.ajax({
			url: 'reviewboard',
			type:'post',
		    data:JSON.stringify(form),
		    contentType:"application/json; charset=utf-8;",
		    dataType:'json',
		    success:function(data){
		    	alert('해당 상품을 추천하였습니다.');
		    	console.log("1234567"+data.aup_ptnum);
		    	 if(data.aut_kind=="I"){
			    	   bb+="즉시구매<input type='hidden' name='aut_kind'><br>"   
			    	   }else if(data.aut_kind=="O"){
			    	   bb+=+"낙찰<input type='hidden' name='aut_kind'><br>"   
			    	   }else{
			    	   bb+=+"입찰<input type='hidden' name='aut_kind'><br>" 
			    	   };
		    	bb+="<h2>수령 확인 및구매 후기 쓰기</h2><br/></hr><input type='hidden' name='aup_ptnum' value='"+data.aup_ptnum+"' ><br>"
		    	   +"상품이름 :"+data.au_title+"<input type='button' id='butt' value='추천하기' onclick=\"good('"+data.au_mbid_w+"')\"><br><hr>"
                   +"<input type='hidden' name='au_mbid_w' value='"+data.au_mbid_w+"')>"
                   +"<input type='hidden' name='aup_price' value='"+data.aup_price+"')>"
		    	   +"구매후기 제목 :<input type='text' name='bd_title'><br>"    	
		    	   +"내용</br>"
		    	   +"<textarea rows='10' cols='70' name='bd_contents'></textarea><br>"
		    	   +"<input type='file' name='bd_imgSysName' id='bd_imgSysName' value='파일 첨부'  onchange='fileChk(this)' multiple><br>"
		    	   +"<input type='hidden' id='fileCheck' value='0' name='fileCheck'><br>"
		    	   +"<input type='submit' value='완료'>"
		    	   +"<input type='button' id='backSetp' value='취소'>";
		    	  
		    	$('#total').css("display", "inline");
		    	$('#l3').css("display", "inline");
		    	
		    	$('#l3').html(bb);
		    },
		    
		    error:function(error){
		    	alert('정상적인 추천이 실패했습니다.');
		    	console.log(error);
		    }
		 });//end ajax
}//end review
$('#setpT').html(main);
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


$("#total").click(function() {
	$("#total").css("display", "none");
	$("#l1").css("display", "none");
}); // end total
$("#back").click(function() {
	$("#total").css("display", "none");
	$("#l1").css("display", "none");
}); //end back

$("#review").click(function() {
	$('#total').css("display", "inline")
	$('#Q1').css("display", "inline")
});//end review
$("#total").click(function() {
	$("#total").css("display", "none");
	$("#Q1").css("display", "none");
});// end total
$("#backSetp").click(function() {
	$("#total").css("display", "none");
	$("#Q1").css("display", "none");
});//end backSetp	

	
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
</script>

</html>
