<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>

    <meta charset="UTF-8">
    <title>Insert title here</title>
    <style type="text/css">
        #one {
            position: relative;
            width: 100%;
            height: 100%;
        }

        div {
            margin: auto;
        }

        #notice {
            background-color: orange;
            border: 1px solid orange;
            position: absolute;
            width: 1100px;
            height: 60px;
            text-align: center;
            left: 603px;
            top: 180px;
            font-size: 100%
        }

        #info {
           border: 1px solid orange;
            position: absolute;
            width: 300px;
            height: 600px;
            text-align: left;
            left: 183px;
            top: 600px;
            
        }



        #main {
            position: absolute;
            width: 1520px;
            height: 170px;
            border: 1px solid orange;
            left: 183px;
            text-align: center;
        }

        .bt01 {
            position: absolute;
            right: 100px;
            top: 50px;

        }

        a {
            color: red
        }


        button {
            display: inline-block;
            vertical-align: top;
            position: relative;
            overflow: hidden;
            min-width: 96px;
            line-height: 46px;
            padding: 0 24px;
            font-size: 14px;
            color: white;
            text-align: center;
            text-decoration: none;
            text-shadow: 0 1px #154c86;
            background-color: #247edd;
            background-clip: padding-box;
            border: 1px solid;
            border-color: #1c65b2 #18589c #18589c;
            border-radius: 4px;
            -webkit-box-shadow: inset 0 1px rgba(255, 255, 255, 0.4), 0 1px 2px rgba(0, 0, 0, 0.2);
            box-shadow: inset 0 1px rgba(255, 255, 255, 0.4), 0 1px 2px rgba(0, 0, 0, 0.2);
            background-image: -webkit-linear-gradient(top, rgba(255, 255, 255, 0.3), rgba(255, 255, 255, 0) 50%, rgba(0, 0, 0, 0.12) 51%, rgba(0, 0, 0, 0.04));
            background-image: -moz-linear-gradient(top, rgba(255, 255, 255, 0.3), rgba(255, 255, 255, 0) 50%, rgba(0, 0, 0, 0.12) 51%, rgba(0, 0, 0, 0.04));
            background-image: -o-linear-gradient(top, rgba(255, 255, 255, 0.3), rgba(255, 255, 255, 0) 50%, rgba(0, 0, 0, 0.12) 51%, rgba(0, 0, 0, 0.04));
            background-image: linear-gradient(to bottom, rgba(255, 255, 255, 0.3), rgba(255, 255, 255, 0) 50%, rgba(0, 0, 0, 0.12) 51%, rgba(0, 0, 0, 0.04));
        }

        #spon1 {

            position: absolute;
            width: 1100px;
            height: 60px;
            text-align: center;
            left: 603px;
            top: 280px;
            font-size: 100%
        }


        #ListView1 {
            border: 1px solid black;
            position: absolute;
            top: 10px;
            left: 10px;
            width: 97%;
            height: 96%;
        }

        #ListView2 {
            border: 1px solid black;
            position: absolute;
            top: 10px;
            left: 10px;
            width: 97%;
            height: 96%;
            display: none;

        }

        #ListView3 {
            border: 1px solid black;
            position: absolute;
            top: 10px;
            left: 10px;
            width: 97%;
            height: 96%;
            display: none;
        }

        #list {
            width: 1100px;
            height: 700px;
            text-align: center;
            left: 603px;
            position: absolute;
            top: 360px;


        }

        .lv1 {
            border: 1px solid black;
            position: absolute;
            top: 90px;
            left: 10%;
            width: 40%;
            height: 25%;
        }

        .lv2 {
            border: 1px solid black;
            position: absolute;
            top: 90px;
            left: 50%;
            width: 40%;
            height: 25%;
        }

        .lv3 {
            border: 1px solid black;
            position: absolute;
            top: 260px;
            left: 10%;
            width: 40%;
            height: 25%;
        }

        .lv4 {
            border: 1px solid black;
            position: absolute;
            top: 260px;
            left: 50%;
            width: 40%;
            height: 25%;
        }

        .lv5 {
            position: absolute;
            top: 430px;
            left: 30%;
            width: 40%;
            height: 10%;
        }

        .lv6 {
            position: absolute;
            top: 540px;
            left: 50%;
            width: 40%;
            height: 10%;
        }

        .page {
            color: blue;
        }
         #point {
            border: 1px solid orange;
            position: absolute;
            width: 300px;
            height: 80px;
            text-align: left;
            left: 183px;
            top: 510px;

            font-size: 20px;
        }

        #img {
            border: 1px solid orange;
            position: absolute;
            width: 300px;
            height: 310px;
            text-align: left;
            left: 183px;
            top: 180px;

            font-size: 20px;

        }
    </style>

</head>
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>

<body>
    <div id="one">


        <div id="main">
            <h1>메인!</h1>

        </div>
        <div id="notice">
            <h2>꿍 리스트</h2>
            <hr>
        </div>
        <div id="info">
            <table width="1000">
                
                <tr>
                    <td style="font-size: 30px">제작의뢰 내역</td>
                </tr>
                <tr>
                    <td style="font-size: 30px">제작의뢰 접수내역</td>
                </tr>
                <tr>
                    <td style="font-size: 30px">출품작 구매 내역</td>
                </tr>
                <tr>
                    <td style="font-size: 30px">출품작 판매 내역</td>
                </tr>
                <tr>
                    <td style="font-size: 30px">후원진행 내역</td>
                </tr>
                <tr>
                    <td style="font-size: 30px">후원요청 내역</td>
                </tr>
                <tr>
                    <td style="font-size: 30px"><a href="">꿍 내역</a></td>
                </tr>
                <tr>
                    <td style="font-size: 30px">개인정보 수정</td>
                </tr>
                <tr>
                    <td style="font-size: 30px">회원탈퇴 신청</td>
                </tr>
                <tr>
                    <td style="font-size: 30px">작가전환 신청</td>
                </tr>
            </table>
        </div>
        <div id="spon1">
            <button id="Lbtn1"> 출품 꿍리스트</button>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <button id="Lbtn2"> 제작의뢰 꿍리스트</button>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <button id="Lbtn3"> 후원 꿍리스트</button>
        </div>
        <div id="list">
            <div id="ListView1">
                출품 꿍리스트
                <div class="lv1">출품상품1</div>
                <div class="lv2">출품상품2</div>
                <div class="lv3">출품상품3</div>
                <div class="lv4">출품상품4</div>
                <div class="lv5">페이징<br>
                    <h3 class="page">[1][2][3][4][5].....[45]</h3>
                </div>
                <div class="lv6"><button type="button" onclick="location.href='myPage.html' ">돌아가기</button></div>
            </div>
            <div id="ListView2">
                제작의뢰 꿍리스트
                <div class="lv1">제작의뢰상품1</div>
                <div class="lv2">제작의뢰상품2</div>
                <div class="lv3">제작의뢰상품3</div>
                <div class="lv4">제작의뢰상품4</div>
                <div class="lv5">페이징<br>
                    <h3 calss="page">[1][2][3][4][5].....[45]</h3>
                </div>
                <div class="lv6"><button type="button" onclick="location.href='myPage.html' ">돌아가기</button></div>
            </div>
            <div id="ListView3">
                후원꿍리스트
                <div class="lv1">후원상품1</div>
                <div class="lv2">후원상품2</div>
                <div class="lv3">후원상품3</div>
                <div class="lv4">후원상품4</div>
                <div class="lv5">페이징<br>
                    <h3 calss="page">[1][2][3][4][5].....[45]</h3>
                </div>
                <div class="lv6"><button type="button" onclick="location.href='myPage.html' ">돌아가기</button></div>
            </div>
        </div>
         <div id="point">
                <h1>포인트:</h1>
            </div>
            <div id="img">
                <h1>프로필사진</h1>
            </div>
    </div>



</body>
<script type="text/javascript">
    $("#Lbtn1").click(function() {
        $("#ListView1").css("display", "inline");
        $("#ListView2").css("display", "none");
        $("#ListView3").css("display", "none");

    });

    $("#Lbtn2").click(function() {
        $("#ListView1").css("display", "none");
        $("#ListView2").css("display", "inline");
        $("#ListView3").css("display", "none");
    });
    $("#Lbtn3").click(function() {
        $("#ListView1").css("display", "none");
        $("#ListView2").css("display", "none");
        $("#ListView3").css("display", "inline");
    });
</script></html>