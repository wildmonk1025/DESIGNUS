<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
#main {
	width: 1518px;
	height: 170px;
	position: relative;
}

#mainheader {
	border: 1px solid black;
	width: 1520px;
	height: 170px;
	position: fixed;
	background-color: white;
}
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
	margin-top:50px;
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



#mypagemain {
	width: 1518px;
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
#vvo{
margin-left:50px;
 margin-top:30px;
width: 1000px;
}
#gay{
 color: #D5D5D5;
}
#sixth{
 position: absolute;
  top: 1130px;
  left: 1150px;  
}
</style>

</head>
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>

<body>
	
		<div id="main">
			<div id="mainheader">
			<jsp:include page="main.jsp" />
			</div>
		</div>
     
     <div id="mypagemain">
		<jsp:include page="Mapagemain.jsp" />


		<div id="rightmain">
			<div id="notice">
			<h3	>나의 1:1 문의리스트</h3>
			 <hr>
			</div>
			
			<div id="renking">
			 
				
			</div>
			<div id="spon"> 
		
			</div>
            <div id="sixth">${Aqpaging}</div>
		</div>
		<div id="footer">
		<jsp:include page="footer.jsp" />
		</div>
	</div>
</body>
<script type="text/javascript">
// <td>"+aqgList[i].aq_mbid+"</td><td>"+aqgList[i].aq_date+"</td><td>"+${msg}+"</td></tr>"
  var aqgList=${aqgList}
  console.log(aqgList);
  var vol="";
  
   vol+="<table id='vvo' border= 1px solid black><tr><th>질문 번호</th><th>질문 유형</th><th>제목</th><th>아이디</th><th>등록일</th><th>처리여부</th></tr>"
 for(var i=0; i<aqgList.length;i++ ){
	 if(aqgList[i].abc=="처리 완료"){
	 vol+="<tr id='gay'><td>"+aqgList[i].aq_num+"</td><td>["+aqgList[i].aq_tye+"]</td><td><a href='questionread?aq_num="+aqgList[i].aq_num+"'>"+aqgList[i].aq_title+"</a></td><td>"+aqgList[i].aq_mbid+"</td><td>"+aqgList[i].aq_date+"</td><td>"+aqgList[i].abc+"</td></tr>"
  }else{
	  vol+="<tr><td>"+aqgList[i].aq_num+"</td><td>["+aqgList[i].aq_tye+"]</td><td><a href='questionread?aq_num="+aqgList[i].aq_num+"'>"+aqgList[i].aq_title+"</a></td><td>"+aqgList[i].aq_mbid+"</td><td>"+aqgList[i].aq_date+"</td><td>"+aqgList[i].abc+"</td></tr>"	  
  }
 }
      vol+="</table>";
     $("#renking").html(vol); 
</script>
</html>