<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<meta charset="utf-8">
<html>

<head>
<meta charset="UTF-8">
<title>permitWriApply.jsp</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<style>
body {
	margin: auto;
	width: 1520px;
	height: auto;
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

#adminwriterjoin {
	border: 1px solid red;
	float: left;
	align-content: center;
	width: 1216px;
	height: 500px;
}

.writerjoin {
	padding: inherit;
	margin-top: 30px;
	width: 1000px;
	height: 450px;
}

#writerjointitle {
	margin: 10px;
	width: 230px;
	padding-left: 20px;
	float: left;
	background-color: orange;
	color: white;
}

#writerjoinlist {
	margin: 25px;
	left: 40px;
	float: left;
	width: 900px;
	height: 320px;
}

tr, td {
	width: 200px;
}

</style>
</head>

<body>
	<div id="mainheader">
		<jsp:include page="main.jsp"/>
	</div>
    <div id="adminmenu">
        <ul>
                <jsp:include page="admininclud.jsp"></jsp:include>

        </ul>
    </div>
	<div id="adminwriterjoin">
		<div class="writerjoin">
			<div id="writerjointitle">
				<p>작가 가입신청 리스트</p>
			</div>
			<div id="writerjoinlist">
				<div id="writerjoin">
					<table>
						<tr align="center">
							<td>신청번호</td>
							<td>예비아이디</td>
							<td>전공</td>
							<td>자료 여부(O,X)</td>
						</tr>
						<tr>
							<td colspan="4">내용</td>
						</tr>
						<tr>
							<td colspan="2">파일이름</td>
							<td colspan="2">..ddd.pdf</td>
						</tr>
						<tr>
							<td colspan="4">이미지</td>
						</tr>
					</table>
				</div>
				<div id="writerjoin">
					<table>
						<tr align="center">
							<td>신청번호</td>
							<td>예비아이디</td>
							<td>전공</td>
							<td>자료 여부(O,X)</td>
						</tr>
						<tr>
							<td colspan="4">내용</td>
						</tr>
						<tr>
							<td colspan="2">파일이름</td>
							<td colspan="2">..ddd.pdf</td>
						</tr>
						<tr>
							<td colspan="4">이미지</td>
						</tr>
					</table>
				</div>
				<div id="writerjoin">
					<table>
						<tr align="center">
							<td>신청번호</td>
							<td>예비아이디</td>
							<td>전공</td>
							<td>자료 여부(O,X)</td>
						</tr>
						<tr>
							<td colspan="4">내용</td>
						</tr>
						<tr>
							<td colspan="2">파일이름</td>
							<td colspan="2">..ddd.pdf</td>
						</tr>
						<tr>
							<td colspan="4">이미지</td>
						</tr>
					</table>
				</div>
			</div>
		</div>
	</div>
</body>
<script>
	
</script>

</html>