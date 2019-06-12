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
div {
	margin: auto;
}
 body {
            margin: auto;
            width: 1520px;
            height: auto;
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

#writercateitlefrm {
	margin: 10px;
	width: 230px;
	padding-left: 20px;
	float: left;
	background-color: orange;
	color: white;
}

#admincatefrm {
	float: left;
	margin: 25px;
	left: 40px;
	float: left;
	width: 900px;
	border: 1px solid red;
	height: 500px;
}

#writercatecontents {
	margin: 10px 40px;
	border: 1px solid red;
	width: 800px;
	height: 200px;
	float: left;
}

#cateup {
	border: 1px solid red;
	margin: 10px 0px 10px 40px;
	text-align: center;
	width: 100px;
	height: 40px;
	float: left;
}

#cateupload {
	border: 1px solid red;
	margin: 10px 5px;
	text-align: center;
	width: 693px;
	height: 40px;
	float: left;
}

#catedown {
	border: 1px solid red;
	margin: 10px 0px 10px 40px;
	text-align: center;
	width: 100px;
	height: 40px;
	float: left;
}

#catedownload {
	border: 1px solid red;
	margin: 10px 5px;
	text-align: center;
	width: 693px;
	height: 40px;
	float: left;
}

#catechange {
	border: 1px solid red;
	margin: 10px 0px 10px 40px;
	text-align: center;
	width: 100px;
	height: 40px;
	float: left;
}

#cateone {
	border: 1px solid red;
	margin: 10px 5px;
	text-align: center;
	width: 300px;
	height: 40px;
	float: left;
}

#catetwo {
	border: 1px solid red;
	margin: 10px 5px 0px 0px;
	text-align: center;
	width: 300px;
	height: 40px;
	float: left;
}

#catech {
	float: left;
	width: 85px;
	text-align: center;
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
	<div id="admincatefrm">
		<div class="writercatefrm">
			<div id="writercateitlefrm">
				<p>카테고리 관리</p>
			</div>
			<div id="writercatecontents">현재 카테고리</div>
			<div id="cateup">up</div>
			<div id="cateupload">의자</div>
			<div id="catedown">down</div>
			<div id="catedownload">의자</div>
			<div id="catechange">change</div>
			<div id="cateone">의자</div>
			<p id="catech">▶</p>
			<div id="catetwo">바둑알</div>
		</div>
	</div>
</body>
<script>
	
</script>

</html>