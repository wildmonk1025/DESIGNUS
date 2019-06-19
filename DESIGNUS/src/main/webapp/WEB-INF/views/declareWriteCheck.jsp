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
	position: relative;
	margin-top: 5px;
	width: 1000px;
	height: 450px;
}

#declarelist {
	margin-left: 20px;
	width: 820px;
	height: 340px;
	border: 1px solid grey;
	float: left;
}

#declareinfo {
	width: 820px;
	height: 340px;
	border: 1px solid red;
}

.btnArray {
	margin-left: 10px;
	position: absolute;
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
	bottom: 20px;
	left: 850px;
}

.btnArray>input {
	width: 120px;
	height: 30px;
}

td {
	border: 1px solid grey;
}

.lipont {
	font-size: 20px;
}

#customers {
	font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
	width: 820px;
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
</style>
</head>

<body>
	<div id="mainheader">
		<div id="mainheader">
			<jsp:include page="main.jsp" />
		</div>
	</div>
	<div id="adminmenu">
		<jsp:include page="admininclud.jsp"></jsp:include>

	</div>


	<div id="adminopt">
		<form name="formName" method="post">
			<div class="opt">
				<h3	style="margin-left: 20px; font-size: 25px; background-color: coral; width:820px; ">신고
					상세내역</h3>
				<hr>
				<div id="declarelist">

					<table id="customers">
						<tr class="alt">
							<td colspan="5" width="500" height="20">신고번호 ${rp_num}</td>
						</tr>
						<tr>
							<td width="100" height="20">신고위치</td>
							<td width="100" height="20">신고사유</td>
							<td width="100" height="20">신고자ID</td>
							<td width="100" height="20">신고대상ID</td>
							<td width="100" height="20">신고일</td>
						</tr>

						<tr class="alt">
							<td width="100" height="20">${rp_locate}</td>
							<td width="100" height="20">${rp_reason}</td>
							<td width="100" height="20">${rp_mbid_d}</td>
							<td width="100" height="20">${rp_mbid_a}</td>
							<td width="100" height="20">${rp_date}</td>
						</tr>
						<tr>
							<td colspan="5" width="500" height="40">제목:${rp_title}</td>
						</tr>
						<tr class="alt">
							<td colspan="5" width="500" height="170">내용 : ${rp_contents}</td>
						</tr>
						<tr>
							<td colspan="5" width="500" height="30">첨부사진 : ${rp_img}</td>
						</tr>
					</table>
				</div >
				<div class="btnArray" id="btn1">
					<input type="button" value="적합" onclick="b();" />
				</div>

				<div class="btnArray" id="btn2">
					<input type="button" value="부적합" onclick="a();" />
				</div>
				<div class="btnArray" id="btn3">
					<button>
						<a href="declareWrite">돌아가기<br /></a>
					</button>
				</div>
				<!-- <div class="btnArray" id="btn3"><input type="button" onclick="location.href='home'" value="돌아가기"></div> -->
			</div>
		</form>
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