<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<style>
#mainheader {
	border: 1px solid black;
	width: 1520px;
	height: 170px;
}

#homeMain {
	border: 1px solid black;
	width: 1520px;
	height: auto;
	display: inline-block;
}

.btn {
	background-color: orange;
	width: 150px;
	height: 30px;
	color: white;
	float: right;
}

#coklist {
	width: 1000px;
	height: 150px;
	float: left;
	display: block;
}

#bestlist {
	width: 1000px;
	height: 150px;
	float: left;
	display: block;
}

#footercheck {
	border: 1px solid black;
	width: 1520px;
	height: 150px;
}

#reviewRead1 {
	position: relative;
	float: left;
	width: 1000px;
	height: 100px;
	top: 50px;
	left: 50px;
}

#reviewRead2 {
	position: relative;
	float: left;
	width: 1000px;
	height: 50px;
	top: 50px;
	left: 50px;
}

#reviewRead3 {
	position: relative;
	float: left;
	width: 1000px;
	height: auto;
	top: 60px;
	left: 50px;
}

#reviewRead4 {
	position: relative;
	float: left;
	width: 1000px;
	height: 40px;
	top: 60px;
	left: 50px;
}

#reviewRead5 {
	position: relative;
	float: left;
	width: 1000px;
	top: 60px;
	left: 50px;
}

#reviewRead6 {
	position: relative;
	float: left;
	width: 1000px;
	height: 50px;
	top: 60px;
	left: 50px;
}

.btn2 {
	width: 150px;
	height: 98px;
	background-color: white;
}

.btn3 {
	position: relative;
	height: 40px;
	top: 28px;
	left: 387px;
}

.btn4 {
	position: relative;
	height: 40px;
	float: right;
	right: 20px;
	bottom: 15px;
}

.btn5 {
	position: relative;
	width: 100px;
	height: 50px;
	float: right;
	bottom: 21px;
}

#tableLine {
	border-bottom: 0.5px solid orange;
	border-top: 0.5px solid orange;
}

input {
	width: 70px;
}

.clear {
	width: 1000px;
	height: 70px;
	clear: both;
}

.test {
	border: 1px solid black;
	position: relative;
	width: 920px;
	height: 200px;
	top: 20px;
	left: 20px;
	padding: 20px;
}
</style>
<title>Home</title>
</head>

<body>
	<div id="mainheader">
		<jsp:include page="main.jsp" />
	</div>

	<div id="homeMain">
		<button id="revauctionbtn" class="btn">제작의뢰 요청하기</button>
		<button id="auctionbtn" class="btn">출품등록하기</button>
		<div id="reviewRead1">
			<button class="btn2">자유게시판</button>
			<button style="background-color: orange" class="btn2">이용후기</button>
			<button class="btn2">공지사항</button>
			<input type="button" class="btn3" value="수정"> <input
				type="button" class="btn3" value="삭제">
		</div>
		<div id="reviewRead2">
			<table style="text-align: center" id="tableLine">
				<tr>
					<th style="width: 100; height: 50">1</th>
					<th style="width: 500">게시판 이용수칙(필독)</th>
					<th style="width: 125">Lee수원</th>
					<th style="width: 125">2018-12-26</th>
					<th style="width: 75">542</th>
					<th style="width: 75">5429</th>
				</tr>
			</table>
		</div>
		<div id="reviewRead3">
			<div class="test">사진</div>
			<div class="test">글</div>

			<div class="clear"></div>

		</div>
		<div id="reviewRead4">
			<input type="button" class="btn4" value="목록보기"> <input
				type="button" style="background-color: orange" class="btn4"
				value="추천하기">
		</div>
		<div id="reviewRead5">
			<table style="text-align: center;">
				<tr>
					<td style="width: 110">1</td>
					<td style="width: 550; text-align: left">나 오십인데 내 동년배들 다 디자이너스
						쓴다</td>
					<td style="width: 130">정병남</td>
					<td style="width: 180">2019-05-31</td>
				</tr>
				<tr>
					<td style="width: 110">2</td>
					<td style="width: 550; text-align: left">스윽 까보니 바밤바</td>
					<td style="width: 130">조용환</td>
					<td style="width: 180">2019-05-31</td>
				</tr>
			</table>
			<div class="clear"></div>
		</div>
		<div id="reviewRead6">
			<form>
				<input type="text"
					style="width: 900; height: 50; float: left; font-size: 20"
					placeholder="여기에 댓글을 입력해주세요"><br>
				<button class="btn5">댓글쓰기</button>
			</form>

		</div>



		<div class="clear"></div>

	</div>




	<div id="footercheck">
		<jsp:include page="footer.jsp"></jsp:include>

	</div>

</body>
</html>