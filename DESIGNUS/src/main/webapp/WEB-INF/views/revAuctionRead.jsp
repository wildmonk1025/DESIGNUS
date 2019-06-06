<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>제작의뢰 상세보기</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<style>

div {
	margin: auto;
}

#mainheader {
	border: 1px solid black;
	width: 1520px;
	height: 170px;
}

#middle {
	margin-top: 50px;
	width: 1520px;
	height: auto;
	border: 1px solid blue;
}

#middle_img {
	float: left;
	border: 1px solid red;
	width: 300px;
	height: 300px;
	text-align: center;
}

#middle_img_lv1 {
	padding: 5px;
	border: 1px solid blue;
	width: 260px;
	height: 35px;
}

#middle_img_lv2 {
	padding: 5px;
	border: 1px solid blue;
	width: 260px;
	height: 230px;
	margin-top: 5px;
}

#middle_contents1 {
	float: left;
	border: 1px solid red;
	width: 900px;
	height: 300px;
	text-align: center;
}

#middle_contents1_lv1 {
	border: 1px solid blue;
	width: 850px;
	height: 60px;
	font-size: 30px;
}

#middle_contents1_lv2 {
	border: 1px solid green;
	width: 150px;
	height: 58px;
	font-size: 20px;
	float: right;
	color: red;
}

#middle_contents1_lv3 {
	border: 1px solid blue;
	width: 850px;
	height: 140px;
	font-size: 20px;
	text-align: right;
}

#middle_contents1_lv4 {
	margin-top: 5px;
	width: 850px;
	height: 80px;
	font-size: 50px;
	color: red;
	text-align: left;
}

#middle_contents2 {
	border: 1px solid red;
	width: 310px;
	height: 300px;
	float: left;
}

#middle_contents2_btn {
	width: 130px;
	height: 130px;
	margin: 150px 0px 0px 100px;
	color: white;
	border-radius: 15px;
	background-color: coral;
}

#middle_contents3 {
	border: 1px solid red;
	margin-top: 10px;
	float: left;
	width: 1514px;
	height: 200px;
}

#middle_contents3_lv1 {
	border: 1px solid blue;
	width : 1400px;
	height: 150px;
	overflow: auto;
	margin-top: 10px;
	font-size: 20px;
}

#middle_contents4 {
	border: 1px solid red;
	width : 1514px;
	heigth : auto;
	margin-top : 10px;
	float: left;
}

#middle_contents4_lv1 {
	border: 1px solid blue;
	padding: 30px;
	width: 1300px;
	height: 100px;
}

#middle_contents4_lv2 {
	border: 1px solid green;
	width: 1000px;
	height: 80px;
	float: left;
}

#middle_contents4_btn {
	width: 150px;
	float: right;	
}
#middle_contents4_lv3 {
	border: 1px solid blue;
	width: 1492px;
	heigth: auto;
	margin-left: 10px;
	float: left;
}
#footer {
	border: 1px solid red;
	width: 1514px;
	height: 170px;
	margin-top: 20px;
	float: left;
}

#lightboxshadow {
	position: absolute;
	top: 0;
	left: 0;
	width: 1650px;
	height: 2000px;
	background: #000;
	background-color: rgba(0, 0, 0, 0.7);
	z-index: 1000;
	display: none;
}

#lightbox_contents1 {
	border: 1px solid white;
	position: absolute;
	background-color: coral;
	left: 30%;
	top: 10%;
	padding: 50px;
	text-align: center;
	width: 500px;
	height: 500px;
	opacity: 100;
	z-index: 1010;
	display: none;
}

#revamn {
	border: 1px solid white;
	margin-top: 40px;
	text-align: center;
	width: 400px
}
</style>
</head>

<body>
	<div id="mainheader">
		<jsp:include page="main.jsp"/>
	</div>
	<div id="middle">
		<!-- div 카테고리와 이미지 -->
		<div id="middle_img">
			<div id="middle_img_lv1">카테고리 > ${raInfo.ra_cgcode}</div>
			<div id="middle_img_lv2">여기에 이미지</div>
		</div>
		
		<div id="middle_contents1">
			<div id="middle_contents1_lv1">여기에 상품 이름
			<div id="middle_contents1_lv2">꿍누르기♥</div>
			</div>
			<div id="middle_contents1_lv3">
				<table style="margin: 10px 0px 0px 10px; line-height: 200%">
					<tr>
						<th>작성자 :</th>
						<td>'${raInfo.ra_mbid}' 님</td>
						<td></td>
					</tr>
					<tr>
						<th>수량 :</th>
						<td style="font-size: 15px;">1EA(짝/켤레/쌍)</td>
						<td style="color: gray; font-size: 11px;">제작의뢰 수량은 DEFAULT 1개 입니다.</td>
					</tr>
					<tr>
						<th>회원님이 낙찰한 금액 :</th>
						<td colspan="2"><div id="tender_result">0원</div></td>
					</tr>
				</table>
				<div id="middle_contents1_lv4">경매 남은 시간 표시</div>
			</div>
		</div>
		<div id="middle_contents2">
			<button id="middle_contents2_btn">
				작가 의뢰 접수 <br> 및 견적서 첨부
			</button>
		</div>
		<div id="middle_contents3">
			<p style="font-size:25px; margin-left: 10px;">작가 접수내역</p>
			<div id="middle_contents3_lv1">
				<table>
					<tr>
						<td align="center" style="width: 200px">작가</td>
						<td style="width: 100px"><button id="select">의뢰결정</button></td>
						<td style="width: 200px">의뢰 접수 금액: 0원</td>
						<td colspan="2" style="width: 700px; text-align: right;">견적서
							<button id="writerselect">다운로드</button>
						</td>
					</tr>
				</table>
			</div>
		</div>
		<div id="middle_contents4">
			<p style="font-size:25px; margin: 10px 0px 10px 10px;">작가님 요청사항</p>
			<div id="middle_contents4_lv1">
				<p style="font-size:20px; color:blue;">제작 의뢰 도안(첨부파일)</p>
				<div id="middle_contents4_lv2">
					도안.pdf<button id="middle_contents4_btn">DOWNLOAD</button>
				</div>
			</div>
			<div id="middle_contents4_lv3">
				<p style="font-size:25px;">작성예시 및 유의사항
				<p>
					유의사항-- <br>
					1. 작가님에게 정확한 정보전달을 위해서 간단한 설명 및 도안을 자세히 올려주시기 바랍니다. <br>
					2. 욕설, 비방 및 의뢰사항과 관련없는 글에 대해서는 삭제 및 계정 제재대상이 될 수 있으니 유의합니다.<br>
					3. 기타 등등..<br>
					<br>
					작성예시-- <br>
					1. 사이즈는 (W)30mm X (H)20mm X (D)15mm 로 제작 부탁합니다. <br>
					2. 바닥 재질은 구리로 제작 하였으면 하며, 구리 수급 및 가공이 어려울 경우 나무로 만들어도 무관합니다. <br>
					3. 첨부된 도안에서 플라스틱은 유광으로 제작해야합니다. <br>
					4. 색상은 RGB색상표 기준으로 도안에 첨부 하였습니다.
				</p>
			</div>
		</div>
	<div id="footer">여기는 푸터 입니다.</div>
		<!-- 여기서부턴 라이트 박스 -->
	<div id="lightboxshadow">
		<div id="lightbox_contents1">
			<p>의뢰 접수 및 견적서 첨부</p>
			<hr style="color: black;">
			<div id="revamn">
				<form>
					<table>
						<tr style="width: 400px;">
							<td>의뢰접수금액</td>
							<td><input type="text" id="revamoney" name="revamoney"></td>
						</tr>
						<tr>
							<td>견적서 첨부</td>
							<td><input type="file" id="revafiley" name="revafiley"></td>
						</tr>
						<tr>
							<td>제작소요기간</td>
							<td><input type="text" id="revadate" name="revadate">일</td>
						</tr>

					</table>
					<button id="meneyapply">전송</button>

					<input type="button" id="meneycancle" value="취소"/>
				</form>
			</div>
		</div>
	</div>
	</div>
	

</body>
<script>
	$("#middle_contents2_btn").click(function() {
		$('#lightboxshadow').css("display", "block")
		$('#lightbox_contents1').css("display", "block")
	});
	$("#lightboxshadow").click(function() {
		$('#lightboxshadow').css("display", "none")
		$('#lightbox_contents1').css("display", "none")
	});
	$("#meneycancle").click(function() {
		$('#lightboxshadow').css("display", "none")
		$('#lightbox_contents1').css("display", "none")
	});

/* 	var chk = ${ra_num};
	$(document).ready(function() {
		alert("제작의뢰 리스트 시퀀스 "+chk+"번 글 입니다.");
	}); */

</script>
</html>