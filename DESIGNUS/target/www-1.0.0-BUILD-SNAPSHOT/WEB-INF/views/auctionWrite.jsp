<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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


#homeMain {
	width: 1520px;
	height: auto;
	magin-top: 50px;
	border: 1px solid #f0f0f0;
	box-shadow: 3px 0px 8px -3px rgba(0,0,0,0.56);
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
	width: 1400px;
	height: 600px;
	float: left;
	margin: 50px;
	display: inline-block;
	border: 1px solid #f0f0f0;
	box-shadow: 3px 0px 8px -3px rgba(0,0,0,0.56);
}

#footer {
	width: 1518px;
	height: 180px;
	margin-top: 20px;
	float: left;
	border: 1px solid #f0f0f0;
}

.ipt {
	font-size: 18px;
	border: 0.1 solid gray;
	height: 55px;
	width: 99%;
	text-align: center;
}

select {
	width: 100%;
	height: 55px;
	border: 0.1px solid gray;
}

#mainTable {
	margin-top: 20px;
	margin-left: 50px;
	float: left;
	width: 450px;
	border-bottom: 0.5px solid orange;
	border-top: 0.5px solid orange;
	border: 1px solid #f0f0f0;
}

#phtDiv {
	margin-top: 20px;
	margin-left: 50px; float : left;
	position: relative;
	width: 400px;
	height: 380px;
	float: left;
	border: 1px solid #f0f0f0;
}

#File {
	border: 1px solid black;
	width: 400px;
	height: 250px;
}

#photo {
	display: inline;
	border: 1px soild black;
	width: 405px;
	height: 130px;
}

input[type="file"] {
	width: 400px;
	height: 50px;
	font-size: 16px;
}

#contents {
	margin-left : 10px;
	padding-left : 10px;
	float: left;
	position: relative;
	width: 400px;
	height: 380px;
}

textarea {
	margin-top: 20px;
	width: 400px;
	height: 380px;
	resize: none;
	font-size: 18px;
	border: 1px solid #f0f0f0;
}

#pht1 {
	float: left;
	width: 398px;
	height: 190px;
}


#addBtn {
	width: 100%;
}
input[type="file"]{
	color: gray;
}
.Btn5{
	float: right;
	width: 120px;
	height: 50px;
	background-color: coral;
	color: white;
	border-radius: 5px;
	font-style: italic;
	font-weight: 900;
	font-size: 18px;
	margin: 38px 18px 0px 0px;
}
a{
	text-decoration: none;
	color: black;
}



</style>
</head>

<body>
	<div id="main">
	<div id="mainheader">
		<jsp:include page="main.jsp" />
	</div>
	</div>

	<div id="homeMain">
		<div id="list">
			<div style="color: white; background-color:#8181F7; font-size:35px; width: 1390px; height:80px;
			padding-top: 20px; padding-left:10px; float:left; box-shadow: 3px 0px 8px -3px rgba(0,0,0,0.56);">출품 등록</div>
			<form action="auctionWriteSubmit" name="auctionWriteFrm" method="post" enctype="multipart/form-data">
				<table id="mainTable">
					<tr>
						<th style="height: 55px; width: 80px;">작가 아이디</th>
						<td style="width: 330px;"><input type="text"
							readonly="readonly" value="${id}" class="ipt" name="au_mbid_w"></td>
					</tr>
					<tr>
						<th>제품명</th>
						<td><input type="text" class="ipt" maxlength="20" name="au_title"></td>
					</tr>
					<tr>
						<th>수량</th>
						<td><input type="number" min="1" max="99" class="ipt" name="au_qty"></td>
					</tr>
					<tr>
						<th style="height: 50px; width: 100px;">제품종류</th>
						<td><select name="au_cgcode" id="cgcode">
								<option>선택해주세요</option>
								<option value="100">1.귀금속 공예</option>
								<option value="110">2.원목 공예</option>
								<option value="120">3.종이 공예</option>
								<option value="130">4.가죽 공예</option>
								<option value="140">5.천 공예</option>
								<option value="150">6.플라스틱 공예</option>
								<option value="160">7.도자기 공예</option>
								<option value="170">8.가공 식품</option>
								<option value="180">9.휴대폰 액세서리</option>
								<option value="190">10.패인팅,캐리커쳐,캘리</option>
								<option value="200">11.유아 용품</option>
						</select></td>
					</tr>
					<tr>
						<th>입찰시작가격</th>
						<td><input type="number" min="1" class="ipt" name="au_minprice"></td>
					</tr>
					<tr>
						<th>즉시구매가</th>
						<td><input type="number" min="1" class="ipt" name="au_inprice"></td>
					</tr>
				</table>
				<div id="phtDiv">

					<div id="pht1" >
						<img id="LoadImg" src="#" alt="첫번째 파일이 대표사진 입니다." />
					</div>
					

					<div id="attachFileDiv">
						<input type="file" name="aui_imgSysName1" id="imgIn"
						 value="" onchange="fileChk(this)"multiple> 
						<input type="file" name="aui_imgSysName2" multiple> 
						<input type="file" name="aui_imgSysName3" multiple> 
						<input type="file" name="aui_imgSysName4" multiple> 
						<!-- <input type="button" value="추가" id="addBtn" onclick="attachFile.add()"> -->
					</div>

				</div>
				<div id="contents">
					<textarea placeholder=" 이곳에 작품 설명을 적어주세요 " name="au_contents" id="contents"></textarea>
				</div>
				<input type="submit" value="출품하기" class="Btn5">
			</form>
				<button class="Btn5"><a href="home">돌아가기</a></button>
		</div>


		<div id="footer">
		<hr style="width:100%; border: 2px solid coral; align: center;">
		<jsp:include page="footer.jsp"></jsp:include>
		</div>
	</div>


</body>
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<script language="JavaScript">
	
	
	
	var count = 0;
	 
	$(document).ready(
		    function() {
		        $('#imgIn').change(function() {
		                addPreview($(this)); 
		        });
		    });

	function addPreview(input) {
        if (input[0].files) {
            for (var fileIndex = 0 ; fileIndex < input[0].files.length ; fileIndex++) {
                var file = input[0].files[fileIndex];
                var reader = new FileReader();
 
                reader.onload = function (img) {
                    $("#pht1").html(										 /* 260 */
                        "<img src=\"" + img.target.result + "\"\ style='height: 380px; width: 398px;'/>"
                    );
                    
                };
                
                reader.readAsDataURL(file);
            }
        } else alert('invalid file input');
    }
	
	
		$("#addBtn").click(function() {
			count++
			if(count == 3){
				$("#addBtn").css("pointer-events","none");
			}
		});
		
 
 	$("#cgcode").click(function() {	
		console.log($("#cgcode").val());
	});
	
 	
	
</script>
</html>