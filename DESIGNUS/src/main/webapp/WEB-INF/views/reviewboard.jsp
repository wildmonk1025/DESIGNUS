<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>

<head>
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


#homeMain {
	width: 1520px;
	height: 700px;
}

.btn {
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

#coklist {
	width: 1000px;
	height: 150px;
	float: left;
	display: block;
}

#bestlist {
	width: 1000px;
	height: 150px;
	float: left;
	display: block;
}

#footercheck {
	width: 1520px;
	height: 150px;
}

#freeboard1 {
	position: relative;
	width: 1480px;
	height: 100px;
	top: 50px;
	left: 50px;
	display: inherit;
}

#freeboard2 {
	width: 1200px;
	height: 500px;
	top: 50px;
	left: 50px;
}

.btn2 {
	width: 1400px;
	height: 50px;
	background-color: white;
}

a:link {
	color: black;
	text-decoration: none;
}

a:visited {
	color: black;
	text-decoration: none;
}

#paging {
	position: relative;
	width: 400px;
	height: 40px;
	top: 430px;
	left: 500px;
	font-size: 22px;
	text-align: center;
}

form {
	top: 20px;
	left: 550px;
}

select {
	position: relative;
	left: 300px;
	width: 100px;
	height: 50px;
	font-size: 18px;
}

.input1 {
	position: relative;
	left: 300px;
	width: 250px;
	height: 50px;
	font-size: 18px;
	top: -1px;
}

#lightbox {
	position: absolute;
	width: 800px;
	height: 900px;
	left: 100px;
	margin: auto;
	background: white;
	display: none;
	text-align: center;
	z-index: 1100;
	overflow: scroll;
}

#lightbox-shadow {
	position: relative;
	width: 8000px;
	height: 8000px;
	z-index: 1000;
	display: none;
	margin: auto;
	background-color: coral;
}

.table-users {
	border: 1px solid #327a81;
	border-radius: 10px;
	box-shadow: 3px 3px 0 rgba(0, 0, 0, 0.1);
	max-width: calc(100% - 2em);
	margin: 1em auto;
	overflow: hidden;
	width: 800px;
}

table {
	width: 100%;
}

table td, table th {
	color: #2b686e;
	padding: 10px;
}

table td {
	text-align: center;
	vertical-align: middle;
}

table td:last-child {
	font-size: 0.95em;
	line-height: 1.4;
	text-align: left;
}

table th {
	background-color: #daeff1;
	font-weight: 300;
}

table tr:nth-child(2n) {
	background-color: white;
}

table tr:nth-child(2n+1) {
	background-color: #edf7f8;
}

@media screen and (max-width: 700px) {
	table, tr, td {
		display: block;
	}
	td:first-child {
		position: absolute;
		top: 50%;
		-webkit-transform: translateY(-50%);
		transform: translateY(-50%);
		width: 100px;
	}
	td:not (:first-child ) {
		clear: both;
		margin-left: 100px;
		padding: 4px 20px 4px 90px;
		position: relative;
		text-align: left;
	}
	td:not (:first-child ):before {
		color: #91ced4;
		content: '';
		display: block;
		left: 0;
		position: absolute;
	}
	td:nth-child(2):before {
		content: 'Name:';
	}
	td:nth-child(3):before {
		content: 'Email:';
	}
	td:nth-child(4):before {
		content: 'Phone:';
	}
	td:nth-child(5):before {
		content: 'Comments:';
	}
	tr {
		padding: 10px 0;
		position: relative;
	}
	tr:first-child {
		display: none;
	}
	@media screen and (max-width: 500px) {
		.header {
			background-color: #daeff1;
			color: #daeff1;
			font-size: 2em;
			font-weight: 700;
			padding: 0;
			text-shadow: 2px 2px 0 rgba(0, 0, 0, 0.1);
		}
		img {
			border: 3px solid;
			border-color: #daeff1;
			height: 100px;
			margin: 0.5rem 0;
			width: 100px;
		}
		td:first-child {
			background-color: #c8e7ea;
			border-bottom: 1px solid #91ced4;
			border-radius: 10px 10px 0 0;
			position: relative;
			top: 0;
			-webkit-transform: translateY(0);
			transform: translateY(0);
			width: 100%;
		}
		td:not (:first-child ) {
			margin: 0;
			padding: 5px 1em;
			width: 100%;
		}
		td:not (:first-child ):before {
			font-size: .8em;
			padding-top: 0.3em;
			position: relative;
		}
		td:last-child {
			padding-bottom: 1rem !important;
		}
		tr {
			background-color: white !important;
			border: 1px solid #6cbec6;
			border-radius: 10px;
			box-shadow: 2px 2px 0 rgba(0, 0, 0, 0.1);
			margin: 0.5rem 0;
			padding: 0;
		}
		.table-users {
			border: none;
			box-shadow: none;
			overflow: visible;
		}
		td {
			width: 100px;
			height: 40px;
		}
		table {
			width: 1100px;
			height: 700px;
			overflow: scroll;
		}
		img {
			width: 200px;
			height: 200px;
		}
	}
}
</style>
<title>Home</title>

</head>

<body>


	<div id="main">
	<div id="mainheader">
		<jsp:include page="main.jsp" />
	</div>
	</div>

	<div id="homeMain">
		<div id="freeboard1">
			<button style="background-color: coral" class="btn2">이용후기
				게시판</button>


		</div>
		<br />
		<br />
		<br />
		<div id="freeboard2">
			<div id="lightbox-shadow">
				<div id="lightbox">

					<div class="table-users" id="declarelist"></div>


					<button id="btn2" class="btn">글 삭제하기</button>
					<button id="btn1" class="btn">글 수정하기</button>
					<button id="btn" class="btn">추천하기</button>


					<button onclick="location.href='reviewboard' " class="btn">돌아가기</button>
				</div>
			</div>
			<table>
				<tr bgcolor="aqua" height="30">
					<th width="100">번호</th>
					<th width="100">제목</th>
					<th width="100">아이디</th>
					<th width="100">작성일</th>
					<th width="100">조회수</th>
				</tr>
				<c:forEach var="board" items="${bdInfo}">
					<tr>
						<td align="center">${board.bd_num}</td>
						<td align="center" width="400px;"><a
							href="javascript:articleView(${board.bd_num});">${board.bd_title}</a></td>
						<td align="center">${board.bd_mbid}</td>
						<td align="center" width="300px;">${board.bd_date}</td>
						<td align="center">${board.bd_views}</td>
					</tr>
				</c:forEach>

			</table>
			<div align="center">${paging}</div>

			<div id="articleView_layer">
				<div id="bg_layer"></div>
				<div id="contents_layer"></div>
			</div>


		</div>

	</div>
	<div id="footercheck">
		<jsp:include page="footer.jsp"></jsp:include>
	</div>

</body>
<script>

function articleView(num1){
	var num = num1;
	
	$('#lightbox-shadow').css("display", "inline");
	$('#lightbox').css("display", "inline");
	console.log(num);
	$.ajax({
		url : 'reviewboardlistInfo',
		type: 'post',
		data: {bd_num:num},
		dataType : 'json',
		//contentType:'application/json',
		success:function(data){
			var result = "";
			console.dir(data);
			console.log("성공");
			console.log(data.bList);
			console.log(data.iList);
			console.log(data.bdc);
			
				result+="<div class='header'>"+"이용후기 게시판"
					  +"</div>"+"<table>"+"<tr>"+"<th colspan='2'>"+"게시판번호"+"</th>"
					  +"<th>"+data.bList.bd_num+"</th>"+"<th>"+"게시판분류"+"</th>"+"<th width='230'>"+data.bList.bd_kind+"</th>"+"</tr>"
					  +"<tr>"+"<td>"+"작성자ID"+"</td>"+"<td>"+
					  					  data.bList.bd_mbid+"</td>"+"<td>"+"제목"+"</td>"
					  +"<td colspan='2'>"+data.bList.bd_title+"</td>"+"</tr>"+"<tr>"+"<td rowspan='2'>"
					  +"내용"+"</td>"+"<td rowspan='2' colspan='4'>"+
					  "<textarea rows='30' cols='20'style='margin: 5px; width: 650px; height: 150px; id=\"ff\" name='bd_contents'>"
					  +data.bList.bd_contents+"</textarea>"+"</td>"+"</tr>"+"</table>"+"<table>"+"<tr>"
					  +"<td>"+"등록일"+"</td>"+"<td>"+data.bList.bd_date+"</td>"+"<td>"+"추천"+"</td>"+"<td>"+data.bList.bd_like+"</td>"
					  +"<td>"+"조회수"+"</td>"+"<td>"+data.bList.bd_views+"</td>"+"</tr>"+"<tr>"+"<td colspan='5'>"+"후기이미지"+"</td></tr>"
					  +"<input type='hidden' value='"+data.bList.bd_mbid+"' id='idc'>"
					  for ( var i in data.iList){
						  result+="<tr>"+"<td rowspan='3' colspan='5'>"+data.iList[i].bdi_img
						 +"</td></tr>"
					  }
					  result+="</table>"+"<form action='reviewcomment'method='post'>"+
					  "<table >" +"<tr>"+"<td>"+"댓글"+"<input type='hidden' name='bd_num' id='bd_num' value="+data.bList.bd_num+">"+"</td>" +"<td>"+
					  "<textarea style='width: 400px; height: 100px;' name='bdc_contents'></textarea>"+"</td>"+"<td>"
					  +"<button id='btn5' class='btn'>"+"확인"+"</button>" +"</td>"+"</tr>"+"</table>"+"</form>"+"<table>"
					  for (var i in data.bdc){
						  result+="<tr ><td>"+"아이디"+"</td>"+"<td>"+data.bdc[i].bdc_mbid+"</td>"+"<td>"+"내용"+"</td>"
						  +"<td>"+data.bdc[i].bdc_contents+"</td></tr>"
					  }result+="</table>"
			$("#declarelist").html(result);
					  
		},
	error:function(error){
		console.log("실패");
		console.log(error);
	}
	});
	var click = true;
	$("#btn").click(function(){
		var c = '<%=(String) session.getAttribute("id")%>';
		var b = $("#idc").val();
		console.log(c);
		console.log(b);
		if(c==null||c==''){
			swal("비로그인은 추천할수 없습니다.");
		}else if(b==c){
			swal("자신의 글은 추천할수 없습니다.");
		}else if(click) {
			swal("해당글을 추천 하였습니다.");
		click=!click;
				} else {
			swal("중복 추천이 불가능합니다.");
			return;
				}
		console.log("num확인="+b);
		console.log("num확인="+num);
 		$.ajax({
			url : 'reviewlike',
			type: 'post',
			data: {bd_num:num},
			success:function(data){
				console.log("성공");
			},
			error:function(error){
				console.log("실패");
			}
 		});
 		
 		
	});
	$("#btn1").click(function(){
		var c = '<%=(String) session.getAttribute("id")%>';
		var a = $("textarea").val();
		var b = $("#idc").val();
		console.log("num확인="+num);
		console.log("id확인="+b);
		if(c == b || c == 'ADMIN') {
			swal("내용이 변경되었습니다.");
				} else {
			
			  swal("글변경 권한이 없습니다.");
				}
 		$.ajax({
			url : 'reviewchange',
			type: 'post',
			data: {bd_num:num,
				   bd_contents:a,
				   bd_mbid:b},
			success:function(data){
				console.log("성공");
			},
			error:function(error){
				
				console.log("실패");
			}
 		});
 		
 		
	});
	$("#btn2").click(function(){
		var c = '<%=(String) session.getAttribute("id")%>';
			var b = $("#idc").val();
			console.log('writer', b);//글쓴사람
			console.log('session', c);//접속중

			if (c == b || c == 'ADMIN') {
				swal("해당글이 삭제 되었습니다.");
				setTimeout(function(){
				window.location.reload();
				location.href = 'reviewboard';
				},1000);
			} else {

				swal("글삭제 권한이 없습니다.");
			}

			$.ajax({
				url : 'reviewdelete',
				type : 'post',
				data : {
					bd_num : num,
					bd_mbid : b
				},
				success : function(data) {
					console.log("성공");
					
				},
				error : function(error) {

					console.log("실패");
				}
			});

		});

	}


</script>
</html>
