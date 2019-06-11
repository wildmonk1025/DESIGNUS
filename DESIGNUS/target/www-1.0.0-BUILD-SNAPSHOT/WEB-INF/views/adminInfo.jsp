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
            border: 1px solid blue;
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

    </style>
</head>
<body>
    <div id="mainheader">

    </div>
    <div id="adminmenu">
        <ul>
            <li style="text-align: center; font-size: 20px">관리내역</li>
            <li>게시판/댓글</li>
            <li>신고내역</li>
            <li>1:1문의</li>
            <li>회원관리</li>
            <li>작가 전환신청</li>
            <li>작가 가입신청</li>
            <li>카테고리 관리</li>
            <li>게시판/댓글</li>
            <li>게시판/댓글</li>

        </ul>
    </div>
    <div id="adminopt">
        <div class="opt">
            <h3>신고내역</h3>
            <div id="declarelist">
                <table id="declareinfo">

                </table>
            </div>
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
    var x="";
    var y="";
    $("#declareinfo").addClass(function(){
        for(var j=0;j<4;j++) {
            x+="<tr><td>신고번호</td><td>신고유형</td><td>사유</td><td>피해자ID</td><td>피의자ID</td>"
                            +"<td>제목</td><td>신고일</td><td rowspan=\"2\">첨부파일 확인<br><button>첨부 파일</button></td></tr><tr>"
                            +"<td colspan=\"8\" style=\"text-align: center\">[내용]</td></tr><br>";
        }
        $("#declareinfo").html(x);
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
