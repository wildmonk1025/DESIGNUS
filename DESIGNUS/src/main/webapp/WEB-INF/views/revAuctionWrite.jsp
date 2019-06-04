<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<style>
#mainheader {
	border: 1px solid black;
	width: 1520px;
	height: 170px;
}

div {
	margin: auto;
}

#revauctionmain {
	width: 1500px;
	height: 600px;
}

#revauctiontop {
	padding-top: 30px;
	width: 1400px;
	height: 100px;
	font-size: 30px;
	padding-top: 50px;
	padding-left: 30px;
	background-color: orange;
	color: white;
}

#mainheader {
	width: 1500px;
	height: 170;
	border: 1px solid black;
}

#revauctionunlock {
	padding-top: 10px;
	width: 800px;
	display: none;
}

#revauctionlock {
	padding-top: 10px;
	width: 800px;
	display: block;
}

tr, td {
	width: 150px;
}

input[type="text"] {
	width: 250px;
	height: 25px;
}

input[type="file"] {
	width: 250px;
	height: 25px;
}

#btn {
	width: 250px;
}

button {
	width: 100px;
	height: 30px;
	background-color: orange;
	color: white
}

p {
	color: deepskyblue;
	height: auto;
	font-size: 12px;
}

select {
	width: 150px;
	height: 25px;
}

#revamiddle {
	padding-top: 30px;
	width: 700;
}

#lock, #unlock {
	width: 80px;
	height: 30px;
	background-color: yellowgreen;
	color: white;
}
</style>
</head>

<body>
	<div id="mainheader">
		<jsp:include page="main.jsp" /></div>
	<div id="revauctionmain">
		<div id="revauctiontop">제작의뢰 페이지</div>
		<div id="revamiddle">
			<input type="button" id="lock" name="ra_oc" value="비공개" />
			<input type="button" id="unlock" name="ra_oc" value="공개" />
		</div>
		<div id="revauctionlock">

			<form action="revauctionsubmit" id="revauction" method="post" enctype="multipart/form-data">
				<table class="revauctable">
					<tr align="center">
						<td>요청 제목</td>
						<td><input type="text" id="reva_Ltitle" name="ra_title">
						</td>
					</tr>
					<tr>
						<td align="center">카테고리</td>
						<td><select id="reva_Lcate" name="ra_cgcode">
								<option selected>선택</option>
								<option value="100">귀금속 공예</option>
								<option value="110">원목 공예</option>
								<option value="120">종이 공예</option>
								<option value="130">가죽 공예</option>
								<option value="140">천 공예</option>
								<option value="150">플라스틱 공예</option>
								<option value="160">도자기 공예</option>
								<option value="170">가공 식품</option>
								<option value="180">휴대폰 액세서리</option>
								<option value="190">페인팅,캐리커쳐,캘리</option>
								<option value="200">유아 용품</option>
								
						</select></td>
					</tr>
					<tr align="center">
						<td>대표이미지</td>
						<td><input type="file" id="reva_Limg" name="ra_image">
						</td>
					</tr>
					<tr align="center">
						<td>제작사항</td>
						<td><input type="file" id="reva_Lfile" name="ra_file">
						</td>
					</tr>
<!-- 					<tr align="center">
						<td>작가</td>
						<td><input type="text" id="reva_Lmade" name="ra_mbid_w"
							placeholder="검색어를 입력해주세요."></td>
					</tr> -->
					<tr align="center">
						<td>수량</td>
						<td align="left" style="color: mediumvioletred">1개</td>
					</tr>
					<tr>
						<td><input type="checkbox" value="selfcheck"> 개인정보동의</td>
						<td>
							<p>자세히보기</p>
						</td>
					</tr>

				</table>
				<textarea id="reva_contents" cols="30" rows="10" name="ra_contents"
					style="width: 700; height: 150" placeholder="작가에게 전달할 말을 적어주세요"></textarea>

				<br>
				<div id="btn">
					<button id="submit">제출하기</button>
					<button id="back">돌아가기</button>
				</div>

			</form>
		</div>
		<div id="revauctionunlock">

		</div>
	</div>


</body>
<script>
	$("#lock").click(function() {
		$("#revauctionlock").css("display", "block");
		$("#revauctionunlock").css("display", "none");
	});
	$("#unlock").click(function() {
		$("#revauctionlock").css("display", "block");
		$("#revauctionunlock").css("display", "inline");
	});
</script>

</html>

