<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>

<head>
<meta charset="UTF-8">
<title>permitWriDetail.jsp</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<style>
body {
	margin: auto;
	width: 1520px;
}



ul {
	list-style: none;
}

#mainheader {
	width: 1518px;
	height: 170px;
}



#adminwriterjoinfrm {
	float: left;
	align-content: center;
	width: 1216px;
	height: 800px;
}

.writerjoinfrm {
	padding: inherit;
	margin-top: 30px;
	width: 1000px;
	height: 600px;
}

#writerjointitlefrm {
	margin: 10px;
	width: 230px;
	padding-left: 20px;
	float: left;
	background-color: orange;
	color: white;
}

#writerjoinlist {
	float: left;
	margin: 25px;
	left: 40px;
	float: left;
	width: 900px;
	height: 320px;
}

#writerjoincontents {
	width: 99%;
	height:600px;
}






#customers {
	width: 900px;
	border-collapse: collapse;
}

#customers td, #customers th {
	font-size: 1em;
}

#customers th {
	font-size: 1.1em;
	text-align: left;
	padding-top: 5px;
	padding-bottom: 4px;
	background-color: #A7C942;
	color: #ffffff;
}

#customers tr.alt td {
	color: #000000;
	background-color: #EAF2D3;
}
tr{
width: 300px;
height: 60px;
}
</style>
</head>

<body>
	<div id="mainheader">
		<jsp:include page="main.jsp" />
	</div>
	<div id="adminmenu">
		<ul>
			<jsp:include page="admininclud.jsp"></jsp:include>

		</ul>
	</div>
	<div id="adminwriterjoinfrm">
		<div class="writerjoinfrm">
			<div id="writerjointitlefrm">
				<p>작가 가입요청 관리</p>
			</div>
			<div id="writerjoincontents">
				<table id="customers">
					<tr  class="alt">
						<td>신청번호:</td>
						<td>전문분야:${mj_cgcode}</td>
						<td>아이디 : ${mb_id}</td>
					</tr>
					<tr>
						<td colspan="3">제목 :</td>
					</tr>
					<tr class="alt">
						<td colspan="1" rowspan="3">설명 :</td>
						<td colspan="2" rowspan="3">${mj_contents}</td>
					</tr>
					</table>
					<table id="customers">
					<tr>
						<td >사진</td>
						<td colspan="2"></td>
					</tr>
					<tr class="alt">
						<td  colspan="1" rowspan="3">답글 : </td>
						<td colspan="2" rowspan="3"></td>
					</tr>
					</table>
					<table id="customers">
					<tr>
						<td>첨부파일</td>
						<td colspan="2">${mj_portf}</td>
					</tr>
					
				</table>
			</div>
			<button id="writerjoinno">가입 거절</button>
			
			<button id="writerjoinok">가입 승인</button>
		</div>
	</div>
</body>
<script>

</script>

</html>