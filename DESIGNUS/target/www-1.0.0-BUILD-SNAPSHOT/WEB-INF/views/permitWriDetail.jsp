<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>

<head>
    <meta charset="UTF-8">
    <title>permitWriDetail.jsp</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <style>
        body {
            margin: auto;
            width: 1520px;
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

        #adminwriterjoinfrm {
            border: 1px solid red;
            float: left;
            align-content: center;
            width: 1216px;
            height: 800px;
        }

        .writerjoinfrm {
            padding: inherit;
            margin-top: 30px;
            width: 1000px;
            height: 450px;

        }

        #writerjointitlefrm {
            margin: 10px;
            width: 230px;
            padding-left: 20px;
            float: left;
            background-color: orange;
            color: white;
        }

        #writerjoinlist {
            float: left;
            margin: 25px;
            left: 40px;
            float: left;
            width: 900px;
            height: 320px;
        }

        #writerjoincontents {
            float: left;
             border: 1px solid red;
            width: 99%;
            height: 370;
        }

        #writerjoinnum {
            border: 1px solid red;
            float: left;
            width: 200px;
            height: 32px;
        }

        #writerjoinid {
            border: 1px solid red;
            float: left;
            width: 200px;
            height: 30px;
        }

        #writertitle {
            border: 1px solid red;
            width: 800px;
            height: 30px;
            float: left;
        }

        #writerjoincontents {
            border: 1px solid red;
            width: 800px;
            height: 200px;
            float: left;
        }

        #writerjoinimg {
            border: 1px solid red;
            width: 800px;
            height: 200px;
            float: left;
        }

        #writerjoinreply {
            border: 1px solid red;
            width: 800px;
            height: 100px;
            float: left;
        }

        #writerjoinfile {
            border: 1px solid red;
            width: 800px;
            height: 40px;
            float: left;
        }

        #writerjoincoment {
            border: 1px solid red;
            width: 800px;
            height: 70px;
            float: left;
        }

        select {
            float: left;
            width: 200px;
            height: 32px;
        }

        #file1 {
            border: 1px solid black;
            width: 200px;
            float: left;
            height: 30px;
        }

        #file2 {
            border: 1px solid black;
            width: 550px;
            float: left;
            height: 30px;

        }
        #writerjoinno,#writerjoinok{
            margin-top: 650px;
            float:right;
            background-color: orange;
            width:90px;
            height:40px;
            color: white;
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
            <li style="background-color: skyblue">작가 가입신청</li>
            <li>카테고리 관리</li>
            <li>게시판/댓글</li>
            <li>게시판/댓글</li>

        </ul>
    </div>
    <div id="adminwriterjoinfrm">
        <div class="writerjoinfrm">
            <div id="writerjointitlefrm">
                <p>작가 가입요청 관리</p>
            </div>
            <div id="writerjoincontents">
                <div id="writerjoinnum">가입번호</div>
                <select id="cateselect">
                    <option value="">카테고리 분류</option>
                    <option value="">반지</option>
                    <option value="">목걸이</option>
                    <option value="">기타</option>
                    <option value="">등등</option>
                </select>
                <div id="writerjoinid">가입자아이디</div>
                <div id="writertitle">제목</div>
                <div id="writerjoincontents">내용</div>
                <div id="writerjoinimg">사진</div>
                <div id="writerjoinreply">답글</div>
                <div id="writerjoinfile">
                    <div id="file1">첨부파일</div>
                    <div id="file2">포트폴리오.Excel</div>
                </div>
                
                <div id="writerjoincoment">관리자 코맨트</div>
            </div>
            <button id="writerjoinno"> 가입 거절 </button><br>
            <button id="writerjoinok"> 가입 승인 </button>
        </div>
    </div>
</body>
<script>

</script>

</html>