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
hr {
	width: 1200px;
}

div {
	margin: auto;
}

#mainheader {
	border: 1px solid black;
	width: 1520px;
	height: 170px;
}

#revauctionreadmain {
	padding: 40px;
	margin-top: 30px;
	width: 1200px;
	height: 1000px;
	border: 1px solid orange;
}

#revareadimgdiv {
	border: 1px solid red;
	width: 20%;
	height: 300px;
	float: left;
}

#revareadtitlediv {
	border: 1px solid red;
	margin-left: 40px;
	width: 50%;
	padding: 30px;
	padding-right: 0px;
	height: 240px;
	float: left;
}

#revareadcate {
	border: 1px solid blue;
	width: 100%;
	height: 30px;
	text-align: center;
	padding-top: 10px;
}

#revareadimg {
	margin: 30px;
	padding: 20px;
	border: 1px solid blue;
	width: 60%;
	height: 50%
}

#revasubmitbtn {
	border: 1px solid red;
	margin-left: 40px;
	width: 20%;
	height: 300px;
	float: left;
}

#revsubmitbtn {
	background-color: coral;
	width: 120px;
	height: 120px;
	float: left;
	margin-top: 150px;
	color: white;
	border-radius: 15px;
}

#revareadtitle {
	border: 1px solid blue;
	width: 400px;
	height: 50px;
	float: left;
}

#bracketlistgo {
	border: 1px solid blue;
	width: 150px;
	padding-top: 15px;
	height: 35px;
	float: left;
	color: red;
}

#revareadcontents {
	margin-top: 70px;
	width: 550px;
	border: 1px solid blue;
	height: 90px;
}

#revauctiontime {
	margin-top: 20px;
	width: 50% px;
	height: 70px;
	border: 1px solid red;
}

#revacontentswriter {
	border: 1px solid red;
	margin-top: 30;
	float: left;
	width: 1150px;
}

#revawriter {
	overflow: auto;
	margin: 20px;
	border: 1px solid blue;
}

#writername {
	margin-left: 30px;
	font-size: 20px;
}

.tablewritercontents>td {
	text-align: center;
	width: 200px;
}

#readcontents {
	width: 80%;
	float: left;
}

#readpcontents {
	font-size: 20px
}

#revadesign {
	padding: 30px;
	border: 1px solid red;
	width: 1100px;
	height: 100px;
}

#revadesingdown {
	border: 1px solid orange;
	width: 400px;
	height: 80px;
	float: right;
}

#prevacontents {
	font-size: 20px;
}
</style>
</head>
<body>
	<div id="mainheader">
		<!--<jsp:include page="main.jsp"/>-->
	</div>
	<div id="revauctionreadmain">
		<div id="revareadimgdiv">
			<div id="revareadcate">카테고리 표시</div>
			<div id="revareadimg">여기에 이미지</div>
		</div>
		<div id="revareadtitlediv">
			<div id="revareadtitle" style="font-size: 30px;">여기에 상품 이름</div>
			<div id="bracketlistgo">꿍누르기♥</div>
			<div id="revareadcontents">
				<table>
					<tr>
						<td>작성자</td>
						<td>아이디</td>
					</tr>
					<tr>
						<td>수량</td>
						<td>1EA(짝/켤레/쌍)</td>
						<td style="color: gray; font-size: 10px;">수량은 1개로 고정입니다.</td>
					</tr>
					<tr>
						<td colspan="2">회원님이 낙찰한 금액</td>
						<td>0원</td>
					</tr>
				</table>
				<div id="revauctiontime">경매 남은 시간 표시</div>
			</div>
		</div>
		<div id="revasubmitbtn">
			<button id="revsubmitbtn">
				작가 의뢰 접수 <br> 및 견적서 첨부
			</button>
		</div>
		<div id="revacontentswriter">
			<p id="writername">작가 접수내역</p>
			<div id="revawriter">
				<table class="tablewritercontents">
					<tr>
						<td align="center" style="width: 200px">작가</td>
						<td style="width: 100px"><button id="select">의뢰결정</button></td>
						<td style="width: 200px">의뢰 접수 금액: 0원</td>
						<td colspan="2" style="width: 700px; text-align: right;">견적서
							<button id="writerselect">다운로드</button>
						</td>

					</tr>

					<tr>
						<td align="center" style="width: 200px">작가</td>
						<td style="width: 100px"><button id="select">의뢰결정</button></td>
						<td style="width: 200px">의뢰 접수 금액: 0원</td>
						<td colspan="2" style="width: 700px; text-align: right;">견적서
							<button id="writerselect">다운로드</button>
						</td>

					</tr>
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
		<div id="readcontents">
			<p id="readpcontents">작가님 요청사항</p>
			<hr />
			<div id="revadesign">
				제작 의뢰 도안(첨부파일)
				<div id="revadesingdown">
					도안.pdf<br> 도안.pdf
				</div>
			</div>
			<div id="revareaddesigncontents">
				<p id="prevacontents">작성예시 및 유의사항
				<p>
				<p>
					유의사항-- <br>1. 작가님에게 정확한 정보전달을 위해서 간단한 설명 및 도안을 자세히 올려주시기 바랍니다.
					<br> 2. 욕설, 비방 및 의뢰사항과 관련없는 글에 대해서는 삭제 및 계정 제재대상이 될 수 있으니
					유의합니다.<br> 3. 기타 등등..<br>
					<br>작성예시-- <br> 1. 사이즈는 (W)30mm X (H)20mm X (D)15mm 로 제작
					부탁합니다. <br> 2. 바닥 재질은 구리로 제작 하였으면 하며, 구리 수급 및 가공이 어려울 경우 나무로
					만들어도 무관합니다. <br> 3. 첨부된 도안에서 플라스틱은 유광으로 제작해야합니다. <br> 4.
					색상은 RGB색상표 기준으로 도안에 첨부 하였습니다.
				</p>
			</div>
		</div>
	</div>
</body>
</html>