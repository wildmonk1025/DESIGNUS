<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<title>adminInfo.jsp</title>
	<meta charset="utf-8">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <style>
        body {
            margin: auto;
            width: 1520px;
            height: auto;
            
        }


        ul {
            list-style: none;
        }

        #mainheader {
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
     
        
        
        #trans{
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
            height: 240px;
        }

        #declarelist {
            width: 990px;
            height: 170px;
            overflow-y: scroll;
        }
        
        #declarelist td{
            width: 120px;

        }

        #transformlist {
            width: 990px;
            height: 170px;
            overflow-y: scroll;
            
            
        }
        

.lipont{
	font-size:20px;
}
.best {
	border: 1px solid black;
	display : inline;
	float: left;
	width: 800px;
	heigth: 150px;
	background-color: coral;
	size: 20px;
	
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
    </style>
</head>
<body>
    <div id="mainheader">
<div id="mainheader">
		<jsp:include page="main.jsp" />
	</div>
    </div>
    <div id="adminmenu">
        <jsp:include page="admininclud.jsp"></jsp:include>
    </div>
    <div id="adminopt">
        <div class="opt">
            <h3 style="text-align: center; font-size: 25px; background-color: orange;">신고내역</h3><hr/>
            <div id="declarelist"> </div>
        </div>
     
    
        <div class="opt">
            <h3 style="text-align: center; font-size: 25px; background-color: orange;">판매자 전환신청</h3>
            <div id="transformlist">
                
            </div>
            </div>
      </div>
        
</body>
<script>
$(document).ready(function() {
	$.ajax({
		url : 'Declarelist',
		type: 'post',
		contentType:"application/json; charset=utf-8;",
		dataType : 'json',
		//contentType:'application/json',
		success:function(data){
			var result = "";
			console.dir(data);
			console.log("성공");

			for(var i in data){
				result+="<div class='best'>"+"<a href='declareWrite'>"
					  +"신고번호:" +data[i].rp_num+"<br>"
					  +"신고자아이디:"+data[i].rp_mbid_d+"<br>"
					  +"가해자아이디:"+data[i].rp_mbid_a+"<br>"
					  +"신고위치:"+data[i].rp_locate+"<br>"
					  +"</a>"+"</div>";
					  }
			$("#declarelist").html(result);
		},
	error:function(error){
		console.log("실패");
		console.log(error);
	}
	});
});
$(document).ready(function() {
	$.ajax({
		url : 'transformList ',
		type: 'post',
		contentType:"application/json; charset=utf-8;",
		dataType : 'json',
		//contentType:'application/json',
		success:function(data){
			var result = "";
			console.dir(data);
			console.log("성공");

			for(var i in data){
				result+="<div class='best'>"+"<a href='permitWriApply'>"
					  +"아이디:" +data[i].mb_id+"<br>"
					  +"카테고리 분류번호:"+data[i].mj_cgcode+"<br>"
					  +"포트폴리오:"+data[i].mj_contents+"<br>"
					  +"파일설명:"+data[i].mj_portf+"<br>"
					  +"</a>"+"</div>";
					  }
			$("#transformlist").html(result);
		},
	error:function(error){
		console.log("실패");
		console.log(error);
	}
	});
});
 
    
</script>
</html>
