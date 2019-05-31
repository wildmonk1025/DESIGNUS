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
            border: 1px solid black;
            position: absolute;
            width: 500px;
            height: 100px;
            top: 220px;
            left: 50px;
        }

        #freeboard2 {
            border: 1px solid black;
            position: absolute;
            width: 1000px;
            height: 500px;
            top: 317px;
            left: 50px;
        }

        button {
            width: 33.3%;
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
            <button style="background-color: orange">자유게시판</button><button>이용후기</button><button>공지사항</button>
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