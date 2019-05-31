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
            background-color: azure;
        }

        #adminopt {
            float: left;
            align-content: center;
            width: 1216px;
            height: 500px;
            background-color: azure;
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
            background-color: azure;
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
            <li style="background-color: skyblue">회원관리</li>
            <li>작가 전환신청</li>
            <li>작가 가입신청</li>
            <li>카테고리 관리</li>
            <li>게시판/댓글</li>
            <li>게시판/댓글</li>

        </ul>
    </div>
    <div id="adminopt">
        <div class="opt">
            <h3 style="text-align: center; font-size: 25px; background-color: orange;">회원관리</h3>
            <div class="btnArray" id="normal">일반회원 리스트</div>
            <div class="btnArray" id="writer">작가회원 리스트</div>
            <div class="btnArray" id="blkmember">블랙회원 리스트</div>
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
    var x="<h3>일반</h3>";
    var y="<h3>작가</h3>";
    $("#normal").addClass(function(){
        for(var j=0;j<5;j++) {
            x+="<tr><th>회원등급</th><td>아이디</td><td>이름</td><td>생년월일</td><td>이메일</td><td>포인트</td><td>경고횟수</td></tr>"
                +"<tr><th>일반</th><td>AAAA</td><td>소떡</td><td>19930101</td><td>volvohi</td><td>100300</td><td>3회</td></tr>";
        }
        $("#declareinfo").html(x);
    });
    $("#writer").click(function(){
        x="";
        for(var j=0;j<5;j++) {
            y+="<tr><th>회원등급</th><td>아이디</td><td>이름</td><td>생년월일</td><td>이메일</td><td>포인트</td><td>경고횟수</td></tr>"
                +"<tr><th>일반</th><td>AAAA</td><td>소떡</td><td>19930101</td><td>volvohi</td><td>100300</td><td>3회</td></tr>";
        }
        $("#declareinfo").html(y);
    });
</script>
</html>
