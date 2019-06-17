<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<title>제작의뢰 요청페이지</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>

<style>
#main {
	width: 1520px;
	height: 170px;
	position: relative;
}

#mainheader {
	border: 1px solid black;
	width: 1520px;
	height: 170px;
	position: fixed;
	background-color: white;
}

#middle {
	margin-top: 50px;
	width: 1518px;
	height: 700px;
	border: 1px solid blue;
}

#middle_title1 {
	width: 1310px;
	height: 60px;
	margin-left: 100px;
	margin-right: 100px;
	padding-top: 20px;
	padding-left: 10px;
	background-color: coral;
	font-size: 35px;
	color: white;
	float: left;
}

#middle_title2 {
	width: 1310px;
	height: 60px;
	margin-left: 100px;
	margin-right: 100px;
	padding-top: 20px;
	padding-left: 10px;
	background-color: coral;
	font-size: 35px;
	color: white;
	float: left;
	display: none;
}

#middle_contents {
	margin-left: 100px;
	margin-top: 10px;
	width: 850px;
	height: 600px;
	border: 1px solid red;
	float: left;
}

input[type="text"] {
	width: 250px;
	height: 25px;
}

select {
	width: 170px;
	height: 30px;
}

input[type="file"] {
	width: 250px;
	height: 25px;
}

#middle_contents_unlock {
	padding: 20px;
	width: 800px;
	height: 800px;
	display: block;
}
#middle_contents_btn1 {
	width: 500px;
	height: 100px;
	margin-left: 10px;
	padding-left: 200px;
	padding-top: 10px;
}

#middle_contents_btn1 button {
	width: 150px;
	height: 40px;
	background-color: coral;
	border-radius: 5px;
	font-style: italic;
	font-weight: 900;
	color: white;
}

.temp,#lightbox_contents_box th{
	border: 1px solid #D8D8D8;
	height: 30px;
	width: 100px;
	margin-right: 10px;
	border-radius: 10px;
	color: coral;
}
#middle_contents2 {
	margin-right: 100px;
	margin-top: 10px;
	width: 450px;
	height: 600px;
	border: 1px solid red;
	float: right;
}
#middle_contents2_btn2 {
	padding: 20px 40px 20px 40px;
	width: 370px;
	height: 70px;
	border: 1px solid red;
}

#middle_contents2_btn2 input[type="button"] {
	width: 100px;
	height: 50px;
	background-color: #6799FF;
	margin: 10px 40px 10px 40px;
	text-align: center;
	color: black;
	border-radius: 10px;
	font-weight: 900;
	box-shadow: -60px 0px 30px -90px #000000,
                 60px 0px 30px -90px #000000;
}

#middle_contents2_searching {
	padding: 20px;
	width: 410px;
	height: 350px;
	border: 1px solid red;
	display: none;
}

#middle_contents2_writer {
	padding: 20px;
	margin-top: 10px;
	width: 360px;
	height: 280px;
	border: 1px solid gray;
	box-shadow: inset -1px 0px 6px 0px rgba(0,0,0,0.27);
	overflow: auto;
	display: none;
}

#middle_contents2_writer>div {
	margin: 10px;
	width: 320px;
	height: 70px;
	border: 1px solid red;
	float: left;
	display: none;
}
.writerInfo1 {
	padding: 1px;
	float: left;
	width: 65px;
	height: 65px;
	border: 1px solid green;
}

.writerInfo2 {
	padding: 5px 5px 2px 5px;
	float: left;
	width: 230px;
	height : 30px;
	font-size: 20px;
}

.writerInfo3{
	padding: 2px 5px 5px 5px;
	float: left;
	width: 230px;
	height : 20px;
	font-size: 15px;
}

#lightbox_contents_shadow {
	position: absolute;
	top: 0;
	left: 0;
	width: 100%;
	height: 200%;
	background: #000;
	background-color: rgba(0, 0, 0, 0.7);
	z-index: 1000;
	display: none;
}

#lightbox_contents_box {
	border: 1px solid coral;
	position: absolute;
	background-color: white;
	left: 40%;
	top: 40%;
	padding: 50px;
	text-align: center;
	width: 350px;
	height: 200px;
	opacity: 100;
	z-index: 1100;
	display: none;
	border-radius: 20px;
	box-shadow: -60px 0px 30px -90px #000000,
                60px 0px 30px -90px #000000;
}
#lightbox_contents_title {
	width: 300px;
	height: 40px;
	font-size: 30px;
	font-weight: 900;
	padding-bottom: 10px;
	font-style: italic;
}


#ra_mbid {
	width: 150px;
	height: 30px;
	border: none;
	margin-left: 5px;
	text-align: center;
	font-size: 20px;
	font-weight: 600;
	color: coral;

}

#ra_money,#ra_date {
	margin-left: 5px;
	width: 150px;
	height: 20px;
	padding: 5px;
	color: coral;
	border-radius: 5px;
	text-align: right;
	background-color: #F6F6F6;
}

#conf{
	width: 100px;
	height: 30px;
	margin-top: 10px;
	background-color: #F6F6F6;
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
		<div id="middle_title1">제작의뢰 페이지 (공개 의뢰)</div>
		<div id="middle_title2">제작의뢰 페이지 (비공개 의뢰)</div>
		<div id="middle_contents">
			<div id="middle_contents_unlock">
				<form action="revauctionsubmit" id="revauction" method="post"
					enctype="multipart/form-data">
					<table style="margin: 10px 0px 0px 10px; line-height: 210%;">
						<tr align="center">
							<th><div class="temp">요청제목</div></th>
							<td><input type="text" name="ra_title"></td>
							<td rowspan="7" style="width: 370px; margin-left: 20px">
							<div id="pht1"><img id="LoadImg" src="#" alt="미리보기" /></div>
							</td>
						</tr>
						<tr>
							<th><div class="temp">카테고리</div></th>
							<td><select id="ra_cgcode" name="ra_cgcode">
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
						<tr>
							<th><div class="temp">대표이미지</div></th>
							<td><input id="imgIn" type="file" name="ra_image"></td>
						</tr>
						<tr>
							<th><div class="temp">제작사항</div></th>
							<td><input type="file" name="ra_file"></td>
						</tr>
						<tr>
							<th><div class="temp">수량</div></th>
							<td style="color: mediumvioletred">1 EA(짝/켤레/쌍)</td>
						</tr>
						<tr>
							<td>&nbsp;</td>
							<td>&nbsp;</td>
						</tr>
						<tr>
							<td><input type="checkbox" name="check"> 개인정보동의</td>
							<td><p style="color:deepskyblue; font-size:12px;">자세히보기</p></td>
						</tr>
					</table>

					<textarea id="reva_contents" cols="30" rows="10" name="ra_contents"
						style="margin-left: 10px; margin-top: 10px; width: 795px; height: 200px; resize: none;"
						placeholder="&nbsp;작가에게 전달할 말을 적어주세요"></textarea>
					<div id="middle_contents_btn1">
						<button onclick="">제출하기</button>
						<button type="button" onclick="goBack();">돌아가기</button>
					</div>
					<div id="lightbox_contents_shadow"></div>
					<div id="lightbox_contents_box">
					<div id="lightbox_contents_title">비공개 의뢰견적</div>
					<div id="lightbox_contents_detail">
					<table>
						<tr>
							<th>작가</th>
							<td><input type="text" id="ra_mbid" name="ra_mbid" readonly="readonly"></td>
							<td></td>
						</tr>
						<tr>
							<th>요청가격</th>
							<td><input type="text" id="ra_money" name="ra_price"></td>
							<td>원</td>
						</tr>
						<tr>
							<th>제작기간</th>
							<td><input type="text" id="ra_date" name="ra_date"></td>
							<td>일</td>
						</tr>
					</table>
						<button type="button" id="conf">확인</button>
					</div>
					</div>
				</form>
			</div>
		</div>
		<div id="middle_contents2">
		<div id="middle_contents2_btn2">
			<input type="button" id="lock" name="ra_oc" value="비공개의뢰" />
			<input type="button" id="unlock" name="ra_oc" value="공개의뢰" />
		</div>
			<div id="middle_contents2_searching">
			<div id="searching"><input id="auto" type="text" style="width:250px; height:30px; margin-left:20px; padding-left:10px; box-shadow: inset -1px 0px 6px 0px rgba(0,0,0,0.27);"
			placeholder="의뢰할 작가님의 ID를 검색"/><button style="width:80px; height:33px;">검색</button></div>
			<div id="middle_contents2_writer">
				<div id="writer_Info0" onclick="go()"></div>
				<div id="writer_Info1" onclick="go()"></div>
				<div id="writer_Info2" onclick="go()"></div>
				<div id="writer_Info3" onclick="go()"></div>
				<div id="writer_Info4" onclick="go()"></div>
			</div>
			</div>
		</div>
	</div>


</body>
<script>
	/* 버튼클릭 이벤트 */
	$("#lock").click(function() {
		$("#middle_title1").css("display","none");
		$("#middle_title2").css("display","inline");
		$("#middle_contents2_searching").css("display","block");
		$("#middle_contents2_writer").css("display","block");
	});
	
	$("#unlock").click(function() {
		$("#middle_title1").css("display","inline");
		$("#middle_title2").css("display","none");
		$("#middle_contents2_searching").css("display","none");
		$("#middle_contents2_writer").css("display","none");
	});
	
	

	/* 작가 가격관련 요청 */
	$("#writer_Info0").click(function(){
		var x = $(".writerInfo2").text();
		$("#ra_mbid").val(x);
		$("#lightbox_contents_shadow").css("display","block");
		$("#lightbox_contents_box").css("display","block");
	});
	$("#writer_Info1").click(function(){
		var x = $(".writerInfo2").text();
		$("#ra_mbid").val(x);
		$("#lightbox_contents_shadow").css("display","block");
		$("#lightbox_contents_box").css("display","block");
	});
	$("#writer_Info2").click(function(){
		var x = $(".writerInfo2").text();
		$("#ra_mbid").val(x);
		$("#lightbox_contents_shadow").css("display","block");
		$("#lightbox_contents_box").css("display","block");
	});
	$("#conf").click(function(){
		var x = $(".writerInfo2").text();
		$("#lightbox_contents_shadow").css("display","none");
		$("#lightbox_contents_box").css("display","none");
	});
	
	/* 뒤로가기 */
	function goBack() {
		window.history.back();
	}
	
	/* 이미지 미리보기 */
	$(document).ready(function() {
		$('#imgIn').change(function() {
			addPreview($(this));
		});
	});
	function addPreview(input) {
		if (input[0].files) {
			for (var fileIndex = 0; fileIndex < input[0].files.length; fileIndex++) {
				var file = input[0].files[fileIndex];
				var reader = new FileReader();

				reader.onload = function(img) {
					$("#pht1")
							.html("<img src=\"" + img.target.result + "\"\ style='height: 230px; width: 260px; padding-top:10px; padding-bottom:10px;'/>");
				};
				reader.readAsDataURL(file);
			}
		} else
			alert('invalid file input');
	}
	/* 이미지 미리보기 끝 */
	
    // 작가검색
    $("#auto").on("propertychange change keyup paste input", function() {
    	var currentVal = $(this).val();
    	if(currentVal == oldVal) {
    		return;
    	}
    	var oldVal = currentVal;
    	console.log(currentVal);
    	$.ajax({
    		type:'POST',
    		url:'ajax/wrilist',
    		data: { mb_id:currentVal},
    		dataType:'json',
    		success: function(data) {
    			console.log("성공");
    			var str='';
    			var major='';

    			for(var i in data) {
    			str="<div class='writerInfo1'><img src='"+data[i].mb_profile+"' alt='"+data[i].mb_profile+"' style='font-size:10px;'></div><div class='writerInfo2'>"+data[i].mb_id+"</div>";
    			var n = data[i].mj_cgcode;
    			switch(n) {
    				case 100:
    				major="귀금속 공예";
    				break;
    				case 110:
    				major="원목 공예";
    				break;
    				case 120:
    				major="종이 공예";
    				break;
    				case 130:
    				major="가죽 공예";
    				break;
    				case 140:
    				major="천 공예";
    				break;
    				case 150:
    				major="플라스틱 공예";
    				break;
    				case 160:
    				major="도자기 공예";
    				break;
    				case 170:
    				major="가공 식품";
    				break;
    				case 180:
    				major="휴대폰 액세서리";
    				break;
    				case 190:
    				major="페인팅,캐리커쳐,캘리";
    				break;
    				case 200:
        			major="유아 용품";
        			break;
    			}
    			str+="<div class='writerInfo3'>"+"전문분야: "+major+" / 추천수: "+data[i].mj_like+"</div>";
    			$("#writer_Info"+i).html(str);

    			for(var y=0;y<6;y++) {
    				for(var z=0;z<=i;z++) {    					
    				$("#writer_Info"+z).css("display","block");
    				$("#writer_Info"+y).css("display","none");
    						}
    					}
    			}
    		},
			error: function(error) {
    		}
    	}); //ajax End
   	});
   /* 여기까지 */
   
       
</script>

</html>

