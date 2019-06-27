<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>transformList.jsp</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
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

ul {
	list-style: none;
}

#middle {
	width: 1520px;
	height: auto;
	margin-top: 50px;
}

#adminmenu {
	float: left;
	width: 300px;
	height: 500px;
}

#adminopt {
	float: left;
	align-content: center;
	width: 1216px;
	height: 500px;
}

.opt {
	margin-top: 5px;
	width: 1200px;
	height: 990px;
	border: 1px solid #f0f0f0;
	border-radius: 5px;
	box-shadow: 3px 0px 8px -3px rgba(0,0,0,0.56);
}


.opt:hover {
	transform: scale(1.02);
	transition-duration: 1s;
}


#questionlist {
	margin-top: 10px;
	width: 100%;
	height: 980px;
	overflow: auto;
}

.best {
	float: left;
	width: 1100px;
	heigth: auto;
	box-shadow: 3px 0px 8px -3px rgba(0,0,0,0.56);
	margin:5px 5px 5px 5px;
}
.object {
	background-color: #c8e7ea;
	width: 1100px;
}

.object td {
	width: 280px;
	font-size: 23px;
	text-align: center;
}

.contents {
	font-size: 18px;
	font-weight: 600;
	width: 1100px;
}

.contents td {
	width: 280px;
	height: 50px;
	font-size: 18px;
	text-align: center;
}

#footer {
	width: 1518px;
	height: 180px;
	margin-top: 20px;
	float: left;
	border: 1px solid #f0f0f0;
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
	<div id="adminmenu">
		<ul>
			<jsp:include page="admininclud.jsp"></jsp:include>

		</ul>
	</div>
	<div id="adminopt">
		<form name="form" method="get">
			<div class="opt">
				<h3 id="dd" style="text-align: center; font-size: 30px;">1:1 문의 접수 리스트</h3>
				<div id="questionlist"></div>
			</div>
		</form>
	</div>
	<div id="footer">
		<jsp:include page="footer.jsp"></jsp:include>
	</div>
	</div>
</body>
<script>
	$(document).ready(
			function() {
				$.ajax({
					url : 'questionWrite',
					type : 'post',
					contentType : "application/json; charset=utf-8;",
					dataType : 'json',
					//contentType:'application/json',
					success : function(data) {
						var result = "<div id='best'><table><tr class='object'><td>문의번호</td><td>문의 아이디</td><td>질문유형</td><td>제목</td><td>등록일</td><td>상세보기</td></tr>";
						console.log("성공");
						
						for(var i in data) {
							result += "<tr class='contents'><td>"+data[i].aq_num+"</td><td>"
									+ data[i].aq_mbid + "</td><td>"
									+ data[i].aq_tye + "</td><td>"
									+ data[i].aq_title + "</td><td>"
									+ data[i].aq_date + "</td><td>"
									+ "<a href='questionWriteCheck?aq_num="+ data[i].aq_num + "'>클릭</a></td></tr>";
						}
						result+="</table></div>";
						
						$("#questionlist").html(result);
					},
					error : function(error) {
						console.log("실패");
						console.log(error);
					}
				});
			});
</script>
</html>
