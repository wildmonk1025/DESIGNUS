<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%> 
<%@ page session="false"%>
<html>
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<title>Home</title>
<style>
	::-webkit-scrollbar{width: 5px;}
	::-webkit-scrollbar-track {background-color:white;}
	::-webkit-scrollbar-thumb {background-color:coral;border-radius: 5px;}
	::-webkit-scrollbar-thumb:hover {background: coral;}
	::-webkit-scrollbar-button:start:decrement,::-webkit-scrollbar-button:end:increment {width:0px;height:0px;background:coral;} 
#main {
	width: 1520px;
	height: 170px;
	position: relative;
}

#mainheader {
	border: 1px solid black;
	width: 1518px;
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

#middle_content1, #middle_content2, #middle_content3 {
	width: 1518px;
	height: 420px;
	float: left;
	border: 1px solid orange;
}

#middle_content1_title, #middle_content2_title, #middle_content3_title {
	width: 1450px;
	height: 40px;
	float: left;
	margin: 20px 20px 10px 20px;
	padding-left: 10px;
	font-size: 25px;
	font-weight: 800;
	border: 1px solid orange;
}

#middle_content1_lv1, #middle_content2_lv1, #middle_content3_lv1 {
	width: 1460px;
	height: 300px;
	float: left;
	margin: 0px 20px 10px 20px;
	border: 1px solid orange;
}

#middle_content1_lv2, #middle_content2_lv2, #middle_content3_lv2 {

	width: 1460px;
	height: 300px;
 	overflow-x: auto;
 	overflow-y: hidden;
	white-space: nowrap;
}

.recommlist, .recommlist2, .recommlist3 {
	width: 280px;
	height: 98%;
	display:inline-block;
	border: 1px solid black;
	border-radius: 10px;
	margin-left: 10px;
}

.recomm_img,.recomm_img2,.recomm_img3 {
	width: 270px;
	height: 220px;
}

.recomm_text,.recomm_text2,.recomm_text3 {
	width: 270px;
	height: 50px;
	text-align: center;
}

.titlestyle {
 	font-size:18px;
 	font-weight:700;
 }

#footer {
	border: 1px solid red;
	width: 1518px;
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
			<div id="middle_content1_title">추천 출품작</div>
			<div id="middle_content1_lv1">
			<div id="middle_content1_lv2">
			<c:forEach var="rl" items="${recommList}">
				<div class="recommlist">
				<div class="recomm_img"><img src="<spring:url value='resources/upload/${rl.aui_img}'/>" width="100%" height="100%"/></div>
				<div class="recomm_text"><p class="titlestyle">${rl.au_title}</p><p>구매가:${rl.au_inprice}원 | 작가:${rl.au_mbid_w}</p></div>
				</div>
			</c:forEach>
			</div>
			</div>
		</div>
		<div id="middle_content2">
			<div id="middle_content2_title">진행중인 추천 제작의뢰</div>
			<div id="middle_content2_lv1">
			<div id="middle_content2_lv2">
			<c:forEach var="rl2" items="${recommList_ra}">
				<div class="recommlist2">
				<div class="recomm_img2"><img src="<spring:url value='resources/upload/${rl2.ra_image}'/>" width="100%" height="100%"/></div>
				<c:if test="${rl2.rat_price != 0}">
				<div class="recomm_text2"><p class="titlestyle">${rl2.ra_title}</p><p>의뢰접수 최저가:${rl2.rat_price}원</p></div></c:if>
				<c:if test="${rl2.rat_price == 0}">
				<div class="recomm_text2"><p class="titlestyle">${rl2.ra_title}</p><p>의뢰접수 최저가: - </p></div></c:if>
				</div>
			</c:forEach>
			</div>
			</div>
		</div>
		
		<div id="middle_content3">
			<div id="middle_content3_title">오늘의 후원</div>
			<div id="middle_content3_lv1">
			<div id="middle_content3_lv2">
			<c:forEach var="??" items="${recommList}">
				<div class="??">
				<div class="??_img"><img src="<spring:url value='resources/upload/${rl}'/>" width="100%" height="100%"/></div>
				<div class="??_text"><p class="titlestyle">${rl}</p><p>구매가:${rl}원 | 작가:${rl}</p></div>
				</div>
			</c:forEach>
			</div>
			</div>
		</div>
		
		<div id="footer">
			<jsp:include page="footer.jsp"></jsp:include>
		</div>
	</div>
</body>
<script>
	//var rList = ${rList}

	window.onload = function() {
		var flag = ${logout};
		if (flag == 1) {
			swal("로그아웃 되었습니다.");
		}
	}
	
</script>
</html>