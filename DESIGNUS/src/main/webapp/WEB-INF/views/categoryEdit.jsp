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
	box-shadow: 3px 0px 8px -3px rgba(0,0,0,0.56);
}

#writercatecontents {
	margin-left: 50px;
	margin-top: 20px;
	width: 600px;
	height: 940px;
	float: left;
	overflow: auto;
}

.opt button {
	margin: 5px;
	width: 290px;
	height: 100px;
	float: left;
	background-color: #c8e7ea;
	border: 1px solid #f0f0f0;
	border-radius: 5px;
	box-shadow: 3px 0px 8px -3px rgba(0,0,0,0.56);
	
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
	width: 450px;
	height: 60px;
	float: left;
}

}

.btn1 {
	margin-top: 10px;
	/*General*/
	display: inline-block;
	text-decoration: none;
	/*Text*/
	font-family: "Helvetica Neue", Helvetica, Arial, sans-serif;
	font-size: 13px;
	font-weight: bold;
	line-height: 240%;
	color: rgb(162, 136, 44);
	text-align: center;
	text-shadow: 0px 1px 0px rgba(255, 255, 255, 0.25);
	/*Button*/
	background-color: coral;
	width: 220px;
	height: 70px;
	border-color: rgb(223, 192, 86);
	border-width: 1px;
	-moz-border-radius: 3px;
	-webkit-border-radius: 3px;
	border-radius: 3px;
	border-style: solid;
	-moz-box-shadow: 0px 0px 0px 3px rgba(0, 0, 0, 0.1), inset 0px 1px 0px
		rgba(255, 255, 255, 0.25);
	-webkit-box-shadow: 0px 0px 0px 3px rgba(0, 0, 0, 0.1), inset 0px 1px
		0px rgba(255, 255, 255, 0.25);
	box-shadow: 0px 0px 0px 3px rgba(0, 0, 0, 0.1), inset 0px 1px 0px
		rgba(255, 255, 255, 0.25);
	-ms-filter: "progid:DXImageTransform.Microsoft.gradient(startColorstr=#ffffefbf,
		endColorstr=#ffffe185, GradientType=0) progid:DXImageTransform.Microsoft.Glow(Color=#ff000000,
		Strength=3)";
	filter: progid:DXImageTransform.Microsoft.gradient(startColorstr=#ffffefbf,
		endColorstr=#ffffe185, GradientType=0) progid:DXImageTransform.Microsoft.Glow(Color=#ff000000,
		Strength=3);
	display: inline-block;
	color: white;
}

.btn2 {
	margin-top: 10px;
	/*General*/
	display: inline-block;
	text-decoration: none;
	/*Text*/
	font-family: "Helvetica Neue", Helvetica, Arial, sans-serif;
	font-size: 25px;
	font-weight: bold;
	line-height: 240%;
	color: rgb(162, 136, 44);
	text-align: center;
	text-shadow: 0px 1px 0px rgba(255, 255, 255, 0.25);
	/*Button*/
	background-color: #FFE79E;
	background-image: -moz-linear-gradient(53% 100% 90deg, rgb(212, 212, 212)
		0%, rgb(237, 237, 237) 100%);
	background-image: -webkit-gradient(linear, 53% 100%, 53% 3%, color-stop(0, rgb(212, 212,
		212)), color-stop(1, rgb(237, 237, 237)));
	background-image: -webkit-linear-gradient(90deg, rgb(212, 212, 212) 0%,
		rgb(237, 237, 237) 100%);
	background-image: -o-linear-gradient(90deg, rgb(212, 212, 212) 0%,
		rgb(237, 237, 237) 100%);
	background-image: -ms-linear-gradient(90deg, rgb(212, 212, 212) 0%,
		rgb(237, 237, 237) 100%);
	background-image: linear-gradient(90deg, rgb(212, 212, 212) 0%,
		rgb(237, 237, 237) 100%);
	width: 200px;
	height: 50px;
	border-color: rgb(223, 192, 86);
	border-width: 1px;
	-moz-border-radius: 3px;
	-webkit-border-radius: 3px;
	border-radius: 3px;
	border-style: solid;
	-moz-box-shadow: 0px 0px 0px 3px rgba(0, 0, 0, 0.1), inset 0px 1px 0px
		rgba(255, 255, 255, 0.25);
	-webkit-box-shadow: 0px 0px 0px 3px rgba(0, 0, 0, 0.1), inset 0px 1px
		0px rgba(255, 255, 255, 0.25);
	box-shadow: 0px 0px 0px 3px rgba(0, 0, 0, 0.1), inset 0px 1px 0px
		rgba(255, 255, 255, 0.25);
	-ms-filter: "progid:DXImageTransform.Microsoft.gradient(startColorstr=#ffffefbf,
		endColorstr=#ffffe185, GradientType=0) progid:DXImageTransform.Microsoft.Glow(Color=#ff000000,
		Strength=3)";
	filter: progid:DXImageTransform.Microsoft.gradient(startColorstr=#ffffefbf,
		endColorstr=#ffffe185, GradientType=0) progid:DXImageTransform.Microsoft.Glow(Color=#ff000000,
		Strength=3);
	display: inline-block;
	background-image: -webkit-gradient(linear, 53% 100%, 53% 3%, color-stop(0, rgb(212, 212,
		212)), color-stop(1, rgb(237, 237, 237)));
	background-image: -webkit-linear-gradient(90deg, rgb(212, 212, 212) 0%,
		rgb(237, 237, 237) 100%);
	background-image: -o-linear-gradient(90deg, rgb(212, 212, 212) 0%,
		rgb(237, 237, 237) 100%);
	background-image: -ms-linear-gradient(90deg, rgb(212, 212, 212) 0%,
		rgb(237, 237, 237) 100%);
	background-image: linear-gradient(90deg, rgb(212, 212, 212) 0%,
		rgb(237, 237, 237) 100%);
}

.signUpInput {
	width: 200px;
	height: 50px;
	float:left;
	margin-left: 10px;
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
				<h3 style="text-align: center; font-size: 30px;">카테고리 관리</h3>
				<div id="writercatecontents">현재 카테고리</div>
				
				<div id="writercatecontents2">
				<form action="categoryadd" method="post">
					<div id="cateup">
					<input type="submit" value="카테고리추가" class="btn2"></div>

					<div id="cateupload">
						<input type="text" name="cg_code" class="signUpInput" placeholder="추가할 코드입력" autofocus required>
						<input type="text" name="cg_name" class="signUpInput" placeholder="카테고리명 입력" autofocus required>
					</div>
				</form>
				<form action="categorydelete" method="post">
					<div id="catedown">
						<input type="submit" value="카테고리삭제" class="btn2">
					</div>
					<div id="catedownload">
						<input type="text" name="cg_name" class="signUpInput" placeholder="카테고리명 입력" autofocus required>
					</div>
				</form>
				<form action="categorychange" method="post">
					<div id="catechange">
						<input type="submit" value="카테고리변경" class="btn2">
					</div>
					<div id="cateone">
						<input type="text" id="change" name="cg_name" class="signUpInput" placeholder="변경전 카테고리명 입력" autofocus required>
						<input type="text" name="cg_cname" class="signUpInput" placeholder="변경후 카테고리명 입력" autofocus required>
					</div>
				</form>
				</div>
			</div>
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
					url : 'categorycurrent',
					type : 'post',
					contentType : "application/json; charset=utf-8;",
					dataType : 'json',
					//contentType:'application/json',
					success : function(data) {
						var result = '';
						console.log("성공");
						for ( var i in data) {
							result += "<div class='opt'><button class='btn1' onclick=\"catap('" + data[i].cg_name + "')\">"
										+ "카테고리 번호:" + data[i].cg_code + "<br>"
										+ "카테고리 종류:" + data[i].cg_name + "</button></div>";
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
		$("#change").val(num);
	}
</script>

</html>