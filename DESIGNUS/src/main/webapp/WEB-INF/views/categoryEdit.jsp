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
	box-shadow: 3px 0px 8px -3px rgba(0, 0, 0, 0.56);
}

#middle {
	width: 1520px;
	height: auto;
	margin-top: 60px;
}

#adminmenu {
	float: left;
	width: 300px;
	height: 500px;
}

.writerjoinfrm {
	padding: inherit;
	margin-top: 30px;
	width: 1000px;
	height: 450px;
}

#admincatefrm {
	float: left;
	align-content: center;
	width: 1216px;
	height: 1000px;
	border: 1px solid #f0f0f0;
	border-radius: 5px;
	box-shadow: 3px 0px 8px -3px rgba(0, 0, 0, 0.56);
}

#writercatecontents {
	margin-left: 20px;
	margin-top: 20px;
	width: 580px;
	height: 700px;
	float: left;
	overflow: auto;
}

.opt button {
	margin: 7px; 
	width: 250px;
	height: 80px;
	float: left;
	background-color: #dceefa;
	border: 1px solid gray;
	border-radius: 5px;
}

#writercatecontents2 {
	margin: 20px;
	width: 500px;
	height: 920px;
	float: left;
}

#cateup, #catedown, #catechange {
	margin: 10px 0px 10px 40px;
	text-align: center;
	width: 400px;
	height: 60px;
	float: left;
}

#cateupload, #catedownload, #cateone {
	margin: 10px 5px;
	width: 480px;
	height: 60px;
	float: left;
}

}
.btn1 {
	background-color: #dceefa;
	margin: 10px 50px 20px 30px;
	width: 160px;
	height: 50px;
	margin-top: 5px;
	margin-right: 10px;
	-moz-border-radius: 5px;
	-webkit-border-radius: 5px;
	border-radius: 5px;
	border: 1px solid #4e6096;
	display: inline-block;
	cursor: pointer;
	color: black;
	font-family: Arial;
	font-size: 17px;
	text-align: center;
	text-decoration: none;
	text-shadow: 0px 1px 0px #283966;
	text-decoration: none;
	-moz-border-radius: 5px;
}

.btn2 {
	background-color: #dceefa;
	margin: 10px 50px 20px 30px;
	width: 160px;
	height: 50px;
	margin-top: 5px;
	margin-right: 10px;
	-moz-border-radius: 5px;
	-webkit-border-radius: 5px;
	border-radius: 5px;
	border: 1px solid #4e6096;
	display: inline-block;
	cursor: pointer;
	color: black;
	font-family: Arial;
	font-size: 17px;
	text-align: center;
	text-decoration: none;
	text-shadow: 0px 1px 0px #283966;
	text-decoration: none;
	-moz-border-radius: 5px;
}

.btn2:hover {
	background-color: #476e9e;
	color: white;
}

.btn2:active {
	position: relative;
	top: 1px;
}

.signUpInput {
	width: 200px;
	height: 50px;
	float: left;
	margin-left: 20px;
	margin-bottom: 25px;
	font-size: 15px;
	background: white;
	border: 2px solid #EBEBEB;
	border-radius: 4px;
	-webkit-box-shadow: inset 0 -2px #EBEBEB;
	box-shadow: inset 0 -2px #EBEBEB;
}

ul {
	list-style: none;
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
		<div id="admincatefrm">
			<h3
				style="text-align: center; font-size: 25px; margin-top: 20px; margin-bottom: 30px;">카테고리
				관리</h3>
			<div id="writercatecontents">현재 카테고리</div>

			<div id="writercatecontents2">
				<form action="categoryadd" method="post">
					<div id="cateup">
						<input type="submit" value="카테고리추가" class="btn2">
					</div>

					<div id="cateupload">

						<input type="text" name="cg_code" class="signUpInput"
							placeholder="추가할 코드입력" autofocus required> <input
							type="text" name="cg_name" class="signUpInput"
							placeholder="카테고리명 입력" autofocus required>
					</div>
				</form>
				<form action="categorydelete" method="post">
					<div id="catedown">
						<input type="submit" value="카테고리삭제" class="btn2">
					</div>
					<div id="catedownload">
						<input type="text" id="change1" name="cg_name" class="signUpInput"
							placeholder="카테고리명 입력" autofocus required>
					</div>
				</form>
				<form action="categorychange" method="post">
					<div id="catechange">
						<input type="submit" value="카테고리변경" class="btn2">
					</div>
					<div id="cateone">
						<input type="text" id="change2" name="cg_name" class="signUpInput"
							placeholder="변경전 카테고리명 입력" autofocus required> <input
							type="text" name="cg_cname" class="signUpInput"
							placeholder="변경후 카테고리명 입력" autofocus required>
					</div>
				</form>
			</div>
		</div>
		<div id="footer">
			<hr style="width: 100%; border: 2px solid coral; align: center;">
			<jsp:include page="footer.jsp"></jsp:include>
		</div>
	</div>
</body>
<script>
	$(document)
			.ready(
					function() {
						$
								.ajax({
									url : 'categorycurrent',
									type : 'post',
									contentType : "application/json; charset=utf-8;",
									dataType : 'json',
									//contentType:'application/json',
									success : function(data) {
										var result = '';
										console.log("성공");
										for ( var i in data) {
											result += "<div class='opt'><button class='btn1' onclick=\"catap('"
													+ data[i].cg_name
													+ "')\">"
													+ "카테고리 번호:"
													+ data[i].cg_code
													+ "<br>"
													+ "카테고리 종류:"
													+ data[i].cg_name
													+ "</button></div>";
										}
										$("#writercatecontents").html(result);
									},
									error : function(error) {
										console.log("실패");
										console.log(error);
									}
								});
					});

	function catap(num) {
		console.log(num);
		$("#change1").val(num);
		$("#change2").val(num);
	}
</script>

</html>