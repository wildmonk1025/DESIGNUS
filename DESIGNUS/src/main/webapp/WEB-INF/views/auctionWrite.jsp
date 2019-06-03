<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	#mainheader {
	border: 1px solid black;
	width: 1520px;
	height: 170px;
	}

	#homeMain {
	border: 1px solid black;
	width: 1520px;
	height: 600px;
	}

	.btn1 {
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

	#list {
	width: 1420px;
	height: 480px;
	float: left;
	margin: 50px;
	display: inline-block;
	}

	#footercheck {
	border: 1px solid black;
	width: 1520px;
	height: 150px;
	}
	.ipt{
		font-size:18px;
		border: 0.1 solid gray;
		height: 55px;
		width: 99%;
		text-align: center;
	}
	select{
		width: 100%;
		height: 55px;
		border: 0.1px solid gray;
	}
	#mainTable{
		float:left;
		width:450px;
		border-bottom: 0.5px solid orange;
		border-top: 0.5px solid orange;
	}
	#phtDiv{
		display:block;
		border: 1px solid black;
		position:relative;
		width: 400px;
		height: 380px;
	}
	
	#File{
		border: 1px solid black;
		width: 400px;
		height: 50px;
	}
	#photo{
		border: 1px soild black;
		width: 400px; 
		height: 330px;
	}
	input[type="file"]{
		width: 400px;
		height: 50px;
		font-size: 16px;
	}
	
</style>
</head>

<body>
	<div id="mainheader">
		<jsp:include page="main.jsp" />
	</div>

	<div id="homeMain">
		<button id="revauctionbtn" class="btn1">제작의뢰 요청하기</button>
		<button id="auctionbtn" class="btn1"><a href="auctionWrite">출품등록하기</a></button>
		<div id="list">
			<h3 style="color: orange;">출품 등록</h3>
			<table id="mainTable">
				<tr>
					<th style="height: 55px; width: 80px;">작가 아이디</th>
					<td style="width: 330px;"><input type="text" readonly="readonly" value="ID" class="ipt"></td>
				</tr>
				<tr>
					<th>수량</th>
					<td><input type="number" min="1" max="99" class="ipt"></td>
				</tr>
				<tr>
					<th>제품명</th>
					<td><input type="text" class="ipt" maxlength="20"></td>
				</tr>
				<tr>
					<th style="height: 50px; width: 100px;">제품종류</th>
					<td>
						<select>
							<option>선택해주세요</option>
							<option>나무</option>
							<option>금속</option>
							<option>귀금속</option>
							<option>종이</option>
							<option>가죽</option>
							<option>천</option>
							<option>플라스틱</option>
							<option>도자기</option>
						</select>
					</td>
				</tr>
				<tr>
					<th>입찰시작가격</th>
					<td><input type="number" min="1" class="ipt"></td>
				</tr>
				<tr>
					<th>즉시구매가</th>
					<td><input type="number" min="1" class="ipt"></td>
				</tr>
			</table>
			<div id="phtDiv">
				<div id="photo">
					사진뜨자
				</div>
				<div id="File">
					<input type="file">
				</div>
			</div>
			
		</div>
		
		
		
	</div>
	<div id="footercheck">
		<jsp:include page="footer.jsp"></jsp:include></div>

</body>
<script>
	/*	숫자 천단위 마다 콤마 찍는 소스 
	
	<input type="number" min="1" class="ipt" onkeyup="numberWithCommas(this.vale)">
	function numberWithCommas(x) {
		x = x.replace(/[^0-9]/g,'');
		x = x.replace(/,/g/'');
		$(".ipt").val(x.replace(/\B(?=(\d{3})+(?!\d))/g,","));
	} 
	*/

</script>
</html>