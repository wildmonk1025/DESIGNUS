<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

<head>

<meta charset="UTF-8">
<title>출품작 판매내역</title>
<style type="text/css">
#mainheader {
	border: 1px solid black;
	width: 1520px;
	height: 170px;
}

#notice {
	border: 1px solid orange;
	position: absolute;
	width: 1100px;
	height: 60px;
	text-align: center;
	left: 531px;
	top: 190px;
	font-size: 100%
}

#point {
	border: 1px solid orange;
	position: absolute;
	width: 300px;
	height: 80px;
	text-align: left;
	left: 100px;
	top: 500px;
	font-size: 20px;
}

#img {
	border: 1px solid orange;
	position: absolute;
	width: 300px;
	height: 310px;
	text-align: left;
	left: 100px;
	top: 178px;
	font-size: 20px;
}

#setp {
	border: 1px solid orange;
	position: relative;
	width: 1100px;
	height: 860px;
	text-align: center;
	left: 528px;
	top: 80px;
	font-size: 100%
}

#setpT {
	border: 1px solid orange;
	height: 800px;
	position: relative;
	top: 10px;
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

#info {
	border: 1px solid orange;
	margin: 0px 10px 10px 10px;
	width: 300px;
	height: 580px;
	font-size: 20px;
	text-align: left;
	float: left;
	position: absolute;
	left: 88px;
	top: 590px;
}

#subb {
	border: 1px solid orange;
	height: 800px;
	position: relative;
	top: 10px;
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
</style>

</head>
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>

<body>
	<div id="mainheader">
		<jsp:include page="main.jsp" />
	</div>
	<div id="total"></div>
	<form action="delinumupload" method="post">

			<div id="l1">

			</div>
		</form>
	<div id="notice">
		<h2>출품작 판매 내역</h2>
		<hr>
	</div>


	<div id="img">
		<h1>프로필사진</h1>
	</div>

	<div id="point">
		<h1>포인트:</h1>
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
	<div id="setp">
		<div id="setpT"></div>
      ${pagMPWing}
	</div>
</body>
<script type="text/javascript">
	var apwList = ${apwList};
	console.log(apwList);
	var main = "";

	for (var i = 0; i < apwList.length; i++) {
		 if (apwList[i].aup_step == 1) {
		main += "<table style=\"border:1px solid orange\" ><tr rowspan=4><td><a href='imgAuction'><img src='/resources/images/"+apwList[i].aui_img+"'/></a>"
				+ "<tr><td>상품번호 :"
				+ apwList[i].aup_ptnum
				+ "</td><td>상품명:"
				+ apwList[i].au_title
				+ "</td></tr>"
				+ "<tr><td colspan='2'>구매 금액 : "
				+ apwList[i].aup_price
				+ "</td></tr>"
				+ "<tr><td colspan='2'>상품 수량 : "
				+ apwList[i].aup_qty + "</td></tr>";
	
			main +="<tr><td colspan='2'><p>작업이 확정된 시점의 요청사항 추가는 추가 요금 및,<br/> 작업 완료일이 늘어날 수 있습니다.</p></td></tr>"
					+ "<tr><td colspan='3'><h3>의뢰결정을 <br/>기다리는 중입니다.</h3></td></tr></table>";

		} else if(apwList[i].aup_step==2){
				main+="<table style=\"border:1px solid orange\"><tr rowspan=4><td><a href='imgAuction'><img src='/resources/images/"+apwList[i].aui_img+"'/></a>"              
			    + "<tr><td>상품번호 :"+apwList[i].aup_ptnum+"</td><td>상품명:"+apwList[i].au_title+"</td></tr>"
			    +"<tr><td colspan='2'>구매 금액 : "+apwList[i].aup_price+"</td></tr>"
			    +"<tr><td colspan='2'>상품 수량 : "+apwList[i].aup_qty+"</td></tr>"
			    +"<tr><td colspan='2'><p>작업이 확정된 시점의 요청사항 추가는 추가 요금 및,<br/> 작업 완료일이 늘어날 수 있습니다.</td></tr>"
			    +"<tr><td colspan='3'><input id='btzsho' type='button' onclick=\"delivery('"+apwList[i].aup_ptnum+"')\" value='배송보내기'/>"
			    +"<input type='button' onclick=\"shocheck('"+apwList[i].aup_ptnum+"')\" value='의뢰인 배송정보'/></td></tr></table>";
			}else if(apwList[i].aup_step==3){
				main+="<table style=\"border:1px solid orange\"><tr rowspan=4><td><a href='imgAuction'><img src='/resources/images/"+apwList[i].aui_img+"'/></a>"              
			    + "<tr><td>상품번호 :"+apwList[i].aup_ptnum+"</td><td>상품명:"+apwList[i].au_title+"</td></tr>"
			    +"<tr><td colspan='2'>구매 금액 : "+apwList[i].aup_price+"</td></tr>"
			    +"<tr><td colspan='2'>상품 수량 : "+apwList[i].aup_qty+"</td></tr>"
			    +"<tr><td colspan='2'><p>작업이 확정된 시점의 요청사항 추가는 추가 요금 및,<br/> 작업 완료일이 늘어날 수 있습니다.</td></tr>"
			    +"<tr><td colspan='3'><h3>수령확인 <br/>대기중</h3></td></tr></table>";
			} else if(apwList[i].aup_step==4){
				main+="<table style=\"border:1px solid orange\"><tr rowspan=4><td><a href='imgAuction'><img src='/resources/images/"+apwList[i].aui_img+"'/></a>"              
			    + "<tr><td>상품번호 :"+apwList[i].aup_ptnum+"</td><td>상품명:"+apwList[i].au_title+"</td></tr>"
			    +"<tr><td colspan='2'>구매 금액 : "+apwList[i].aup_price+"</td></tr>"
			    +"<tr><td colspan='2'>상품 수량 : "+apwList[i].aup_qty+"</td></tr>"
			    +"<tr><td colspan='2'><p>작업이 확정된 시점의 요청사항 추가는 추가 요금 및,<br/> 작업 완료일이 늘어날 수 있습니다.</td></tr>"
			    +"<tr><td colspan='3'><h3>완료</h3></td></tr></table>";
			} 
	}
	console.log(1, main);

	$('#setpT').html(main);

	
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
			    	$('#l1').css("display", "inline");
			    	 /*  if(data.aut_kind=="I"){
				    	   sub+="즉시구매<input type='hidden' name='aut_kind'><br>"   
				    	   }else if(data.aut_kind=="O"){
				    	   sub+=+"낙찰<input type='hidden' name='aut_kind'><br>"   
				    	   }else{
				    	   sub+=+"입찰<input type='hidden' name='aut_kind'><br>" 
				    	   };
			    	sub+="<h2>운송장 입력</h2><input type='hidden' name='aup_ptnum' value='"+data.aup_ptnum+"' ><br>"
			    	   +"상품이름 :"+data.au_title+"<br>"
	                   +"가격 : "+data.aup_price+	"<input type='hidden' name='aup_price' value='"+data.aup_price+"' ><br>"    	
			    	   +"아이디 : "+data.aup_mbid_n+"<input type='hidden' name='aup_mbid_n' value='"+data.aup_mbid_n+"'><br><hr>"
			    	   +"운송장번호<br/><input type='text' name='aup_track'><br>"
			    	   +"<input type='submit' value='보내기'>"
			    	   +"<input type='button' id='back' value='취소'>";
			    	  
			    	
			    	
			    	$('#l1').html(sub); */
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
			    	  if(data.aut_kind=="I"){
				    	   sub+="즉시구매<input type='hidden' name='aut_kind'><br>"   
				    	   }else if(data.aut_kind=="O"){
				    	   sub+=+"낙찰<input type='hidden' name='aut_kind'><br>"   
				    	   }else{
				    	   sub+=+"입찰<input type='hidden' name='aut_kind'><br>" 
				    	   };
			    	sub+="<h2>운송장 입력</h2><input type='hidden' name='aup_ptnum' value='"+data.aup_ptnum+"' ><br>"
			    	   +"상품이름 :"+data.au_title+"<br>"
	                   +"가격 : "+data.aup_price+	"<input type='hidden' name='aup_price' value='"+data.aup_price+"' ><br>"    	
			    	   +"아이디 : "+data.aup_mbid_n+"<input type='hidden' name='aup_mbid_n' value='"+data.aup_mbid_n+"'><br><hr>"
			    	   +"운송장번호<br/><input type='text' name='aup_track'><br>"
			    	   +"<input type='submit' value='보내기'>"
			    	   +"<input type='button' id='back' value='취소'>";
			    	  
			    	
			    	
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
	});
	$("#back").click(function() {
		$("#total").css("display", "none");
		$("#l1").css("display", "none");
	});
</script>

</html>