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
body {
	margin: auto;
	width: 1520px;
	height: auto;
}

div {
	margin: auto;
}

ul {
	list-style: none;
}

#mainheader {
	border: 1px solid black;
	width: 1518px;
	height: 170px;
}

#adminmenu {
	float: left;
	width: 300px;
	height: 500px;
}

#adminwriterjoin {
	border: 1px solid red;
	float: left;
	align-content: center;
	width: 1216px;
	height: auto;
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
	border: 1px solid coral;
	color: black; display : inline;
	float: left;
	width: 320px;
	heigth: 55px;
	display: inline;
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
				result+="<div class='best'>"+"<a href='permitWriDetail '>"
					  +"아이디:" +data[i].mj_mbid+"<br>"
					  +"카테고리 분류번호:"+data[i].mj_cgcode+"<br>"
					  +"포트폴리오:"+data[i].mj_contents+"<br>"
					  +"파일설명:"+data[i].mj_portf+"<br>"
					  +"</a>"+"</div>";
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