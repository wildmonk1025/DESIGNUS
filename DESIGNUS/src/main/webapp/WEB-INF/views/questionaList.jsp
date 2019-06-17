<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
#notice {
	padding-top: 5px;
	margin: 10px;
	width: 1080px;
	height: 50px;
	text-align: center;
	font-size: 20px;
	float: left;
}
#renking {
	border: 1px solid orange;
	margin: 0px 10px 10px 10px;
	width: 1080px;
	height: 860px;
	text-align: center;
	font-size: 20px;
	float: left;
}
</style>
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
</head>
<body>
<div id="mypagemain">
		<div id="mainheader">
			<jsp:include page="main.jsp" />
		</div>

		<jsp:include page="Mapagemain.jsp" />


		<div id="rightmain">
			<div id="notice"><h2>나의 1:1문의 리스트</h2><hr></div>
			
			<div id="renking">
				
			</div>

		</div>
	</div>
</body>
<script type="text/javascript">
  var aqgList=${aqgList}
  console.log(aqgList);
  var vol="";
  
      vol+="<table><tr><th>질문 번호</th><th>질문 유형</th><th>제목</th><th>아이디</th><th>등록일</th></tr>"
 for(var i=0; i<aqgList.length;i++ ){
	 vol+="<tr><td>"+aqgList[i].aq_num+"</td><td>["+aqgList[i].aq_tye+"]</td><td><a href='questionread?aq_num="+aqgList[i].aq_num+"'>"+aqgList[i].aq_title+"</a></td><td>"+aqgList[i].aq_mbid+"</td><td>"+aqgList[i].aq_date+"</td></tr>"
 }
      vol+="</table>";
     $("#renking").html(vol);
</script>
</html>