<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>memberListMM.jsp</title>
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
            height: 340px;
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

        td {
            border: 1px solid grey;
        }

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
            <li style="background-color: skyblue">회원관리</li>
            <li>작가 전환신청</li>
            <li>작가 가입신청</li>
            <li>카테고리 관리</li>
            <li>게시판/댓글</li>
            <li>게시판/댓글</li>

        </ul>
    </div>
    <div id="adminopt">
        <form name="form" method="get">
            <div class="opt">
                <h3 style="margin-left:  20px; font-size: 25px; background-color: orange;">회원 상세보기</h3>
                <hr>
                <div id="declarelist">
                    <table class="declareinfo">
                        <tr>
                            <td colspan="6" width="600" height="20">회원등급</td>
                        </tr>
                        <tr>
                            <td width="100" height="20">ID</td>
                            <td width="100" height="20">이름</td>
                            <td width="100" height="20">생년월일</td>
                            <td width="100" height="20">이메일</td>
                            <td width="100" height="20">포인트</td>
                            <td width="100" height="20">경고횟수</td>
                        </tr>
                        <tr>
                            <td width="100" height="20">AAAA</td>
                            <td width="100" height="20">소떡</td>
                            <td width="100" height="20">1993년 1월 1일</td>
                            <td width="100" height="20">volvohi@naver.com</td>
                            <td width="100" height="20">100300points</td>
                            <td width="100" height="20">3회</td>
                        </tr>
                        <tr>
                            <td colspan="6" width="600" height="20">상세정보</td>
                        </tr>
                        <tr>
                            <td colspan="6" width="600" height="170">카테고리 분류번호 : <br>
                                포트폴리오 : <br>
                                파일설명 : <br>
                                추천수 : <br></td>
                        </tr>
                    </table>
                </div>
                <div class="btnArray" id="btn1"><input type="submit" value="경고" name="action"
                onclick="javascipt: form.action='test20190503.html'"></div>
                <div class="btnArray" id="btn2"><input type="submit" value="해제" name="action"
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
