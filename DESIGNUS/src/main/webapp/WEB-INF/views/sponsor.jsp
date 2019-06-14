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

#sponproduct {
	width: 200px;
	height: 170px;
	margin: 15px;
	float: left;
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

#spon {
	border: 1px solid black;
	width: 300px;
	height: 180px;
	margin:10px 20px;
	float: left;
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
					contentType : "application/json; charset=utf-8;",
					success : function(data) {
						var result = "";
						console.dir(data);
						console.log("성공");
						for (var i = 0; i < data[i].length; i++) {
							result += "<div id='spon'>"
									+ "<div id='sponproduct'>"
									+ "<img src='resources/images/>"
									+ data[i].ssi_img + "</div>"
									+ "<div class='sponpro'>" + "아이디:"
									+ data[i].ss_mbid_w + "<br>" + "후원번호:"
									+ data[i].ss_num + "<br>" + "목표수량:"
									+ data[i].ss_goalqty + "<br>" + "후원제품가격:"
									+ data[i].ss_price + "후원날짜:"
									+ data[i].ss_date + "<br>" + "</div>"
									+ "</div>"
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