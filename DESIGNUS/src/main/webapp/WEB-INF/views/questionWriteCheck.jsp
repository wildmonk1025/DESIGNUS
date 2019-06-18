<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>questionWriteCheck.jsp</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<style>
body {
	margin: auto;
	width: 1520px;
	height: auto;
	overflow: auto;
}

div {
	margin: auto;
}

ul {
	list-style: none;
}

#mainheader {
	border: 1px solid black;
	width: 1518px;
	height: 170px;
}

#adminmenu {
	float: left;
	width: 300px;
	height: 500px;
}

#onequestion {
	margin: 10px;
	padding-top: 20px;
	width: 400px;
	height: 40px;
	padding-left: 20px;
	float: left;
	background-color: orange;
	color: white;
}

#onequestionmain {
	border: 1px solid black;
	margin: 10px;
	padding: 20px;
	width: 900px;
	height: 700px;
	float: left;
}

#questiontitle {
	border: 1px solid red;
	float: left;
	margin: 5px;
	width: 800px;
	height: 30px;
}

#questioncontents {
	border: 1px solid red;
	float: left;
	margin: 5px;
	width: 800px;
	height: 200px;
}

#questionfile {
	border: 1px solid red;
	float: left;
	margin: 5px;
	width: 800px;
	height: 30px;
}

.button {
	margin: 10px 10px 10px 10px;
	width: 200px;
	height: 50px;
	background-color: orange;
	position: static;
	color: white;
}

input[type=submit] {
	margin: 10px 100px 0px 0px;
	float: right;;
	width: 100px;
	height: 40px;
	background-color: orange;
	color: white;
}
</style>
</head>

<body>
	<div id="mainheader">
		<div id="mainheader">
			<jsp:include page="main.jsp" />
		</div>
	</div>
	<div id="adminmenu">
		<ul>
			<jsp:include page="admininclud.jsp"></jsp:include>

		</ul>
	</div>
	<div id="onequestionmain">
	<form name="formName"  action="questionreply" method="post">
		<div id="onequestion">1:1문의 접수 내역</div>
		<br> <br> <br> <br>
		<button class="button"><a href="questionList">돌아가기</a></button>
			<div id="questiontitle">글 제목: ${aq_title}</div>
			<div id="questioncontents">글 내용: ${aq_contents}</div>
			<div id="questionfile">첨부파일 : ${aqi_img}</div>
			<input type="hidden" name="aq_num" id="aq_num" value="${aq_num}">
			
				<textarea rows="30" cols="20"
					style="margin: 5px; width: 800px; height: 100px;" id="ff"
					placeholder="여기에 답글을 달 수 있습니다" name="qr_contents"></textarea>
				<input type="submit" value="답변하기">
				
			</form>
			
		</div>
	


</body>
<script>
/* function a() {
	var x = ${aq_num};
	var y = $("#ff").val();
	var f = document.formName;
	f.action = "questionreply?aq_num="+x+"&qr_contents="+y;
	// 파일 전송이 필요할 경우만 씀.
	//f.encoding = "multipart/form-data";
	f.method = "get";
	f.submit();
} */"declarepermit?rp_num=${rp_num}&mb_id=${rp_mbid_a}"

/* function a(num) {
	var y = $("#ff").val();
	console.log(num);
	console.log(y);
	var f = document.formName;
	f.action = "questionreply?aq_num="+num+"&";
	f.aq_num.value = num;
	f.qr_contents.value = y;
	// 파일 전송이 필요할 경우만 씀.
	//f.encoding = "multipart/form-data";
	f.method = "GET";
	f.submit();
} */
/* function b() {
	var f = document.formName;
	f.action = "declarepermit?rp_num=${rp_num}&mb_id=${rp_mbid_a}";
	f.submit();
} */
</script>

</html>