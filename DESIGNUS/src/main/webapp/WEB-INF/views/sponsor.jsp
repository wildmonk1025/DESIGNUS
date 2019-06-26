<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<meta charset="UTF-8">
<style>
::-webkit-scrollbar {
	width: 4px;
}

::-webkit-scrollbar-track {
	background-color: white;
}

::-webkit-scrollbar-thumb {
	background-color: #F5BCA9;
	border-radius: 5px;
}

::-webkit-scrollbar-thumb:hover {
	background: #F5BCA9;
}

::-webkit-scrollbar-button:start:decrement, ::-webkit-scrollbar-button:end:increment
	{
	width: 0px;
	height: 0px;
	background: coral;
}

div {
	margin: auto;
}

#mainheader {
	border: 1px solid #F5BCA9;
	width: 1518px;
	height: 170px;
	background-color: white;
	z-index: 1000;
	box-shadow: 3px 0px 8px -3px rgba(0, 0, 0, 0.56);
}

#sponproduct {
	width: 200px;
	height: 170px;
	margin: 15px;
	float: left;
}

#homeMain {
	width: 1518px;
	height: 700px;
}

.btn {
	background-color: orange;
	width: 150px;
	height: 30px;
	color: white;
	float: right;
}

#footercheck {
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

#sponname {
	width: 220px;
	height: 27px;
}

#btn1 {
	float: right;
}

#sponList {
	/* border: 1px solid red; */
	position: relative;
	top: 50px;
	left: 10px;
	width: 1300px;
	height: 500px;
	overflow-y: scroll;
}

#spon {
	border: 1px solid coral;
	box-shadow: 3px 0px 8px -3px rgba(0, 0, 0, 0.56);
	border-radius: 3px;
	width: 380px;
	height: 180px;
	margin: 10px 20px;
	float: left;
}

#sponproduct {
	border: 1px solid coral;
	width: 130px;
	height: 150px;
	margin: 10px;
	float: left;
}

#sponpro {
	width: 220px;
	height: 140px;
	float: left;
	margin-top: 15px;
}
</style>
<title>Sponsor</title>
</head>
<body>
	<div id="mainheader">
		<jsp:include page="main.jsp" />
	</div>

	<div id="homeMain">
		<div id="titleAndbtn">지금 후원 가능한 작품</div>
		<div id="sponList"></div>
	</div>

	<div id="footercheck">
	<hr style="width: 100%; border: 2px solid coral; align: center;">
		<jsp:include page="footer.jsp"></jsp:include></div>

</body>
<script>
	function msg() {
		alert("작가만 등록할 수 있습니다.")
	}
	$(document)
			.ready(
					function() {
						$
								.ajax({
									url : 'productinfo',
									type : 'post',
									dataType : 'json',
									contentType : "application/json; charset=utf-8;",
									success : function(data) {
										var result = "";
										console.dir(data);
										console.log("성공");
										for ( var i in data) {
											result += "<div id='spon'>"
													+ "<a href='sponproduct?ss_num="
													+ data[i].ss_num
													+ "'style='color: black'>"
													+ "<div id='sponproduct'>"
													+ "<img src='/sponsor/"
													+ data[i].ssi_img
													+ "' width='100%' height='100%'>"
													+ "</div>"
													+ "<div id='sponpro'>"
													+ "<div id='sponname' style='font-size:17px; font-weight: bolder; margin-bottom:3px; background-color:#f9e6e0'>"
													+ data[i].ss_title
													+ "</div>"
													+ "<div id='contents' style='font-size:15px;'>"
													+ "아이디 : "
													+ data[i].ss_mbid_w
													+ "<br>"
													+ "후원번호 : "
													+ data[i].ss_num
													+ "<br>"
													+ "목표수량 : "
													+ data[i].ss_goalqty
													+ "<br>"
													+ "후원제품가격 : "
													+ data[i].ss_price
													+ "<br>"
													+ "후원등록날짜 : "
													+ data[i].ss_date
													+ "</div></div>"
													+ "<br>"
													+ "</a>" + "</div>"
										}
										$("#sponList").html(result);
									},
									error : function(error) {
										console.log("실패");
										console.log(error);
									}
								});
					});

	$('#spon').click(function() {
		$('#spon')
	})
</script>
</html>