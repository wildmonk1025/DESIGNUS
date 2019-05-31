<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <style>
        #mainheader {
            border: 1px solid black;
            width: 1520px;
            height: 170px;
        }

        #homeMain {
            border: 1px solid black;
            width: 1520px;
            height: 700px;
        }

        .btn {
            background-color: orange;
            width: 150px;
            height: 30px;
            color: white;
            float: right;
        }

        #coklist {
            width: 1000px;
            height: 150px;
            float: left;
            display: block;
        }

        #bestlist {
            width: 1000px;
            height: 150px;
            float: left;
            display: block;
        }

        #footercheck {
            border: 1px solid black;
            width: 1520px;
            height: 150px;
        }

        #freeboard1 {
            position: absolute;
            width: 1000px;
            height: 100px;
            top: 220px;
            left: 50px;
            display: inherit;
        }

        #freeboard2 {
            border: 1px solid black;
            position: absolute;
            width: 1000px;
            height: 500px;
            top: 317px;
            left: 50px;
        }

        .btn2 {
            width: 150px;
            height: 98px;
            background-color: white;
        }

        a:link {
            color: black;
            text-decoration: none;
        }
        a:visited {
            color: black;
            text-decoration: none;
        }
        #paging{
            border: 1px solid black;
            width: 300px;
            height: 40px;
            position: absolute;
            top: 510px;
            left: 370px;
            text-align: center;
        }
        form{
            position: absolute;
            top: 20px;
            left: 550px;
        }
        select{
            width: 80px;
            height: 50px;
            font-size: 18px;
            
        }
        input{
            width: 180px;
            height: 50px;
            font-size: 18px;
            position: relative;
            top: -2px;
        }
        #btn5{
            position: relative;
            top: -2px;
            left: 440px;
        }
        .btn3{
            width: 87px;
            height: 40px;
            background-color: orange;
            
        }
       
    </style>
    <title>Home</title>
</head>

<body>
    <div id="mainheader">
        <jsp:include page="main.jsp" />
    </div>

    <div id="homeMain">
        <button id="revauctionbtn" class="btn">제작의뢰 요청하기</button>
        <button id="auctionbtn" class="btn">출품등록하기</button>
        <div id="freeboard1">
            <button class="btn2">자유게시판</button> 
            <button class="btn2">이용후기</button> 
            <button class="btn2" style="background-color: orange">공지사항</button>
            <form>
                <select>
                    <option>추천</option>
                    <option>등록일</option>
                    <option>조회수</option>
                    <option>작성자</option>
                </select>
                <input type="text">
                <button class="btn3">검색</button>
            </form>
            <button id="btn5" class="btn3">글작성</button>
        </div>
        <div id="freeboard2">
            <table style="text-align: center">
                <tr>
                    <th style="width: 100; height: 50">번호</th>
                    <th style="width: 500">제목</th>
                    <th style="width: 125">작성자</th>
                    <th style="width: 125">등록일</th>
                    <th style="width: 75">추천</th>
                    <th style="width: 75">조회수</th>
                </tr>
                <tr>
                    <td>1</td>
                    <td><a href="#">게시판 이용수칙 (필독)</a></td>
                    <td>Lee수원</td>
                    <td>2018-12-26</td>
                    <td>542</td>
                    <td>5429</td>
                </tr>
            </table>
            <div id="paging">
                [1]...[4][5][6][7][8][9]...[1004]
            </div>
        </div>
        
    </div>
    <div id="footercheck">
        <jsp:include page="footer.jsp"></jsp:include>
    </div>

</body>

</html>