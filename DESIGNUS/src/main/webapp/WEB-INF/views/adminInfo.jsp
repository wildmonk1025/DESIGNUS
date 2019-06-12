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
            height: 240px;
        }

        #declarelist {
            width: 990px;
            height: 170px;
            overflow-y: scroll;
            border: 1px solid grey;
        }
        
        #declarelist td{
            width: 120px;

        }

        #transformlist {
            width: 990px;
            height: 170px;
            overflow-y: scroll;
            border: 1px solid grey;
            
            
        }
        
        #transformlist td{
            width: 200px;
        }
#declarelist {
	width: 990px;
	height: 350px;
	overflow-y: scroll;
	border: 1px solid black;
}
.lipont{
	font-size:20px;
}
.best {
	border: 1px solid blue;
	color: black; display : inline;
	float: left;
	width: 320px;
	heigth: 55px;
	display: inline;
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
            <h3>판매자 전환신청</h3>
            <div id="transformlist">
                <table id="transforminfo">
                    
                </table>
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
				result+="<div class='best'>"
					  +"신고번호:" +data[i].rp_num+"<br>"
					  +"신고자아이디:"+data[i].rp_mbid_d+"<br>"
					  +"가해자아이디:"+data[i].rp_mbid_a+"<br>"
					  +"신고위치:"+data[i].rp_locate+"<br>"
					  +"</div>";
					  }
			$("#declarelist").html(result);
		},
	error:function(error){
		console.log("실패");
		console.log(error);
	}
	});
});
 
    $("#transforminfo").addClass(function(){
        for(var j=0;j<3;j++) {
            y+="<tr><td>신청번호</td><td>아이디</td><td>전공분야</td><td>자료여부(O,X)</td>"
                            +"<td rowspan=\"3\">첨부파일 확인<br><button>첨부파일</button></td></tr>"
                            +"<tr><td>내용</td></tr><tr><td>파일명</td><td>사진</td></tr>";
        }
        $("#transforminfo").html(y);
    });
</script>
</html>
