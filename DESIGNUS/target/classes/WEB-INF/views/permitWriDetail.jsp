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

.btnArray {
	width: 180px;
	float: left;
}

.opt {
	width: 1200px;
	height: 990px;
	border: 1px solid #f0f0f0;
	border-radius: 5px;
	box-shadow: 3px 0px 8px -3px rgba(0, 0, 0, 0.56);
}

#declarelist {
	margin-left: 150px;
	margin-right: 150px;
	margin-top: 20px;
	width: 900px;
	height: 650px;
	float: left;
}

#paper {
	color: black;
	background-color: #FAFAFA;
	border: 0.5px solid gray;
}

#btngrp {
	margin-left: 310px;
	margin-right: 190px;
	margin-top: 20px;
	width: 700px;
	height: 70px;
	float: left;
}

.btn2 {
	background-color: #dceefa;
	margin: 10px 50px 20px 30px;
	width: 160px;
	height: 50px;
	margin-top: 5px;
	margin-right: 10px;
	-moz-border-radius: 5px;
	-webkit-border-radius: 5px;
	border-radius: 5px;
	border: 1px solid #4e6096;
	display: inline-block;
	cursor: pointer;
	color: black;
	font-family: Arial;
	font-size: 17px;
	text-align: center;
	text-decoration: none;
	text-shadow: 0px 1px 0px #283966;
	text-decoration: none;
	-moz-border-radius: 5px;
}

.btn2:hover {
	background-color: #476e9e;
	color: white;
}

.btn2:active {
	position: relative;
	top: 1px;
}

#footer {
	width: 1518px;
	height: 180px;
	margin-top: 20px;
	float: left;
	border: 1px solid #f0f0f0;
}

.line{

border-bottom:0.5px solid gray;
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
					<h3
						style="text-align: center; font-size: 25px; margin-top: 20px; margin-bottom: 30px;">작가
						가입/전환신청 상세</h3>
					<div id="btngrp">
						<div class="btnArray">
							<input type="button" value="전환거절" onclick="a();" class="btn2" />
						</div>
						<div class="btnArray">
							<input type="button" value="전환승인" onclick="b();" class="btn2" />
						</div>
						<div class="btnArray">
							<input type="button" onclick="location.href='permitWriApply'"
								value="돌아가기" class="btn2" id="atag">
						</div>
					</div>
					<div id="declarelist">
						<table id="paper">
							<tr>
								<th width="100" height="50"
									style="font-size: 20px; text-align: center; background-color: #dceefa;">구분</th>
								<c:set var="test" value="${mbInfo.mb_grade}" />
								<c:if test="${test eq 'S'}">
									<th colspan="4" width="800" height="50"
										style="font-size: 15px; padding-left: 10px;">임시</th>
								</c:if>
								<c:if test="${test eq 'X'}">
									<th colspan="4" width="800" height="50"
										style="font-size: 15px; padding-left: 10px;">전환</th>
								</c:if>
							</tr>
							<tr>
								<th width="100" height="40"
									style="font-size: 20px; text-align: center; background-color: #dceefa;">아이디</th>
								<th width="100" height="40"
									style="font-size: 20px; text-align: center; background-color: #dceefa;">이름</th>
								<th width="200" height="40"
									style="font-size: 20px; text-align: center; background-color: #dceefa;">생년월일</th>
								<th width="200" height="40"
									style="font-size: 20px; text-align: center; background-color: #dceefa;">경고횟수</th>
								<th width="300" height="40"
									style="font-size: 20px; text-align: center; background-color: #dceefa;">전문분야</th>
							</tr>

							<tr>
								<td width="100" height="30"
									style="font-size: 15px; text-align: center;">${mb_id}</td>
								<td width="100" height="30"
									style="font-size: 15px; text-align: center;" class="line">${mbInfo.mb_name}</td>
								<td width="200" height="30"
									style="font-size: 15px; text-align: center;" class="line">${mbInfo.mb_birth}</td>
								<td width="200" height="30"
									style="font-size: 15px; text-align: center;" class="line">${mbInfo.mb_ccnt}</td>
								<c:forEach var="cg" items="${cgList}">
									<c:if test="${cg.cg_code eq mj_cgcode}">
										<td width="300" height="30"
											style="font-size: 15px; text-align: center;" class="line">${cg.cg_name}</td>
									</c:if>
								</c:forEach>


							</tr>
							<tr>
								<th width="100" height="50"
									style="font-size: 20px; text-align: center; background-color: #dceefa;">포트폴리오</th>
								<td width="800" colspan="4" height="50"
									style="font-size: 15px; text-align: center;"  class="line"><a
									style="color: #dceefa;"
									href="mjfiledownload?mj_portf=${mj_portf}">${mj_portf}</a></td>
							</tr>
							<tr>
								<th width="100" height="400"
									style="font-size: 20px; text-align: center; background-color: #dceefa;">내용</th>
								<td width="800" colspan="4" height="400"
									style="font-size: 15px; text-align: center;">${mj_contents}</td>
							</tr>
						</table>
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
		setTimeout(function() {
			swal("해당회원의 요청을 거절 하였습니다.");
		}, 1500);
		f.action = "tcommentandrefuse?mb_id=${mb_id}";
		// 파일 전송이 필요할 경우만 씀.
		f.submit();
	}
	function b() {
		var f = document.formName;
		setTimeout(function() {
			swal("해당회원의 요청을 승인 하였습니다.");
		}, 1500);
		f.action = "tcommentandapply?mb_id=${mb_id}";
		f.submit();
	}
</script>
</html>