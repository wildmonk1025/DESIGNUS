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
</style>

</head>
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>

<body>
	<div id="mainheader">
		<jsp:include page="main.jsp" />
	</div>
<div id="total"></div>
<div id="r1"></div>
<div id="c1"></div>
	<div id="mypagemain">

		<div id="leftmain">
			<div id="img">
				<h1>프로필사진</h1>
			</div>

			<div id="point">
				<h1>포인트:</h1>
			</div>

			<div id="info">
				<table width="1000">

					<tr>
						<td style="font-size: 27px"><a href="historylist?list=rev">제작의뢰
								내역</a></td>
					</tr>
					<tr>
						<td style="font-size: 27px"><a href="historylist?list=revre">제작의뢰
								접수내역</a></td>
					</tr>
					<tr>
						<td style="font-size: 27px"><a href="historylist?list=auc">출품작
								구매 내역</a></td>
					</tr>
					<tr>
						<td style="font-size: 27px"><a href="historylist?list=aucre">출품작
								판매 내역</a></td>
					</tr>
					<tr>
						<td style="font-size: 27px"><a href="historylist?list=spon">후원진행
								내역</a></td>
					</tr>
					<tr>
						<td style="font-size: 27px"><a href="historylist?list=sponre">후원요청
								내역</a></td>
					</tr>
					<tr>
						<td style="font-size: 27px"><a href="historylist?list=basket">꿍
								내역</a></td>
					</tr>
					<tr>
						<td style="font-size: 27px"><a href="privacyedit">개인정보 수정</a></td>
					</tr>
					<tr>
						<td style="font-size: 27px"><a href="memberout">회원탈퇴 신청</a></td>
					</tr>
					<tr>
						<td style="font-size: 27px"><a href="nortowri">작가전환 신청</a></td>
					</tr>
				</table>
			</div>
		</div>
		<div id="rightmain">
			<!-- <div id="notice">
				<h2>제작의뢰내역</h2>
			</div> -->
			<!-- <div id="renking">
				<h1>문의 구매후기</h1>
				<div class="bt01">
					<button id="service" class="bt">고객센터문의</button>
					<button id="review" class="bt">구매후기쓰기</button>
				</div>
			</div> -->

			<!-- <div id="auction">
				<h1>배송정보입력</h1>
				<div class="bt02">
					<button id="action" class="bt">제작의뢰요청</button>
					<button id="cancel" class="bt">제작의뢰취소</button>
				</div>
			<!-- </div> -->
			<!--  <div id="spon">
				<h1>배송정보</h1>
				<div class="bt03">
					<h4>배송번호</h4>
					<h1>완료</h1>
				</div>
			</div> -->
		<!-- 	<div id="lightbox-shadow">

				<div id="lightbox">
					<h1>배송정보입력</h1>
					<button>요청</button>
					<button type="button"
						onclick="location.href='revAuctionMyOrderList.jsp' ">취소</button>
				</div>
			</div> -->
			<!-- <div id="lightbox-shadow1">

				<div id="lightbox1">
					<h1>제작의뢰 요청 취소</h1>
					<button>취소하기</button>
					<button type="button"
						onclick="location.href='revAuctionMyOrderList.jsp' ">돌아가기</button>
				</div>
			</div> -->
			<!-- <div id="lightbox-shadow2">

				<div id="lightbox2">
					<h1>제작의뢰 관련1:1문의</h1>
					<button>문의하기</button>
					<button type="button"
						onclick="location.href='revAuctionMyOrderList.html' ">취소</button>
				</div>
			</div> -->
			<!-- <div id="lightbox-shadow3">

				<div id="lightbox3">
					<h1>수령확인 맟 구매후기</h1>
					<button>완료</button>
					<button type="button"
						onclick="location.href='revAuctionMyOrderList.html' ">취소</button>
				</div>
			</div> -->
			
			${ROpaging}
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
		    + "상품번호 :"+revList[i].rap_ptnum+"</br>상품명:"+revList[i].ra_title+"</br>"
		    +"구매 금액 : "+revList[i].rap_price+"</br>"
		    if(revList[i].ra_oc=="O"){
			     main +="구매 종류 : 공개</br>"	
				}else{
				 main +="구매 종류 : 비공개</br>"	
				}       
		    main +="<p>작업이 확정된 시점의 요청사항 추가는 추가 요금 및,<br/> 작업 완료일이 늘어날 수 있습니다.</br>"
		    	 +"<h3>완료</h3></div>";
		}  
}


$('#rightmain').html(main);
  
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
