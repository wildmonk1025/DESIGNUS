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
	overflow-y: scroll;
}

#cateup {
	margin: 10px 0px 10px 40px;
	text-align: center;
	width: 100px;
	height: 40px;
	float: left;
}

#cateupload {
	margin: 10px 5px;
	text-align: center;
	width: 693px;
	height: 40px;
	float: left;
}

#catedown {
	margin: 10px 0px 10px 40px;
	text-align: center;
	width: 100px;
	height: 40px;
	float: left;
}

#catedownload {
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
.best {
	color: black;
	display : inline;
	float: left;
	width: 250px;
	heigth: 55px;
	display: inline;
}
.btn2{
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
	width: 150px;
	height: 40px;
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
			<form action="categoryadd" method="post">
			<div id="cateup"><input type="submit" value="카테고리추가" class="btn2"></div>
			
			<div id="cateupload"><br/>카테고리번호:<input type="text" name="cg_code" >
							         카테고리이름:<input type="text" name="cg_name" ></div></form>
			<form action="categorydelete" method="post">
			<div id="catedown"><input type="submit" value="카테고리삭제" class="btn2"></div>
			<div id="catedownload"><br/>
							         카테고리이름:<input type="text" name="cg_name" ></div></form>
			<div id="catechange">change</div>
			<div id="cateone">의자</div>
			<p id="catech">▶</p>
			<div id="catetwo">바둑알</div>
		</div>
	</div>
</body>
<script>
$(document).ready(function() {
	$.ajax({
		url : 'categorycurrent',
		type: 'post',
		contentType:"application/json; charset=utf-8;",
		dataType : 'json',
		//contentType:'application/json',
		success:function(data){
			var result = "";
			console.dir(data);
			console.log("성공");

			for(var i in data){
				result+="<div class='best'>"
					  +"카테고리 번호:"+data[i].cg_code+"<br>"
					  +"카테고리 종류:"+data[i].cg_name+"<br>"
					  
					  +"</div>";
					  }
			$("#writercatecontents").html(result);
		},
	error:function(error){
		console.log("실패");
		console.log(error);
	}
	});
});
</script>

</html>