<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>transformListCheck.jsp</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <style>
        body {
            margin: auto;
            width: 1520px;
            height: auto;
            overflow: auto;
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
        #middle {
            float: left;
            width: 1518px;
            height: auto;
            overflow: auto;
        }
        #adminmenu {
            float: left;
            width: 300px;
            height: 500px;
        }

        #adminopt {
            float: left;
            align-content: center;
            width: 1214px;
            height: 500px;
        }

        .opt {
            padding: inherit;
            position: relative;
            margin-top: 5px;
            width: 1000px;
            height: 450px;

        }

        #declarelist {
            margin-left: 20px;
            width: 820px;
            height: 340px;
            border: 1px solid grey;
            float: left;
        }

        .declareinfo {
            width: 820px;
            height: auto;
            border: 1px solid red;
        }

        .btnArray {
            margin-left: 10px;
            position: absolute;
            float: left;
            width: 120px;
        }

        #btn1 {
            bottom: 100px;
            left: 850px;
        }

        #btn2 {
            bottom: 60px;
            left: 850px;
        }

        #btn3 {
            bottom: 20px;
            left: 850px;
        }

        .btnArray>input {
            width: 120px;
            height: 30px;
        }

/*        td{
            border: 1px solid grey;
        }*/

    </style>
</head>

<body>
    <div id="mainheader">

    </div>
    <div id="middle">
    <div id="adminmenu">
        <ul>
            <li style="text-align: center; font-size: 20px">관리내역</li>
            <li>게시판/댓글</li>
            <li>신고내역</li>
            <li>1:1문의</li>
            <li>회원관리</li>
            <li style="background-color: skyblue">작가 전환신청</li>
            <li>작가 가입신청</li>
            <li>카테고리 관리</li>
            <li>게시판/댓글</li>
            <li>게시판/댓글</li>

        </ul>
    </div>
    <div id="adminopt">
        <form name="form" method="get">
            <div class="opt">
                <h3 style="margin-left:  20px; font-size: 25px; background-color: orange;">작가 전환신청 상세내역</h3>
                <hr>
                <div id="declarelist">
                    <table class="declareinfo">
                        <tr>
                            <td width="100" height="30">번호</td>
                            <td width="100" height="30">ID</td>
                            <td width="100" height="30">이름</td>
                            <td width="100" height="30">생년월일</td>
                        </tr>
                        <tr>
                            <td width="100" height="10"><input type="text" value="2039"></td>
                            <td width="100" height="10"><input type="text" value="AAA"></td>
                            <td width="100" height="10"><input type="text" value="소씨"></td>
                            <td width="100" height="10"><input type="text" value="1993년 6월 13일"></td>
                        </tr>
                        <tr>
                            <td width="100" height="30">이메일</td>
                            <td width="100" height="30">포인트</td>
                            <td width="100" height="30">경고횟수</td>
                            <td width="100" height="30">회원등급</td>
                        </tr>
                        <tr>
                            <td width="100" height="10"><input type="text" value="volvohi3@naver.com"></td>
                            <td width="100" height="10"><input type="text" value="100,300points"></td>
                            <td width="100" height="10"><input type="text" value="3회"></td>
                            <td width="100" height="10"><input type="text" value="일반"></td>
                        </tr>
                        <tr>
                            <td width="100" height="30">카테고리 분류번호</td>
                            <td colspan="3" width="300" height="30"><input type="text" value="귀금속,반지..."></td>
                        </tr>
                        <tr>
                            <td width="100" height="30">파일설명</td>
                            <td colspan="3" width="300" height="10"><input type="text" value="내용을 넣을 것이다.."></td>
                        </tr>
                        <tr>
                            <td width="100" height="30">첨부파일</td>
                            <td colspan="3" width="300" height="120"><input type="text" value="첨부1.JPG"></td>
                        </tr>
                        <tr>
                            <td width="100" height="30">ADMIN코멘트</td>
                            <td colspan="3" width="300" height="10"><input type="text" value="알림보낼 한마디"></td>
                        </tr>
                    </table>
                </div>
                <div class="btnArray" id="btn1"><input type="submit" value="전환 승인" name="action"
                onclick="javascipt: form.action='test20190503.html'"></div>
                <div class="btnArray" id="btn2"><input type="submit" value="전환 거절" name="action"
                onclick="javascipt: form.action='adminInfo.html'"></div>
                <div class="btnArray" id="btn3"><input type="button" onclick="goBack()" value="돌아가기" /></div>
                <!--<div class="btnArray" id="btn3"><button onclick="goBack()">돌아가기</button></div>-->
            </div>
        </form>
        </div>
    </div>
</body>
<script>
    function goBack() {
        window.history.forward();
    }
</script>
</html>
