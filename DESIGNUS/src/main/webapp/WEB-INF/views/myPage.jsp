<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

<head>

<meta charset="UTF-8">
<title>마이페이지</title>
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
	height: 150px;
	text-align: center;
	font-size: 20px;
	float: left;
	overflow: auto;
}

#renking {
	border: 1px solid orange;
	margin: 0px 10px 10px 10px;
	width: 1080px;
	height: 150px;
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
</style>

</head>
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>

<body>
	<div id="mypagemain">
		<div id="mainheader">
			<jsp:include page="main.jsp" />
		</div>

		<jsp:include page="Mapagemain.jsp" />


		<div id="rightmain">
			<div id="notice"></div>
			
			<div id="renking">
				<h3>랭킹</h3>
				<table id="gsc" border= 1px solid black><tr><th>금</th><th>은</th><th>동</th></tr>
				<tr><td>${g}</td><td>${s}</td><td>${c}</td></tr></table>
			</div>
			<div id="spon">
				<h1>펀딩/후원</h1>
			</div>
			<div id="auction">
				<h1>참여중인경매</h1>
			</div>

		</div>
	</div>
</body>
<script type="text/javascript">
var grade='${grade}';
if(grade != 'W'){
	$('#renking').hide();
	$('#notice').css("height","300px");
}

var nolist=${NoList};
console.log(1,nolist);
var main = "";


    main+="<h3 id='hh2'>알림</h3><a id='full' href='fullDelete'>전체 삭제</a><br><hr>"
        +"<table id='sk' border= 1px solid black><tr><th>보낸 아이디</th><th>받은 아이디</th><th>알림내용</th><th>삭제</th></tr>"
for (var i = 0; i < nolist.length; i++){
	  if(nolist[i].nf_check==0){
	main+="<tr ><td>"+nolist[i].nf_mbid_s+"</td><td>"+nolist[i].nf_mbid_r+"</td><td>"+nolist[i].nf_contents+"</td>"
	    +"<td><a id='nod' href='nodelete?nf_num="+nolist[i].nf_num+"'>삭제</a></td></tr>"
  }else if(nolist[i].nf_check==1){
	  main+="<tr id='nonw'><td>"+nolist[i].nf_mbid_s+"</td><td>"+nolist[i].nf_mbid_r+"</td><td>"+nolist[i].nf_contents+"</td>"
		    +"<td><a id='nod' href='nodelete?nf_num="+nolist[i].nf_num+"'>삭제</a></td></tr>"
  }
}
        main+="</table>";
$("#notice").html(main)

var check=${check}
console.log(1,check);
$('#nod').click(function() {
	if(check==1){
		alert("삭제 성공 했습니다.");
	}else{
		alert("삭제 도중 오류가 발생 했습니다 1:1문의로 문의하세요.");
	}
});

var toMap=${toMap};
var maxList=${maxList};
var str="";
var tt="";
console.log(12,toMap)
console.log(13,maxList)

for(var j=0; j<maxList.length;j++){
	
	tt+=maxList[j]+","
	
	}
var ww=tt.split(","); 
str+="<h3>참여중인 출품경매</h3>"
   +"<table id='Participation' border= 1px solid black><tr><td>상품명</td><td>나의금액</td><td>최고금액</td><td>경매장으로가기</td><td>경매포기하기</td><td>경매종료일</td></tr>"
   for(var i=0;i<toMap.length;i++){
    	   str+="<tr><td>"+toMap[i].au_title+"</td>"
    	   +"<td>"+toMap[i].aut_price+"</td>"
    	   +"<td>"+ww[i]+"</td>"
    	   +"<td><a href='auctionRead?au_num="+toMap[i].aut_aunum+"'>移動</a></td>"
    	   +"<td><a href='AuctionGiveUp?aut_aunum="+toMap[i].aut_aunum+"&kind=Aut'>抛棄</a></td>"
    	   +"<td>"+toMap[i].au_date+"</td></tr>";
   }
   str+="</table>";
   $('#auction').html(str)
 
   
    	
   
</script>


</html>
