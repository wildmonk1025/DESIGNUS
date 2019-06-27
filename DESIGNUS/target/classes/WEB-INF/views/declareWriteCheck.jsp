<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>신고내역상세보기</title>
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

ul {
	list-style: none;
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
	height: 1000px;
}

.opt {
	width: 1200px;
	height: 990px;
	border: 1px solid #f0f0f0;
	border-radius: 5px;
	box-shadow: 3px 0px 8px -3px rgba(0,0,0,0.56);
}

#declarelist {
	margin-left: 150px;
	margin-right: 150px;
	margin-top: 20px;
	width: 900px;
	height: 500px;
	float: left;
}


#btngrp {
	margin-left: 150px;
	margin-right: 150px;
	margin-top: 20px;
	width: 900px;
	height: 200px;
	float: left;	
}

.btnArray {
	margin-left: 10px;
	float: left;
	width: 120px;
}

#btn1 {
	bottom: 100px;
	left: 850px;
}

#btn2 {
	bottom: 60px;
	left: 850px;
}

#btn3 {
	bottom: 17px;
	left: 850px;
}

.btnArray>input {
	width: 120px;
	height: 30px;
}


#atag{
	width: 120px;
	height: 30px;
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

	<div id="adminopt">
		<form name="formName" method="post">
			<div class="opt">
				<h3	style="text-align: center; font-size: 30px;">신고 상세내역</h3>
				<div id="declarelist">
					<table>
						<tr class="alt">
							<td colspan="5" width="900px" height="40px" style="font-size: 25px; background-color:#c8e7ea;">신고번호 ${rp_num}</td>
						</tr>
						<tr>
							<td width="100" height="30" style="font-size: 20px; text-align: center; background-color:#c8e7ea;">신고위치</td>
							<td width="100" height="30" style="font-size: 20px; text-align: center; background-color:#c8e7ea;">신고사유</td>
							<td width="200" height="30" style="font-size: 20px; text-align: center; background-color:#c8e7ea;">신고자ID</td>
							<td width="200" height="30" style="font-size: 20px; text-align: center; background-color:#c8e7ea;">신고대상ID</td>
							<td width="300" height="30" style="font-size: 20px; text-align: center; background-color:#c8e7ea;">신고일</td>
						</tr>

						<tr class="alt">
							<td width="100" height="30" style="font-size: 15px; text-align: center;">${rp_locate}</td>
							<td width="100" height="30" style="font-size: 15px; text-align: center;">${rp_reason}</td>
							<td width="200" height="30" style="font-size: 15px; text-align: center;">${rp_mbid_d}</td>
							<td width="200" height="30" style="font-size: 15px; text-align: center;">${rp_mbid_a}</td>
							<td width="300" height="30" style="font-size: 15px; text-align: center;">${rp_date}</td>
						</tr>
						<tr>
							<td width="100" height="50" style="font-size: 20px; text-align: center; background-color:#c8e7ea;">제목</td>
							<td width="800" colspan="4" height="50" style="font-size: 15px; text-align: center;">${rp_title}</td>
						</tr>
						<tr class="alt">
							<td width="100" height="400" style="font-size: 20px; text-align: center; background-color:#c8e7ea;">내용</td>
							<td width="800" colspan="4"  height="400" style="font-size: 15px; text-align: center;">${rp_contents}</td>
						</tr>
						<tr>
							<td width="100" height="50" style="font-size: 20px; text-align: center; background-color:#c8e7ea;">첨부사진</td>
							<td width="800" height="50" colspan="4"><img src="/board/${rp_img}"></td>
						</tr>
					</table>
				</div>
				<div id="btngrp">
				<div class="btnArray" id="btn1">
					<input type="button" value="적합" onclick="b();" class="btn2" />
				</div>

				<div class="btnArray" id="btn2">
					<input type="button" value="부적합" onclick="a();" class="btn2" />
				</div>
				<div class="btnArray" id="btn3">
					<a href="declareWrite" class="btn2" id="atag">돌아가기</a>
				</div>
				</div>
			</div>
		</form>
	</div>
	<div id="footer">
		<hr style="width: 100%; border: 2px solid coral; align: center;">
		<jsp:include page="footer.jsp"></jsp:include>
	</div>
	</div>

</body>
<script>
	function a() {
		var f = document.formName;
		f.action = "declarenonpermit?rp_num=${rp_num}&mb_id=${rp_mbid_a}";
		// 파일 전송이 필요할 경우만 씀.
		f.submit();
	}
	function b() {
		var f = document.formName;
		f.action = "declarepermit?rp_num=${rp_num}&mb_id=${rp_mbid_a}";
		f.submit();
	}
	function goBack() {
		window.history.forward();
	}
</script>
</html>