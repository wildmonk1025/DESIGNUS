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
            height: auto;
            display: inline-block;
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

        #reviewRead1 {
            position: relative;
            float: left;
            width: 1000px;
            height: 100px;
            top: 50px;
            left: 50px;

        }

        #reviewRead2 {
            position: relative;
            float: left;
            width: 1000px;
            height: 50px;
            top: 50px;
            left: 50px;
        }

        #reviewRead3 {
            position: relative;
            float: left;
            width: 1000px;
            height: auto;
            top: 60px;
            left: 50px;
        }

        #reviewRead4 {
            position: relative;
            float: left;
            width: 1000px;
            height: 40px;
            left: 50px;
        }

        #reviewRead5 {
            position: relative;
            float: left;
            width: 1000px;
            top: 60px;
            left: 50px;
        }

        #reviewRead6 {
            position: relative;
            float: left;
            width: 1000px;
            height: 50px;
            top: 60px;
            left: 50px;
        }

        .btn {
            background-color: orange;
            width: 150px;
            height: 30px;
            color: white;
            float: right;
        }
        
        .btn2 {
            width: 150px;
            height: 98px;
            background-color: white;
        }

        .btn3 {
            position: relative;
            height: 40px;
            width: 70px;
            top: 28px;
            left: 387px;
        }

        .btn4 {
            position: relative;
            height: 40px;
            float: right;
            right: 20px;
            bottom: 15px;
        }

        .btn5 {
            position: relative;
            width: 100px;
            height: 50px;
            float: right;
            bottom: 21px;
        } 
        
        .btn6 {
            border: none;
            width: 150px;
            height: 50px;
            float: right;
            background-color: orange;
        }
        .btn7 {
            width: 130px;
            height: 40px;
            float: right;
            
            
        }

        #tableLine {
            border-bottom: 0.5px solid orange;
            border-top: 0.5px solid orange;
        }


        .clear {
            width: 1000px;
            height: 70px;
            clear: both;
        }

        .test {
            border: 1px solid black;
            position: relative;
            width: 920px;
            height: 200px;
            top: 20px;
            left: 20px;
            padding: 20px;
        }
        .input1{
            width: 900px;
            height: 50px;
            font-size: 20px;
        }
        .input2{
            width: 750px;
            height: 50px;
            font-size: 20px;
            float: left;
        }
        
        textarea{
            font-size: 20;
            width: 100%;
            height: 200px;
            resize: none;
            
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
        <div id="reviewRead1">
            <button style="background-color: orange" class="btn2">자유게시판</button>
            <button class="btn2">이용후기</button>
            <button class="btn2">공지사항</button>
            <input type="button" class="btn3" value="수정">
            <input type="button" class="btn3" value="삭제">
        </div>
        <div id="reviewRead2">
            <table style="text-align: center" id="tableLine">
                <tr>
                    <th style="width: 1000; height: 50">{자유}게시판 글쓰기</th>
                </tr>
            </table>
        </div>
        <div id="reviewRead3">
            <form>
                <table style="text-align: center">
                    <tr style="height: 50">
                        <td style="width: 100">제목</td>
                        <td style="width: 900"><input type="text" class="input1"></td>
                    </tr>
                    <tr style="height: 50">
                        <td>내용</td><td rowspan="4"><textarea></textarea></td>
                    </tr>
                    <tr style="height: 50">
                    </tr>
                    <tr style="height: 50">
                    </tr>
                    <tr style="height: 50">
                    </tr>
                    <tr style="height: 50">
                        <td>업로드파일</td><td><input type="text" class="input2" readonly><button class="btn6">파일첨부</button></td>
                        
                    </tr>
                    
                </table>
            </form>

            <div class="clear"></div>

        </div>
        <div id="reviewRead4">
            <input type="button" class="btn7" value="제출하기">
            <input type="button" class="btn7" value="새로작성">
            <input type="button" class="btn7" value="뒤로가기">
        </div>



        <div class="clear"></div>

    </div>


    <div id="footercheck">
        <jsp:include page="footer.jsp"></jsp:include>

    </div>

</body>

</html>