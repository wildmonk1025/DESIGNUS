<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

<head>
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<meta charset="UTF-8">
<title>마이페이지</title>
<style type="text/css">
body * {
  box-sizing: border-box;
}

.header {
  background-color: #327a81;
  color: white;
  font-size: 1.5em;
  padding: 1rem;
  text-align: center;
  text-transform: uppercase;
}


.table-users {
  border: 1px solid #327a81;
  border-radius: 10px;
  box-shadow: 3px 3px 0 rgba(0, 0, 0, 0.1);
  max-width: calc(100% - 2em);
  margin: 1em auto;
  overflow: hidden;
  width: 800px;
}

table {
  width: 100%;
}
table td, table th {
  color: #2b686e;
  padding: 10px;
}
table td {
  text-align: center;
  vertical-align: middle;
}
table td:last-child {
  font-size: 0.95em;
  line-height: 1.4;
  text-align: left;
}
table th {
  background-color: #daeff1;
  font-weight: 300;
}
table tr:nth-child(2n) {
  background-color: white;
}
table tr:nth-child(2n+1) {
  background-color: #edf7f8;
}

@media screen and (max-width: 700px) {
  table, tr, td {
    display: block;
  }

  td:first-child {
    position: absolute;
    top: 50%;
    -webkit-transform: translateY(-50%);
            transform: translateY(-50%);
    width: 100px;
  }
  td:not(:first-child) {
    clear: both;
    margin-left: 100px;
    padding: 4px 20px 4px 90px;
    position: relative;
    text-align: left;
  }
  td:not(:first-child):before {
    color: #91ced4;
    content: '';
    display: block;
    left: 0;
    position: absolute;
  }
  td:nth-child(2):before {
    content: 'Name:';
  }
  td:nth-child(3):before {
    content: 'Email:';
  }
  td:nth-child(4):before {
    content: 'Phone:';
  }
  td:nth-child(5):before {
    content: 'Comments:';
  }

  tr {
    padding: 10px 0;
    position: relative;
  }
  tr:first-child {
    display: none;
  }
}
@media screen and (max-width: 500px) {
  .header {
    background-color: transparent;
    color: white;
    font-size: 2em;
    font-weight: 700;
    padding: 0;
    text-shadow: 2px 2px 0 rgba(0, 0, 0, 0.1);
  }

  

  td:first-child {
    background-color: #c8e7ea;
    border-bottom: 1px solid #91ced4;
    border-radius: 10px 10px 0 0;
    position: relative;
    top: 0;
    -webkit-transform: translateY(0);
            transform: translateY(0);
    width: 100%;
  }
  td:not(:first-child) {
    margin: 0;
    padding: 5px 1em;
    width: 100%;
  }
  td:not(:first-child):before {
    font-size: .8em;
    padding-top: 0.3em;
    position: relative;
  }
  td:last-child {
    padding-bottom: 1rem !important;
  }

  tr {
    background-color: white !important;
    border: 1px solid #6cbec6;
    border-radius: 10px;
    box-shadow: 2px 2px 0 rgba(0, 0, 0, 0.1);
    margin: 0.5rem 0;
    padding: 0;
  }

  .table-users {
    border: none;
    box-shadow: none;
    overflow: visible;
  }
}

#one {
	width: 100%;
	height: 100%;
}



#notice {
	padding-top: 5px;
	margin: 10px;
	
	width: 1200px;
	height: 350px;
	text-align: center;
	font-size: 20px;
	float: left;
	display:inline-block;
	border: 1px solid #f0f0f0;
	border-radius: 10px;
	box-shadow: 3px 0px 8px -3px rgba(0,0,0,0.56);
	
}
#notice:hover {
	transform: scale(1.25);
	background-color : white;
	border: 2px solid coral;
	transition-duration: 1s;
	height: 400px;
}
.noticebody{
   
    width: 1150px;
	height: 250px;
     overflow: auto;

}

#auction {
	margin: 0px 10px 10px 10px;
	width: 1200px;
	height: 300px;
	text-align: center;
	font-size: 20px;
	float: left;
	display:inline-block;
	border: 1px solid #f0f0f0;
	border-radius: 10px;
	box-shadow: 3px 0px 8px -3px rgba(0,0,0,0.56);
}
#auction:hover {
	transform: scale(1.25);
	background-color : white;
	border: 2px solid coral;
	transition-duration: 1s;
	height: 250px;
}

#spon {
	margin: 0px 10px 10px 10px;
	width: 1200px;
	height: 300px;
	float: left;
	font-size: 20px;
	text-align: center;
	padding-top: 5px;
/* 	overflow: scroll; */
	display:inline-block;
	border: 1px solid #f0f0f0;
	border-radius: 10px;
	box-shadow: 3px 0px 8px -3px rgba(0,0,0,0.56);
	
}
#spon:hover {
	transform: scale(1.25);
	background-color : white;
	border: 2px solid coral;
	transition-duration: 1s;
/* 	height: 250px; */
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
	width: 1520px;
	height: 170px;
}

#mypagemain {
	width: 1530px;
	height: 1200px;
}

#full {
margin-right:10px;
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
margin-left:10px;
 margin-top:20px;
 width: 1100px;
}
#gsc{
margin-left:40px;
 margin-top:20px;
 width: 1000px;
}
.t1{
/* border: 1px solid orange; */
 margin-left:40px;
 margin-top:10px;
 float: left;
}

.sponbody{ 
 width: 1150px;
	height: 250px;
   overflow: auto;
} 
.auctionbody{
width: 1150px;
	height: 250px;
   overflow: auto;
}

#e1{
text-align: center;
}
</style>
<script type="text/javascript">
/* $(document).ready(function(){
	var toMap=${toMap};
	console.log(77,toMap)

	 $.ajax({
			url: 'autdeadline',
			type:'post',
			data: JSON.stringify(toMap),
		    dataType:'json',
		    success:function(data){
		    	alert('성공??');
		    }, 
		    error:function(error){
		    	alert('정상적인 추천이 실패했습니다.');
		    	console.log(error);
		    }
		 });//end ajax
}); */
// contentType:"application/json; charset=utf-8;",
</script>
</head>


<body>
	<div id="mypagemain">
		<div id="mainheader">
			<jsp:include page="main.jsp" />
		</div>

		<jsp:include page="Mapagemain.jsp" />


		<div id="rightmain">
		
			<div id="notice"></div>
			
			<div id="spon">
				
			</div>
			<div id="auction">
				<h1>참여중인경매</h1>
			</div>

		</div>
		<jsp:include page="footer.jsp" />
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


    main+="<div class='noticeheader'><h3 id='hh2'>알림</h3></div><div class='noticebody'><a id='full' href='fullDelete'>전체 삭제</a><br><hr>"
        +"<table id='sk' ><tr><th>보낸 아이디</th><th>받은 아이디</th><th>알림내용</th><th>삭제</th></tr>"
for (var i = 0; i < nolist.length; i++){
	  if(nolist[i].nf_check==0){
	main+="<tr ><td>"+nolist[i].nf_mbid_s+"</td><td>"+nolist[i].nf_mbid_r+"</td><td>"+nolist[i].nf_contents+"</td>"
	    +"<td><a id='nod' href='nodelete?nf_num="+nolist[i].nf_num+"'>삭제</a></td></tr>"
  }else if(nolist[i].nf_check==1){
	  main+="<tr id='nonw'><td>"+nolist[i].nf_mbid_s+"</td><td>"+nolist[i].nf_mbid_r+"</td><td>"+nolist[i].nf_contents+"</td>"
		    +"<td><a id='nod' href='nodelete?nf_num="+nolist[i].nf_num+"'>삭제</a></td></tr>"
  }
}
        main+="</table></div>";
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
var today="${today}";
var str="";
var tt="";
console.log(12,toMap)
console.log(13,maxList)
console.log(15,today)


for(var j=0; j<maxList.length;j++){
	
	tt+=maxList[j]+","
	
	}
var ww=tt.split(","); 
str+="<div class='auctionheader'><h3>참여중인 출품경매</h3></div>"
   +"<div class='auctionbody'><table id='Participation' ><tr><td>상품명</td><td>나의금액</td><td>최고금액</td><td>경매장으로가기</td><td>경매포기하기</td><td>경매종료일</td></tr>"
   for(var i=0;i<toMap.length;i++){
	   if(toMap[i].au_date>today){
    	   str+="<tr><td>"+toMap[i].au_title+"</td>"
    	   +"<td>"+toMap[i].aut_price+"</td>"
    	   +"<td>"+ww[i]+"</td>"
    	   +"<td><a href='auctionRead?au_num="+toMap[i].aut_aunum+"'>移動</a></td>"
    	   +"<td><a href='AuctionGiveUp?aut_aunum="+toMap[i].aut_aunum+"&kind=Aut'>抛棄</a></td>"
    	   +"<td>"+toMap[i].au_date+"</td></tr>";
	   }else if(toMap[i].au_date<=today){
		   str+="<tr><td>"+toMap[i].au_title+"</td>"
    	   +"<td>"+toMap[i].aut_price+"</td>"
    	   +"<td>"+ww[i]+"</td>"
    	   +"<td><a href='auctionRead?au_num="+toMap[i].aut_aunum+"'>移動</a></td>"
    	   +"<td><a href='AuctionGiveUp?aut_aunum="+toMap[i].aut_aunum+"&kind=Aut'>抛棄</a></td>"
    	   +"<td>마감</td></tr>";
	   }
   }
   str+="</table></div>";
   $('#auction').html(str)
 

var stList=${stList};
console.log(23,stList)
var spgList=${spgList};
console.log(22,spgList)
var tt="";
 var qq="";
for(var j=0; j<stList.length;j++){
	qq+=stList[j]+","

 }  
console.log(24,qq)  
   tt+="<div class='sponheader'><h3>펀딩/후원</h3></div><div class='sponbody'>"
 for(var i=0;i<spgList.length;i++){
       if(spgList[i].ssp_step ==1 ){
	 tt+="<div class=t1><h3 class='h'>"+spgList[i].ss_title+"</h3>"
	   /* +"0<progress value="+qq[i]+" max="+spgList[i].ss_goalqty+"></progress>("+qq[i]/spgList[i].ss_goalqty*100+"%)" */
	   +"0<progress value="+stList[i]+" max="+spgList[i].ss_goalqty+"></progress>("+(stList[i] / spgList[i].ss_goalqty)*100+"%)"
       
	   +"목표("+spgList[i].ss_goalqty+") 마감일 :"+spgList[i].ss_date+"</div>" 
       }else if(spgList[i].ssp_step <=2 ){
    	   tt+="<div class=t1><h3 class='h'>"+spgList[i].ss_title+"</h3>"
    	   /* +"0<progress value="+qq[i]+" max="+spgList[i].ss_goalqty+"></progress>("+qq[i]/spgList[i].ss_goalqty*100+"%)" */
    	   +"0<progress value="+stList[i]+" max="+spgList[i].ss_goalqty+"></progress>("+(stList[i] / spgList[i].ss_goalqty)*100+"%)"
           
    	   +"목표("+spgList[i].ss_goalqty+") 마감일 :마감 되었습니다.</div>" 
       }
 }
      tt+="</div>"
  $('#spon').html(tt);
   
  
</script>


</html>
