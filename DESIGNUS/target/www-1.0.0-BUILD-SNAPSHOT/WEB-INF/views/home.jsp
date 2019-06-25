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
	::-webkit-scrollbar{width: 3px;}
	::-webkit-scrollbar-track {background-color:white;}
	::-webkit-scrollbar-thumb {background-color:#F5BCA9;border-radius: 5px;}
	::-webkit-scrollbar-thumb:hover {background: #F5BCA9;}
	::-webkit-scrollbar-button:start:decrement,::-webkit-scrollbar-button:end:increment {width:0px;height:0px;background:coral;} 
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

#middle {
	width: 1520px;
	height: auto;
	margin-top: 50px;
}

#middle_content1, #middle_content2, #middle_content3 {
	width: 1518px;
	height: 440px;
	float: left;
}

#middle_content1_title, #middle_content2_title, #middle_content3_title {
	width: 1450px;
	height: 40px;
	float: left;
	margin: 20px 20px 10px 20px;
	padding-top: 5px;
	padding-left: 10px;
	font-size: 29px;
	font-weight: 800;
	border: 1px solid #f0f0f0;
	border-radius: 5px;
	box-shadow: 3px 0px 8px -3px rgba(0,0,0,0.56);
}

#middle_content1_lv1, #middle_content2_lv1, #middle_content3_lv1 {
	width: 1460px;
	height: 330px;
	float: left;
	margin: 0px 20px 0px 20px;
}

#middle_content1_lv2, #middle_content2_lv2, #middle_content3_lv2 {
	width: 1460px;
	height: 320px;
 	overflow-x: auto;
 	overflow-y: hidden;
	white-space: nowrap;
	border: 1px solid #f0f0f0;
	border-radius: 5px;
	box-shadow: 3px 0px 8px -3px rgba(0,0,0,0.56);
}

.recommlist, .recommlist2, .recommlist3 {
	width: 280px;
	height: 280px;
	display:inline-block;
	border: 1px solid #f0f0f0;
	border-radius: 10px;
	margin-top: 10px;
	margin-left: 10px;
	box-shadow: 3px 0px 8px -3px rgba(0,0,0,0.56);
}

.recommlist:hover, .recommlist2:hover, .recommlist3:hover {
	transform: scale(1.05);
	border: 2px solid coral;
	transition-duration: 1s;
}

.recomm_img,.recomm_img2,.recomm_img3 {
	width: 270px;
	height: 220px;
	border-top-right-radius: 10px;
	border-top-left-radius: 10px; 
}


.recomm_text,.recomm_text2,.recomm_text3 {
	width: 270px;
	height: 50px;
	text-align: center;
	background-color: #FBEFF2;
	border-bottom-right-radius: 10px;
	border-bottom-left-radius: 10px; 
}

.titlestyle {
 	font-size:18px;
 	font-weight:700;
 }

#footer {
	border: 1px solid red;
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
		<div id="middle_content1">
			<div id="middle_content1_title" style="background-color:#F6D8CE;">&nbsp;추천 출품작</div>
			<div id="middle_content1_lv1">
			<div id="middle_content1_lv2">
			<c:forEach var="rl" items="${recommList}">
				<div class="recommlist" onclick="javascript:location.href='auctionRead?au_num=${rl.au_num}'">
				<div class="recomm_img"><img src="resources/upload/${rl.aui_img}" width="100%" height="100%"/></div>
				<div class="recomm_text"><p class="titlestyle">${rl.au_title}</p><p>구매가:${rl.au_inprice}원 | 작가:${rl.au_mbid_w}</p></div>
				</div>
			</c:forEach>
			</div>
			</div>
		</div>
		<div id="middle_content2">
			<div id="middle_content2_title" style="background-color:#F6D8CE;">&nbsp;진행중인 추천 제작의뢰</div>
			<div id="middle_content2_lv1">
			<div id="middle_content2_lv2">
			<c:forEach var="rl2" items="${recommList_ra}">
				<div class="recommlist2" onclick="javascript:location.href='revauctionread?ra_num=${rl2.ra_num}'">
				<div class="recomm_img2"><img src="resources/upload/${rl2.ra_image}" width="100%" height="100%"/></div>
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
			<div id="middle_content3_title" style="background-color:#F6D8CE;">&nbsp;관심 후원</div>
			<div id="middle_content3_lv1">
			<div id="middle_content3_lv2">
			<c:forEach var="rl3" items="${recommList_ss}">
				<div class="recommlist3" onclick="javascript:location.href='sponproduct?ss_num=${rl3.ss_num}'">
				<div class="recomm_img3"><img src="resources/upload/${rl3.ssi_img}" width="100%" height="100%"/></div>
				<div class="recomm_text3"><p class="titlestyle">${rl3.ss_title}</p><p>후원 진행상황: ${rl3.ss_curPercent} %</p></div>
				</div>
			</c:forEach>
			</div>
			</div>
		</div>
		<div id="footer">
		<hr style="width:100%; border: 2px solid coral; align: center;">	
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