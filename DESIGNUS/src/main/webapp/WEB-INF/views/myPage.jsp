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

        #renking {
            border: 1px solid orange;
            width: 1100px;
            height: 200px;
            text-align: center;
            left: 603px;
            position: absolute;
            top: 510px;
            font-size: 20px;
        }

        #auction {
            border: 1px solid orange;
            width: 1100px;
            height: 250px;
            text-align: center;
            left: 603px;
            position: absolute;
            top: 730px;
            font-size: 20px;
        }


        #spon {


            border: 1px solid orange;
            width: 1100px;
            height: 230px;
            text-align: center;
            left: 603px;
            position: absolute;
            top: 260px;

        }

        #main {
            position: absolute;
            width: 1520px;
            height: 170px;
            border: 1px solid orange;
            left: 183px;
            text-align: center;
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
        <form action="">

            <div id="main">
                <h1>메인!</h1>

            </div>
            <div id="notice">
                <h2>알림</h2>
            </div>
            <div id="info">
                <table width="1000">
                    <tr>
                        <td>
                            <h3>내역</h3>
                        </td>
                    </tr>
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
                        <td style="font-size: 30px">꿍 내역</td>
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

            <div id="renking">
                <h1>랭킹</h1>


            </div>
            <div id="auction">
                <h1>참여중인경매</h1>
            </div>
            <div id="spon">
                <h1>펀딩/후원</h1>
            </div>
            <div id="point">
                <h1>포인트:</h1>
            </div>
            <div id="img">
                <h1>프로필사진</h1>
            </div>
        </form>
    </div>
</body>

</html>
