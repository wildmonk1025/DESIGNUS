<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
#leftmain {
margin: 15px 0px 0px 0px;
	width: 310px;
	height: 900x;
	/*border: 1px solid black;*/
	float: left;
}
    #point {
	border: 1px solid orange;
	margin: 15px 10px 10px 10px;
	width: 280px;
	height: 60px;
	text-align: left;
	font-size: 30px;
	float: left;
}

#img {
	border: 1px solid orange;
	margin:10px 10px 10px 10px;
	width: 280px;
	height: 290px;
	text-align: left;
	font-size: 15px;
	float: left;
}
#info {
	border: 1px solid orange;
	margin: 0px 10px 10px 10px;
	width: 280px;
	height: 552px;
	font-size: 20px;
	text-align: left;
	float: left;
}

</style>
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
</head>
<body>
        <div id="leftmain">
			<div id="img">
			 <!-- <h1>프로필사진</h1> -->
			</div>

			<div id="point">
				<!-- <h1>포인트:</h1> -->
			</div>

			<div id="info">
				<table width="1000">

					<tr id="m1">
						<td style="font-size: 27px"><a href="historylist?list=rev">제작의뢰
								내역</a></td>
					</tr>
					<tr id="m2">
						<td style="font-size: 27px"><a href="historylist?list=revre">제작의뢰
								접수내역</a></td>
					</tr>
					<tr id="m3">
						<td style="font-size: 27px"><a href="historylist?list=auc">출품작
								구매 내역</a></td>
					</tr>
					<tr id="m4">
						<td style="font-size: 27px"><a href="historylist?list=aucre">출품작
								판매 내역</a></td>
					</tr>
					<tr id="m5">
						<td style="font-size: 27px"><a href="historylist?list=spon">후원진행
								내역</a></td>
					</tr>
					<tr id="m6">
						<td style="font-size: 27px"><a href="historylist?list=sponre">후원요청
								내역</a></td>
					</tr>
					<tr id="m7">
						<td style="font-size: 27px"><a href="historylist?list=basket">꿍
								내역</a></td>
					</tr>
					<tr id="m8">
						<td style="font-size: 27px"><a href="privacyedit">개인정보 수정</a></td>
					</tr>
					<tr id="m9">
						<td style="font-size: 27px"><a href="memberout">회원탈퇴 신청</a></td>
					</tr>
					<tr id="m10">
						<td style="font-size: 27px"><a href="nortowri">작가전환 신청</a></td>
					</tr>
					<tr id="m11">
						<td style="font-size: 27px"><a href="questionlist">1:1문의리스트</a></td>
					</tr>
				</table>
			</div>
		</div>
</body>
<script type="text/javascript">
   var grade= "${grade}";
   var id="${id}";
   console.log(grade);
  if(grade=="N" || grade=="X"){
	  $("#m2").hide();
	  $("#m4").hide();
	  $("#m6").hide();
  }else{
	  $("#m10").hide();
  }
  
  $(document).ready(function() {
	 	   var aa="";
	 	   var bb=""
	       $.ajax({
       
				url: 'mem',
				type:'post',
			    contentType:"application/json; charset=utf-8;",
			    dataType:'json',
			    success:function(data){
			    	
			    	aa+="<h2>프로필 사진</h2><br>"+"<img src='"+data.mb_profile+"'>";
			    	bb+="포인트:"+data.mb_point;
			    	$("#img").html(aa)
			    	$("#point").html(bb)
			    	
			    },
			    
			    error:function(error){
			    	alert('실패ㅠㅠ');
			    }
			 });//end ajax 
	  });

  
  
  </script>
</html>