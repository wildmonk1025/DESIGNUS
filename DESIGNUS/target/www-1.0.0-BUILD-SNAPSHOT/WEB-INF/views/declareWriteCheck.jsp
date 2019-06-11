<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>declareWriteCheck.jsp</title>
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
            position: relative;
            margin-top: 5px;
            width: 1000px;
            height: 450px;
        }

        #declarelist{
            margin-left: 20px;
            width: 820px;
            height: 340px;
            border: 1px solid grey;
            float: left;
        }
        
        #declareinfo{
            width: 820px;
            height: 340px;
            border: 1px solid red;
        }
        
        .btnArray{
            margin-left: 10px;
            position: absolute;
            float: left;
            width: 120px;
        }
        
        #btn1{
            bottom: 100px;
            left: 850px;
        }
        #btn2{
            bottom: 60px;
            left: 850px;
        }
        #btn3{
            bottom: 20px;
            left: 850px;
        }
        .btnArray>input{
            width: 120px;
            height: 30px;
        }
        
        td{
            border: 1px solid grey;
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
            <li style="background-color: skyblue">신고내역</li>
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
       <form name="form" method="post">
        <div class="opt">
            <h3 style="margin-left:  20px; font-size: 25px; background-color: orange;">신고 상세내역</h3>
            <hr>
            <div id="declarelist">
                <table id="declareinfo">
                    <tr>
                        <td colspan="5" width="500" height="20">신고번호</td>
                    </tr>
                    <tr>
                        <td width="100" height="20">신고위치</td>
                        <td width="100" height="20">신고사유</td>
                        <td width="100" height="20">신고자ID</td>
                        <td width="100" height="20">신고대상ID</td>
                        <td width="100" height="20">신고일</td>
                    </tr>
                    <tr>
                        <td width="100" height="20">Dummy1</td>
                        <td width="100" height="20">Dummy2</td>
                        <td width="100" height="20">Dummy3</td>
                        <td width="100" height="20">Dummy4</td>
                        <td width="100" height="20">Dummy5</td>
                    </tr>
                    <tr>
                        <td colspan="5" width="500" height="40">제목</td>
                    </tr>
                    <tr>
                        <td colspan="5" width="500" height="170">내용</td>
                    </tr>
                    <tr>
                        <td colspan="5" width="500" height="30">첨부사진</td>
                    </tr>
                </table>
            </div>
            <div class="btnArray" id="btn1"><input type="submit" value="적합" onclick="javascipt: form.action='gogo'"></div>
            <div class="btnArray" id="btn2"><input type="submit" value="부적합" formaction="gogo"/></div>
            <div class="btnArray" id="btn3"><input type="button" onclick="goBack()" value="돌아가기"/></div>
            <!-- <div class="btnArray" id="btn3"><input type="button" onclick="location.href='home'" value="돌아가기"></div> -->
        </div>
        </form>
    </div>
</body>
<script>
function goBack() {
    window.history.forward();
}
</script>
</html>