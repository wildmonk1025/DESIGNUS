<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
#leftmain {
margin: 15px 0px 0px 0px;
	width: 310px;
	height: 900x;
	/*border: 1px solid black;*/
	float: left;
}
    #point {
	margin: 40px 10px 10px 10px;
	width: 280px;
	height: 60px;
	text-align: left;
	font-size: 30px;
	float: left;
}

#img {
    margin-top: 20px;
	margin:20px 10px 10px 10px;
	width: 280px;
	height: 290px;
	text-align: left;
	font-size: 15px;
	float: left;
}
#info {
	margin: 0px 10px 10px 10px;
	width: 280px;
	height: 552px;
	font-size: 20px;
	text-align: left;
	float: left;
}
#footer {
	border: 1px solid red;
	width: 1518px;
	height: 180px;
	margin-top: 20px;
	border: 1px solid #f0f0f0;
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
				<table>

					<tr id="m1">
						<td style="font-size: 20px"><a href="historylist?list=rev">제작의뢰
								내역</a></td>
					</tr>
					<tr id="m2">
						<td style="font-size: 20px"><a href="historylist?list=revre">제작의뢰
								접수내역</a></td>
					</tr>
					<tr id="m3">
						<td style="font-size: 20px"><a href="historylist?list=auc">출품작
								구매 내역</a></td>
					</tr>
					<tr id="m4">
						<td style="font-size: 20px"><a href="historylist?list=aucre">출품작
								판매 내역</a></td>
					</tr>
					<tr id="m5">
						<td style="font-size: 20px"><a href="historylist?list=spon">후원진행
								내역</a></td>
					</tr>
					<tr id="m6">
						<td style="font-size: 20px"><a href="historylist?list=sponre">후원요청
								내역</a></td>
					</tr>
					<tr id="m7">
						<td style="font-size: 20px"><a href="historylist?list=basket">꿍
								내역</a></td>
					</tr>
					<tr id="m8">
						<td style="font-size: 20px"><a href="privacyedit">개인정보 수정</a></td>
					</tr>
					<tr id="m10">
						<td style="font-size: 20px"><a href="nortowri">작가전환 신청</a></td>
					</tr>
					<tr id="m11">
						<td style="font-size: 20px"><a href="questionlist">1:1문의리스트</a></td>
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
			    	
			    	aa+="<h2>프로필 사진</h2><br>"+"<img src='/member/"+data.mb_profile+"' width='100%' height='100%'>";
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