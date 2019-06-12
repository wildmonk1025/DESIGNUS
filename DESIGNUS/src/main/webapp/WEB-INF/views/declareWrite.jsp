<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>declareWrite.jsp</title>
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
            height: 450px;
        }

        #declarelist {
            width: 990px;
            height: 350px;
            overflow-y: scroll;
            border: 1px solid grey;
        }
        
        #declarelist td{
            width: 140px;
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
            <h3 style="text-align: center; font-size: 25px; background-color: orange;">회원 신고내역</h3>
            <hr>
            <div id="declarelist">
                <table id="declareinfo">

                </table>
            </div>
            <h3 style="text-align: center; color: blue;">페이징</h3>
        </div>
    </div>
</body>
<script>
    var x="";
    $("#declareinfo").addClass(function(){
        for(var j=0;j<10;j++) {
            x+="<tr><td>일반</td><td>번호</td><td>제목</td><td>피해자ID</td><td>피의자ID</td>"
                            +"<td>위치</td><td>신고사유</td></tr><tr><td colspan=\"7\">내용</td></tr><tr>"
                            +"<td colspan=\"7\">[첨부사진]</td></tr><br>";
        }
        $("#declareinfo").html(x);
    });
</script>
</html>
