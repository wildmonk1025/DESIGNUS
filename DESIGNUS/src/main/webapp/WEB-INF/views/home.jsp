<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<html>
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<title>Home</title>
<style>

#main {
	width: 1518px;
	height: 170px;
	position: relative;
}

#mainheader {
	border: 1px solid black;
	width: 1520px;
	height: 170px;
	position: fixed;
	background-color: white;
}

#middle {
	border: 1px solid black;
	width: 1520px;
	height: auto;
	margin-top: 50px;
}

#middle_content1, #middle_content2 {
	width: 1450px;
	height: 600px;
	float: left;
	border: 1px solid orange;
}

#middle_content1_title, #middle_content2_title {
	width: 1450px;
	height: 30px;
	float: left;
	border: 1px solid orange;
}

#middle_content1_lv1 {
	width: 1100px;
	height: 400px;
	float: left;
	margin: 20px;
	border: 1px solid orange;
}

#middle_content2_lv1 {
	width: 1100px;
	height: 400px;
	float: left;
	border: 1px solid orange;
}

#footer {
	border: 1px solid red;
	width: 1514px;
	height: 170px;
	margin-top: 20px;
	float: left;
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
		<div id="middle_content1">
			<div id="middle_content1_title">
				오늘의 추천 작품
			</div>
			<div id="middle_content1_lv1">
				<div id="bestlist">asdasd</div>
			</div>
		</div>
		<div id="middle_content2">
			<div id="middle_content2_title">
				<div id="text2" align="center">베스트 상품</div>
			</div>
			<div id="middle_content2_lv1">
				<div id="bestlist">asdasd</div>
			</div>
		</div>
		
		<div id="footer">
		<jsp:include page="footer.jsp"></jsp:include>
		</div>
	</div>
</body>
<script>
	//var rList = ${rList}
	$(document)
			.ready(
					function() {
						$
								.ajax({
									url : 'bestajax',
									type : 'post',
									dataType : 'json',
									//contentType:'application/json',
									success : function(data) {
										var result = "";
										console.dir(data);
										console.log("성공");

										for (var i = 0; i < 3; i++) {
											result += "<div id='bestitem'>"
													+ "<img src='resources/images/su1.jpg' id='img1'>"
													+ "</div>"
													+ "<div class='best'>"
													+ "작가아이디:"
													+ data[i].au_mbid_w
													+ "<br>" + "상품번호:"
													+ data[i].au_num + "<br>"
													+ "상품설명:"
													+ data[i].au_contents
													+ "<br>" + "추천수:"
													+ data[i].au_count + "<br>"
													+ "</div>"
										}
										$("#bestlist").html(result);
									},
									error : function(error) {
										console.log("실패");
										console.log(error);
									}
								});
					});

	$(document)
			.ready(
					function() {
						$
								.ajax({
									url : 'newajax',
									type : 'post',
									dataType : 'json',
									//contentType:'application/json',
									success : function(data) {
										var result = "";
										console.dir(data);
										console.log("성공");

										for (var i = 0; i < 3; i++) {
											result += "<div id='bestitem'>"
													+ "<img src='resources/images/yyy.jpg' id='img1'>"
													+ "</div>"
													+ "<div class='best'>"
													+ "작가아이디:"
													+ data[i].au_mbid_w
													+ "<br>" + "상품번호:"
													+ data[i].au_num + "<br>"
													+ "상품설명:"
													+ data[i].au_contents
													+ "<br>" + "신상:"
													+ data[i].au_date + "<br>"
													+ "</div>"
										}
										$("#coklist").html(result);
									},
									error : function(error) {
										console.log("실패");
										console.log(error);
									}
								});
					});

	window.onload = function() {
		var flag = $
		{
			logout
		}
		;
		if (flag == 1) {
			swal("로그아웃 되었습니다.");
		}

	}
</script>
</html>
