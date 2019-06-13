<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<meta charset="UTF-8">
<style>
div {
	margin: auto;
}

#mainheader {
	border: 1px solid black;
	width: 1520px;
	height: 170px;
}

#homeMain {
	border: 1px solid black;
	width: 1520px;
	height: 700px;
}

.btn {
	background-color: orange;
	width: 150px;
	height: 30px;
	color: white;
	float: right;
}

#coklist {
	width: 1000px;
	height: 150px;
	float: left;
	display: block;
}

#bestlist {
	width: 1000px;
	height: 150px;
	float: left;
	display: block;
}

#footercheck {
	border: 1px solid black;
	width: 1520px;
	height: 200px;
}

#titleAndbtn {
	position: relative;
	top: 50px;
	left: 30px;
	width: 1300px;
	height: 40px;
	font-size: 20px;
	color: orange;
}

#btn1 {
	float: right;
}

#sponList {
	border: 1px solid red;
	position: relative;
	top: 50px;
	left: 10px;
	width: 1300px;
	height: 500px;
	overflow-y: scroll;
}
</style>
<title>Sponsor</title>
</head>
<body>
	<div id="mainheader">
		<jsp:include page="main.jsp" />
	</div>

	<div id="homeMain">
		<div id="titleAndbtn">
			지금 후원 가능한 작품
			<button id="btn1" class="btn"
				onclick="location.href='sponregistration'">후원상품등록</button>
		</div>
		<div id="sponList"></div>
	</div>

	<div id="footercheck">
		<jsp:include page="footer.jsp"></jsp:include></div>

</body>
<script>
	$(document).ready(
			function() {
				$.ajax({
					url : 'productinfo',
					type : 'post',
					dataType : 'json',
					contentType : 'application/json',
					success : function(data) {
						var result = "";
						console.dir(data);
						console.log("성공");
						for (var i = 0; i < 5; i++) {
							result += "<div id='sponproduct'>"
									+ "<img src='resources/images/>"data[i].ssi_img + "</div>"
									+ "<div class='best'>" + "작가아이디:"
									+ data[i].au_mbid_w + "<br>" + "상품번호:"
									+ data[i].au_num + "<br>" + "상품설명:"
									+ data[i].au_contents + "<br>" + "신상:"
									+ data[i].au_date + "<br>" + "</div>"
						}
						$("#sponList").html(result);
					},
					error : function(error) {
						console.log("실패");
						console.log(error);
					}
				});
			});
</script>
</html>