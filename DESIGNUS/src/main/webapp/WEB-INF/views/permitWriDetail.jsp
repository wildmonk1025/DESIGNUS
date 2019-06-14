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

#adminwriterjoinfrm {
	border: 1px solid red;
	float: left;
	align-content: center;
	width: 1216px;
	height: 800px;
}

.writerjoinfrm {
	padding: inherit;
	margin-top: 30px;
	width: 1000px;
	height: 450px;
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
	float: left;
	border: 1px solid red;
	width: 99%;
	height: 370;
}

#writerjoinnum {
	border: 1px solid red;
	float: left;
	width: 200px;
	height: 32px;
}


#writerjoinno, #writerjoinok {
	margin-top: 650px;
	float: right;
	background-color: orange;
	width: 90px;
	height: 40px;
	color: white;
}

#customers {
	font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
	width: 600px;
	border-collapse: collapse;
}

#customers td, #customers th {
	font-size: 1em;
	border: 1px solid #98bf21;
	padding: 3px 7px 2px 7px;
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
					<tr>
						<th>Company</th>
						<th>Contact</th>
						<th>Country</th>
					</tr>
					<tr>
						<td>Alfreds Futterkiste</td>
						<td>Maria Anders</td>
						<td>Germany</td>
					</tr>
					<tr class="alt">
						<td>Berglunds snabbköp</td>
						<td>Christina Berglund</td>
						<td>Sweden</td>
					</tr>
					<tr>
						<td>Centro comercial Moctezuma</td>
						<td>Francisco Chang</td>
						<td>Mexico</td>
					</tr>
					<tr class="alt">
						<td>Ernst Handel</td>
						<td>Roland Mendel</td>
						<td>Austria</td>
					</tr>
					<tr>
						<td>Island Trading</td>
						<td>Helen Bennett</td>
						<td>UK</td>
					</tr>
					<tr class="alt">
						<td>Königlich Essen</td>
						<td>Philip Cramer</td>
						<td>Germany</td>
					</tr>
					<tr>
						<td>Laughing Bacchus Winecellars</td>
						<td>Yoshi Tannamuri</td>
						<td>Canada</td>
					</tr>
					<tr class="alt">
						<td>Magazzini Alimentari Riuniti</td>
						<td>Giovanni Rovelli</td>
						<td>Italy</td>
					</tr>
					<tr>
						<td>North/South</td>
						<td>Simon Crowther</td>
						<td>UK</td>
					</tr>
					<tr class="alt">
						<td>Paris spécialités</td>
						<td>Marie Bertrand</td>
						<td>France</td>
					</tr>
				</table>
			</div>
			<button id="writerjoinno">가입 거절</button>
			<br>
			<button id="writerjoinok">가입 승인</button>
		</div>
	</div>
</body>
<script>
	
</script>

</html>