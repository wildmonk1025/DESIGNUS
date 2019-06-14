<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>declareWrite.jsp</title>
<meta charset="utf-8">
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

#adminopt {
	float: left;
	align-content: center;
	width: 1216px;
	height: 500px;
}

.opt {
	padding: inherit;
	margin: auto;
	margin-top: 5px;
	width: 1000px;
	height: 450px;
}

#declarelist {
	width: 990px;
	height: 350px;
	overflow-y: scroll;
	border: 1px solid grey;
}

#declarelist td {
	width: 140px;
}

.best {
	border: 1px solid blue;
	color: black; display : inline;
	float: left;
	width: 320px;
	heigth: 55px;
	display: inline;
}
</style>
</head>
<body>
	<form action="" enctype="multipart/form-data">
		<div id="mainheader">
			<div id="mainheader">
				<jsp:include page="main.jsp" />
			</div>
		</div>
		<div id="adminmenu">
			<jsp:include page="admininclud.jsp"></jsp:include>

		</div>
		<div id="adminopt">
			<div class="opt">
				<h3 style="text-align: center; font-size: 25px; background-color: orange;">회원
					신고내역</h3>
				<hr>
				<div id="declarelist"></div>
				<h3 style="text-align: center; color: blue;">페이징</h3>
			</div>
		</div>
	</form>
</body>
<script>
	/*     var x="";
	 $("#declareinfo").addClass(function(){
	 for(var j=0;j<10;j++) {
	 x+="<tr><td>일반</td><td>번호</td><td>제목</td><td>피해자ID</td><td>피의자ID</td>"
	 +"<td>위치</td><td>신고사유</td></tr><tr><td colspan=\"7\">내용</td></tr><tr>"
	 +"<td colspan=\"7\">[첨부사진]</td></tr><br>";
	 }
	 $("#declareinfo").html(x);
	 }); */
	$(document).ready(
			function() {
				$.ajax({
					url : 'declarewritecheck',
					type : 'post',
					contentType : "application/json; charset=utf-8;",
					dataType : 'json',
					//contentType:'application/json',
					success : function(data) {
						var result = "";
						console.dir(data);
						console.log("성공");

						for ( var i in data) {
							result += "<div class='best'>" +
									"<a href='declareWriteCheck?rp_num="+data[i].rp_num+"&mb_id="
									+ data[i].rp_mbid_a+"'>"
									+"신고번호:"+ data[i].rp_num + "<br>" + "신고자아이디:"
									+ data[i].rp_mbid_d + "<br>" + "가해자아이디:"
									+ data[i].rp_mbid_a + "<br>" + "신고위치:"
									+ data[i].rp_locate + "<br>" + "신고사유:"
									+ data[i].rp_contents + "<br>" + "등록일:"
									+ data[i].rp_date + "<br>" +"</a>"+"</div>";
						}
						$("#declarelist").html(result);
					},
					error : function(error) {
						console.log("실패");
						console.log(error);
					}
				});
			});
</script>
</html>
