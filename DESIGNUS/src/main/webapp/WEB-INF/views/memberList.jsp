<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>memberList.jsp</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
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

        #adminopt {
            float: left;
            align-content: center;
            width: 1216px;
            height: 500px;
        }

        .opt {
            padding: inherit;
            margin: auto;
            margin-top: 5px;
            width: 1000px;
            height: 450px;
            background-color: white;
        }

        #declarelist {
            width: 990px;
            height: 325px;
            overflow-y: scroll;
            border: 1px solid grey;
        }
        
        #declarelist>tr{
            border: 1px solid black;
        }
        
        #declarelist th,td{
            width: 140px;
            text-align: center;
        }
        
        .btnArray {
            float: left;
            width:331px;
            height: auto;
            text-align: center;
        }
.lipont{
	font-size:20px;
}
.view{
	display: none;

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
a:active {
	text-decoration: none;
	color: white;
}

a:visited {
	text-decoration: none;
	color: white;
}
a:link {
	text-decoration: none;
	color: white;
}
a:hover {
	text-decoration: none;
	color: white;
}
.best {
	border: 1px solid black;
	color: black; display : inline;
	float: left;
	width: 315px;
	heigth: 55px;
	display: inline;
	background-color: coral;
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
    <div id="adminopt">
        <div class="opt">
            <h3 style="text-align: center; font-size: 25px; background-color: orange;">회원관리</h3>
            <div class="btnArray" id="normal"><button id="Lbtn1" class="btn2">일반회원 리스트</button></div>
            <div class="btnArray" id="writer"><button id="Lbtn2" class="btn2">작가회원 리스트</button></div>
            <div class="btnArray" id="blkmember"><button id="Lbtn3" class="btn2">블랙회원 리스트</button></div>
            <hr><br/><br/><br/><br/>
            <div id="declarelist">
            <div id="ListView1"></div>
            <div id="ListView2" class="view"></div>
            <div id="ListView3" class="view"></div>
               
            </div>
        </div>
    </div>
</body>
<script>
$("#Lbtn1").click(function() {
	$("#ListView1").css("display", "inline");
	$("#ListView2").css("display", "none");
	$("#ListView3").css("display", "none");
	$(".paging1").css("display", "inline");
	$(".paging2").css("display", "none");
	$(".paging3").css("display", "none");
});
$("#Lbtn2").click(function() {
	$("#ListView1").css("display", "none");
	$("#ListView2").css("display", "inline");
	$("#ListView3").css("display", "none");
	$(".paging1").css("display", "none");
	$(".paging2").css("display", "inline");
	$(".paging3").css("display", "none");
});
$("#Lbtn3").click(function() {
	$("#ListView1").css("display", "none");
	$("#ListView2").css("display", "none");
	$("#ListView3").css("display", "inline");
	$(".paging1").css("display", "none");
	$(".paging2").css("display", "none");
	$(".paging3").css("display", "inline");
});
$(document).ready(function() {
	$.ajax({
		url : 'memberseclist',
		type: 'post',
		contentType:"application/json; charset=utf-8;",
		dataType : 'json',
		//contentType:'application/json',
		success:function(data){
			var result = "";
			console.dir(data);
			console.log("성공");

			for(var i in data){
				result+="<div class='best'>"+"<a href='memberListMM?mb_id="+data[i].mb_id+"'>"
					  +"아이디:" +data[i].mb_id+"<br>"
					  +"이름:"+data[i].mb_name+"<br>"
					  +"회원등급:"+data[i].mb_grade+"<br>"
					  +"경고횟수:"+data[i].mb_ccnt+"<br>"
					  +"</a>"+"</div>";
					  }
			$("#ListView1").html(result);
		},
	error:function(error){
		console.log("실패");
		console.log(error);
	}
	});
});
$(document).ready(function() {
	$.ajax({
		url : 'memberAuthorlist',
		type: 'post',
		contentType:"application/json; charset=utf-8;",
		dataType : 'json',
		//contentType:'application/json',
		success:function(data){
			var result = "";
			console.dir(data);
			console.log("성공");

			for(var i in data){
				result+="<div class='best'>"+"<a href='memberListMM?mb_id="+data[i].mb_id+"'>"
					  +"아이디:" +data[i].mb_id+"<br>"
					  +"이름:"+data[i].mb_name+"<br>"
					  +"회원등급:"+data[i].mb_grade+"<br>"
					  +"경고횟수:"+data[i].mb_ccnt+"<br>"
					  +"</a>"+"</div>";
					  }
			$("#ListView2").html(result);
		},
	error:function(error){
		console.log("실패");
		console.log(error);
	}
	});
});
$(document).ready(function() {
	$.ajax({
		url : 'memberBlacklist',
		type: 'post',
		contentType:"application/json; charset=utf-8;",
		dataType : 'json',
		//contentType:'application/json',
		success:function(data){
			var result = "";
			console.dir(data);
			console.log("성공");

			for(var i in data){
				result+="<div class='best'>"+"<a href='memberListMM?mb_id="+data[i].mb_id+"'>"
					  +"아이디:" +data[i].mb_id+"<br>"
					  +"이름:"+data[i].mb_name+"<br>"
					  +"회원등급:"+data[i].mb_grade+"<br>"
					  +"경고횟수:"+data[i].mb_ccnt+"<br>"
					  +"</a>"+"</div>";
					  }
			$("#ListView3").html(result);
		},
	error:function(error){
		console.log("실패");
		console.log(error);
	}
	});
});
</script>
</html>
