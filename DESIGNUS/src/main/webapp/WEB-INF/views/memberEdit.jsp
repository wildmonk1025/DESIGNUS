<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>Insert title here</title>
    <style>
        #join {
            position: absolute;
            top: 500px;
            left: 200px;
        }

        #logoimg {
            width: 250px;
            height: 100px;
            position: relative;
            top: 40px;
            left: 500px;
        }

        #norjoinFrm {
            position: relative;
            top: 50px;
            left: 400px;
        }

        .memberN {
            font-size: 15;
            height: 40;
        }

        #btz {
            position: relative;
            width: 70;
            height: 40;
        }

        #memberS {
            position: relative;
            top: 80px;
            left: 400px;
        }

        .btz2 {
            position: relative;
            top: 20px;
            left: 120px;
            width: 300px;
            height: 40
        }

        #norjoinFrm2 {
            position: relative;
            top: 50px;
            left: 300px;
        }

        #mb_email {
            font-size: 15;
            width: 200px;
            height: 40;
            position: relative;
            left: -98px;
        }

        #mb_email2 {
            font-size: 15;
            width: 200px;
            height: 40;
            position: relative;
            right: 175px;
        }

        #emailList {
            font-size: 15;
            width: 100px;
            height: 40;
            position: relative;
            right: 175px;
        }

        #Echeck {
            width: 100;
            height: 40;
            position: relative;
            top: 10px;
            left: 450px;
        }

        #null {
            position: absolute;
            font-size: 15px;
            width: 20px;
            top: 360px;
            left: 715px;

        }

        #i2 {
            position: relative;
            top: 10px;
            left: 150px;
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

        #spon {


            border: 1px solid orange;
            width: 1100px;
            height: 900px;
            left: 611px;
            position: absolute;
            top: 275px;
            background-color: #cdfdee;
        }

        #pp {
            color: red;
        }

        #btn1 {
            text-align: center;

        }

        h,
        td,
        tr,
        input,
        textarea,
        select,
        FORM {
            font-family: 고딕;
            font-size: 1em;
            border-radius: 5px;

        }


        #table1 {
            width: 100%;
            height: 80%;
            border-spacing: 10px;
        }

        .memberN {
            font-size: 15;
            width: 90%;
            height: 40;
        }

    </style>
</head>

<body>
    <div id="one">


        <div id="main">
            <h1>메인!</h1>

        </div>
        <div id="notice">
            <h2>개인 정보 수정</h2>
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
                    <td style="font-size: 30px">꿍 내역</td>
                </tr>
                <tr>
                    <td style="font-size: 30px"><a href="">개인정보 수정</a></td>
                </tr>
                <tr>
                    <td style="font-size: 30px">회원탈퇴 신청</td>
                </tr>
                <tr>
                    <td style="font-size: 30px">작가전환 신청</td>
                </tr>
            </table>
        </div>


        <div id="point">
            <h1>포인트:</h1>
        </div>
        <div id="img">
            <h1>프로필사진</h1>
        </div>
    </div>

    <div id="spon">

        <table cellspacing="1" id="table1">
            <FORM>
                <tr>
                    <td text-align="center">아이디</td>
                    <td>회원아이디

                    </td>
                </tr>
                <tr>
                    <td> 비밀번호 </td>
                    <td> <input type="password" /> </td>
                </tr>
                <tr>
                    <td> 비밀번호 확인 </td>
                    <td> <input type="password" />&nbsp;비밀번호 확인 메게지</td>
                </tr>
                <tr>
                    <td> 주소 </td>
                    <td>
                        <input type="text" />
                        <input type="button" value="주소찾기" />
                    </td>
                </tr>
                <tr>
                    <td> 상세주소 </td>
                    <td>
                        <input type="text" /> &nbsp;&nbsp; <input type="text" />
                    </td>
                </tr>
                <tr>
                    <td>프로필 사진</td>
                    <td><input id="mb_profile" class="memberN" type="file" name="mb_profile"></td>
                </tr>



                <tr>
                    <td> 휴대폰 </td>
                    <td>
                        <input type="radio" name="phone" /> SKT
                        <input type="radio" name="phone" /> KTF
                        <input type="radio" name="phone" /> LGU+
                        <br />
                        <select>
                            <option> 010 </option>
                            <option> 011 </option>
                            <option> 016 </option>
                            <option> 018 </option>
                        </select>
                        <input type="text" size="6" /> - <input type="text" size="6" />
                    </td>
                </tr>

                <tr>
                    <td> 이메일 </td>
                    <td>
                        <input type="text" /> @ <input type="text" /> &nbsp;&nbsp;
                        <select>
                            <option> 직접입력 </option>
                            <option> naver.com </option>
                            <option> daum.net </option>
                            <option> nate.com </option>
                        </select>
                    </td>
                </tr>



            </FORM>
        </table>

        <div id="btn1"><br><br><br>
            <button>수정하기</button>&nbsp;&nbsp;&nbsp;&nbsp;
            <button type="button" onclick="location.href='myPage.html' ">돌아가기</button>
        </div>
    </div>





</body>

</html>
