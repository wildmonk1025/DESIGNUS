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

#main {
	width: 1520px;
	height: 170px;
	position: relative;
}

#mainheader {
	border: 1px solid #F5BCA9;
	width: 1518px;
	height: 170px;
	position: fixed;
	background-color: white;
	z-index: 1000;
	box-shadow: 3px 0px 8px -3px rgba(0, 0, 0, 0.56);
}

#middle {
	width: 1520px;
	height: auto;
	margin-top: 60px;
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
	width: 1200px;
	height: 990px;
	border: 1px solid #f0f0f0;
	border-radius: 5px;
	box-shadow: 3px 0px 8px -3px rgba(0,0,0,0.56);
}

.opt:hover {
	transform: scale(1.02);
	transition-duration: 1s;
}


#declarelist {
	margin-top: 10px;
	width: 100%;
	height: 980px;
	overflow: auto;
}

.best {
	float: left;
	width: 1100px;
	height: auto;
	box-shadow: 3px 0px 8px -3px rgba(0,0,0,0.56);
	margin:5px 5px 5px 5px;
}

.object {
	background-color: #c8e7ea;
	width: 1100px;
}

.object td {
	width: 280px;
	font-size: 23px;
	text-align: center;
}

.contents {
	font-size: 18px;
	font-weight: 600;
	width: 1100px;
}

.contents td {
	width: 280px;
	height: 50px;
	font-size: 18px;
	text-align: center;
}

a:active {
	text-decoration: none;
	color: blue;
}

a:visited {
	text-decoration: none;
	color: blue;
}

a:link {
	text-decoration: none;
	color: blue;
}

a:hover {
	text-decoration: none;
	color: blue;
}

ul {
	list-style: none;
}


#footer {
	width: 1518px;
	height: 180px;
	margin-top: 20px;
	float: left;
	border: 1px solid #f0f0f0;
}
</style>
</head>
<body>
	<div id="main">
		<div id="mainheader">
			<jsp:include page="main.jsp" />
		</div>
	</div>
	<div id="middle">
		<div id="adminmenu">
			<jsp:include page="admininclud.jsp"></jsp:include>
		</div>
		<form action="" enctype="multipart/form-data">
			<div id="adminopt">
				<div class="opt">
					<h3 style="text-align: center; font-size: 30px;">회원 신고내역</h3>
					<div id="declarelist"></div>
				</div>
			</div>
		</form>
		<div id="footer">
			<hr style="width: 100%; border: 2px solid coral; align: center;">
			<jsp:include page="footer.jsp"></jsp:include>
		</div>
	</div>

</body>
<script>
	$(document).ready(
			function() {
				$.ajax({
					url : 'declarewritecheck',
					type : 'post',
					contentType : "application/json; charset=utf-8;",
					dataType : 'json',
					//contentType:'application/json',
					success : function(data) {
						var result = "<div id='best'><table><tr class='object'><td>신고번호</td><td>신고자 아이디</td><td>신고대상 아이디</td><td>신고위치</td><td>신고일</td><td>상세보기</td></tr>";
						console.log("성공");
						for(var i in data) {
							result += "<tr class='contents'><td>"+data[i].rp_num+"</td><td>"
									+ data[i].rp_mbid_d + "</td><td>"
									+ data[i].rp_mbid_a + "</td><td>"
									+ data[i].rp_locate + "</td><td>"
									+ data[i].rp_date + "</td><td>"
									+ "<a href='declareWriteCheck?rp_num="+ data[i].rp_num + "&mb_id=" + data[i].rp_mbid_a+"'>클릭</a></td></tr>";
						}
						result+="</table></div>";
						
						$("#declarelist").html(result);
					},
					error : function(error) {
						console.log(error);
					}
				});
			});
</script>
</html>