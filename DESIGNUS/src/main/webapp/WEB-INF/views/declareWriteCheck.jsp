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
	box-shadow: 3px 0px 8px -3px rgba(0,0,0,0.56);
}
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
	bottom: 17px;
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
	border: 1px solid black;
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
	background-color:#F6D8CE;
}
.btn2{
margin-top: 10px;
	/*General*/
	display: inline-block;
	text-decoration: none;
	/*Text*/
	font-family: "Helvetica Neue", Helvetica, Arial, sans-serif;
	font-size: 13px;
	font-weight: bold;
	line-height: 240%;
	color: rgb(162, 136, 44);
	text-align: center;
	text-shadow: 0px 1px 0px rgba(255, 255, 255, 0.25);
	/*Button*/
	background-color: #FFE79E;
	background-image: -moz-linear-gradient(53% 100% 90deg, rgb(212, 212, 212)
		0%, rgb(237, 237, 237) 100%);
	background-image: -webkit-gradient(linear, 53% 100%, 53% 3%, color-stop(0, rgb(212, 212,
		212)), color-stop(1, rgb(237, 237, 237)));
	background-image: -webkit-linear-gradient(90deg, rgb(212, 212, 212) 0%,
		rgb(237, 237, 237) 100%);
	background-image: -o-linear-gradient(90deg, rgb(212, 212, 212) 0%,
		rgb(237, 237, 237) 100%);
	background-image: -ms-linear-gradient(90deg, rgb(212, 212, 212) 0%,
		rgb(237, 237, 237) 100%);
	background-image: linear-gradient(90deg, rgb(212, 212, 212) 0%,
		rgb(237, 237, 237) 100%);
	width: 150px;
	height: 40px;
	border-color: rgb(223, 192, 86);
	border-width: 1px;
	-moz-border-radius: 3px;
	-webkit-border-radius: 3px;
	border-radius: 3px;
	border-style: solid;
	-moz-box-shadow: 0px 0px 0px 3px rgba(0, 0, 0, 0.1), inset 0px 1px 0px
		rgba(255, 255, 255, 0.25);
	-webkit-box-shadow: 0px 0px 0px 3px rgba(0, 0, 0, 0.1), inset 0px 1px
		0px rgba(255, 255, 255, 0.25);
	box-shadow: 0px 0px 0px 3px rgba(0, 0, 0, 0.1), inset 0px 1px 0px
		rgba(255, 255, 255, 0.25);
	-ms-filter: "progid:DXImageTransform.Microsoft.gradient(startColorstr=#ffffefbf,
		endColorstr=#ffffe185, GradientType=0) progid:DXImageTransform.Microsoft.Glow(Color=#ff000000,
		Strength=3)";
	filter: progid:DXImageTransform.Microsoft.gradient(startColorstr=#ffffefbf,
		endColorstr=#ffffe185, GradientType=0) progid:DXImageTransform.Microsoft.Glow(Color=#ff000000,
		Strength=3);
	display: inline-block;
	background-image: -webkit-gradient(linear, 53% 100%, 53% 3%, color-stop(0, rgb(212, 212,
		212)), color-stop(1, rgb(237, 237, 237)));
	background-image: -webkit-linear-gradient(90deg, rgb(212, 212, 212) 0%,
		rgb(237, 237, 237) 100%);
	background-image: -o-linear-gradient(90deg, rgb(212, 212, 212) 0%,
		rgb(237, 237, 237) 100%);
	background-image: -ms-linear-gradient(90deg, rgb(212, 212, 212) 0%,
		rgb(237, 237, 237) 100%);
	background-image: linear-gradient(90deg, rgb(212, 212, 212) 0%,
		rgb(237, 237, 237) 100%);
}
#atag{
	width: 120px;
	height: 30px;
}
#dd{
box-shadow: 3px 0px 8px -3px rgba(0,0,0,0.56);

}
</style>
</head>

<body>
	<div id="main">
		<div id="mainheader">
			<jsp:include page="main.jsp" />
		</div>
	</div>
	<div id="adminmenu">
		<jsp:include page="admininclud.jsp"></jsp:include>

	</div>


	<div id="adminopt">
		<form name="formName" method="post">
			<div class="opt"><br/><br/>
				<h3	id="dd" style="margin-left: 20px; font-size: 25px;  background-color:#F6D8CE; width:820px; ">신고
					상세내역</h3>
				<hr><br/>
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
					<input type="button" value="적합" onclick="b();" class="btn2" />
				</div>

				<div class="btnArray" id="btn2">
					<input type="button" value="부적합" onclick="a();" class="btn2" />
				</div>
				<div class="btnArray" id="btn3">
					
						<a href="declareWrite" class="btn2" id="atag">돌아가기<br /></a>
				
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