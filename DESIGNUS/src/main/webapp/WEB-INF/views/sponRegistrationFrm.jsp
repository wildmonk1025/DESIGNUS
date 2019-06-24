<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>
<head>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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

#middle {
	width: 1520px;
	height: auto;
	margin-top: 50px;
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

#footer {
	border: 1px solid red;
	width: 1518px;
	height: 180px;
	margin-top: 20px;
	float: left;
	border: 1px solid #f0f0f0;
}

#title {
	width: 1310px;
	height: 60px;
	margin-left: 100px;
	margin-right: 100px;
	padding-top: 20px;
	padding-left: 10px;
	font-size: 35px;
	color: white;
	background-color: #8181F7;
	font-size: 35px;
	color: white;
	box-shadow: 3px 0px 8px -3px rgba(0,0,0,0.56);
}

#contents {
	width: 1310px;
	margin-top: 10px;
	height: 500px;
	border: 1px solid #f0f0f0;
	box-shadow: inset -1px 0px 6px 0px rgba(0,0,0,0.27);
}

#tableCont {
	/* border:none; */
	width: 100%;
	height: 100%;

}

input {
	width: 100%;
	height: 44;
	border: none;
	font-size: 20;
}

#btn2 {
	float: right;
	width: 350px;
	height: 60px;
}

.btn2 {
	float: right;
	width: 120px;
	height: 50px;
	background-color: coral;
	color: white;
	border-radius: 5px;
	font-style: italic;
	font-weight: 900;
	font-size: 18px;
	margin: 10px 10px 0px 0px;
}
#img_wrap {
	width: 300px;
	height: 300px;
}
#LoadImg2 {
	margin: 10px;
	border: none;
}
</style>
<title>Home</title>
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
</head>
<body>
	<div id="main">
	<div id="mainheader">
		<jsp:include page="main.jsp" />
	</div>
	</div>

	<div id="middle">
		<div id="title">후원 상품 등록</div>
		<div id="contents">
			<form action="sponupload" name="sponwriter" method="post"
				enctype="multipart/form-data">
				<table id="tableCont" style="text-align: center">
					<tr style="height: 50">
						<td style="width: 150px; font-weight: 800; background-color: #F5BCA9;">제품명</td>
						<td colspan="3" style="border:1px solid #f0f0f0;"><input type="text" id="ss_title"
							name="ss_title" style="padding-left:10px; "></td>
					</tr>
					<tr style="height: 50">
						<td style="width: 150px; background-color: #F5BCA9; font-weight: 800;">가격</td>
						<td style="width: 400; border:1px solid #f0f0f0;"><input id="ss_price" name="ss_price"
							type="number" style="width: 100%; padding-left:10px;"></td>
						<td style="width: 100; background-color: #F5BCA9; font-weight: 800;">목표주문량</td>
						<td style="width: 400; border:1px solid #f0f0f0;"><input id="ss_goalqty"
							name="ss_goalqty" type="number" style="width: 100%; padding-left:10px;"></td>
					</tr>
					<tr style="height: 50">
						<td style=" background-color: #F5BCA9; font-weight: 800;">이미지</td>
						<td colspan="3"><input type="file" id="ssi_imgSysName" name="ssi_imgSysName" style="width: 700px; float: left;"
						                  value='파일 첨부'  onchange='fileChk(this)' multiple>
							            <input type='hidden' id='fileCheck' value='0' name='fileCheck'>
							<!-- <button
								style="width: 6%; height: 48; float: right; border-radius: 100px">╉</button>
							<button style="width: 14%; height: 48; float: right;">파일첨부</button> -->
						</td>
					</tr>
					<tr style="height: 100">
						<td colspan="2" rowspan="2">
						<div id="img_wrap"><img id="LoadImg2" src="*" alt="your image" style="width: 100%; height: 100%;"/></div></td>
						<td colspan="2" rowspan="2">
						<textarea id="ss_contents" name="ss_contents" style="margin:10px 10px 0px 0px; width: 850px; height: 300px;
						font-size: 17px; resize: none;" rows="20" cols="10" placeholder="상품 상세설명을 작성하세요."></textarea></td>
					</tr>
				</table>
				<div id="btn2">
				    <input class="btn2" type="submit" value="후원 등록" >
					<button type="button" class="btn2"
						onclick="location.href = 'sponsor'" value="돌아가기">돌아가기</button>
				</div>
			</form>
		</div>
		<div id="footer">
		<hr style="width:100%; border: 2px solid coral; align: center;">
		<jsp:include page="footer.jsp"></jsp:include></div>
	</div>


</body>
<script>
	function readURL(input) {

		if (input.files && input.files[0]) {
			var reader = new FileReader();

			reader.onload = function(e) {
				$('#LoadImg2').attr('src', e.target.result);
			}

			reader.readAsDataURL(input.files[0]);
		}
	}

	$("#ssi_imgSysName").change(function() {
		readURL(this);
	});
	
	function fileChk(elem) {
		console.dir(elem);
		if(elem.value==""){
			console.log("empty"); 
			$('#fileCheck').val(0); //파일 첨부 안했음
		}else{
			console.log("Notempty")
			$('#fileCheck').val(1);//파일 첨부 했음
		}
	}
</script>
</html>