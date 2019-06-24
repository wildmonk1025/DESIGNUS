<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<meta charset="utf-8">
<html>

<head>
<meta charset="UTF-8">
<title>permitWriApply.jsp</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<style>
#customers {
	font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
	width: 400px;
	border-collapse: collapse;
}

#customers td, #customers th {
	font-size: 1em;
	border: 1px solid #98bf21;
	padding: 3px 7px 2px 7px;
}

#customers th {
	font-size: 1.1em;
	text-align: left;
	padding-top: 5px;
	padding-bottom: 4px;
	background-color: #A7C942;
	color: #ffffff;
}

#customers tr.alt td {
	color: #000000;
	background-color: #EAF2D3;
}

body {
	margin: auto;
	width: 1520px;
	height: auto;
}



ul {
	list-style: none;
}

#mainheader {
	width: 1518px;
	height: 170px;
}

#adminmenu {
	float: left;
	width: 300px;
	height: 500px;
}

#adminwriterjoin {
	float: left;
	align-content: center;
	width: 1216px;
	height: 600px;
	overflow-y: scroll;
}

.writerjoin {
	padding: inherit;
	margin-top: 30px;
	width: 1000px;
	height: 450px;
}

#writerjointitle {
	margin: 10px;
	width: 230px;
	padding-left: 20px;
	float: left;
	background-color: orange;
	color: white;
}

#writerjoinlist {
	margin: 25px;
	left: 40px;
	float: left;
	width: 900px;
	height: auto;
}
.best {
	border: 1px solid black;
	display : inline;
	float: left;
	width: 400px;
	heigth: 150px;
	size: 20px;
	
}

a:active {
	text-decoration: none;
	color: black;
}

a:visited {
	text-decoration: none;
	color: black;
}
a:link {
	text-decoration: none;
	color: black;
}
a:hover {
	text-decoration: none;
	color: black;
}   
</style>
</head>

<body>
	<div id="mainheader">
		<jsp:include page="main.jsp"/>
	</div>
    <div id="adminmenu">
        <ul>
                <jsp:include page="admininclud.jsp"></jsp:include>

        </ul>
    </div>
	<div id="adminwriterjoin">
		<div class="writerjoin">
			<div id="writerjointitle">
				<p>작가 가입신청 리스트</p>
			</div>
			<div id="writerjoinlist">
				<div id="transformlist">
					
				</div>
			
				
			</div>
		</div>
	</div>
</body>
<script>
$(document).ready(function() {
	$.ajax({
		url : 'transformwridetail ',
		type: 'post',
		contentType:"application/json; charset=utf-8;",
		dataType : 'json',
		//contentType:'application/json',
		success:function(data){
			var result = "";
			console.dir(data);
			console.log("성공");

			for(var i in data){
				result+="<div class='best'>"+"<table id='customers'>"+"<tr class='alt'><td>" 
				+"<a href='permitWriDetail?mb_id="+data[i].mb_id+"'>"
					  +"아이디:" +data[i].mb_id+"</tr></td>"+ "<tr><td>"
					  +"카테고리 분류번호:"+data[i].mj_cgcode+"</tr></td>"+ "<tr><td>"
					  +"포트폴리오:"+data[i].mj_contents+"</tr></td>"+ "<tr><td>"
					  +"파일설명:"+data[i].mj_portf+"</tr></td>"+ "<tr><td>"
					  +"</a>"+"</table>"+"</div>";
					  }
			$("#transformlist").html(result);
		},
	error:function(error){
		console.log("실패");
		console.log(error);
	}
	});
});
</script>

</html>