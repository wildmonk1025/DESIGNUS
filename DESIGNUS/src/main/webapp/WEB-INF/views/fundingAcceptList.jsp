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
            height: 230px;
            text-align: center;
            left: 603px;
            position: absolute;
            top: 510px;

        }

        #auction {
            border: 1px solid orange;
            width: 1100px;
            height: 230px;
            text-align: center;
            left: 611px;
            position: absolute;
            top: 760px;

        }


        #spon {


            border: 1px solid orange;
            width: 1100px;
            height: 230px;
            text-align: center;
            left: 611px;
            position: absolute;
            top: 275px;

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

         #lightbox {
            border: 1px solid orange;
            position: absolute;
            top: 200px;
            left: 600px;
            width: 800px;
            height: 700px;
            margin: auto;
            background: #fff;
            z-index: 1001;
            display: none;
            background-color: orange;
            text-align: center;
        }

        #lightbox-shadow {
            position: absolute;
            top: 0;
            left: 0;
            width: 8000px;
            height: 8000px;
            background: #000;
            opacity: 1;
            z-index: 1000;
            display: none;
        }
        #lightbox1 {
            border: 1px solid orange;
            position: absolute;
            top: 200px;
            left: 600px;
            width: 800px;
            height: 700px;
            margin: auto;
            background: #fff;
            z-index: 1001;
            display: none;
            background-color: orange;
            text-align: center;
        }

        #lightbox-shadow1 {
            position: absolute;
            top: 0;
            left: 0;
            width: 8000px;
            height: 8000px;
            background: #000;
            opacity: 1;
            z-index: 1000;
            display: none;
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
     #point {
            border: 1px solid orange;
            position: absolute;
            width: 300px;
            height: 80px;
            text-align: left;
            left: 190px;
            top: 510px;

            font-size: 20px;
        }

        #img {
            border: 1px solid orange;
            position: absolute;
            width: 300px;
            height: 310px;
            text-align: left;
            left: 190px;
            top: 190px;

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
                <h2>후원 진행 내역</h2>
                <hr>
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
                        <td style="font-size: 30px"><a href="">후원진행 내역</a></td>
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
                <h1>후원진행중</h1><br>
                <h2>■■■■■□□□□□ 1000/510 51%</h2>
                
                <div class="bt01">
                    </div></div>

            </div>
            <div id="auction">
                <h1>후원마감</h1>
                <h1>100%도달</h1>
                <div class="bt01">
                    <button id="action">배송정보입력</button><br><br>
                   
                    </div>
            </div>
            <div id="spon">
                <h1>배송정보</h1>
                <div class="bt01">
                    <button id="cancel">후원후기쓰기</button>
                        <h1>완료</h1>
                    </div>
            </div>
             <div id="point">
                <h1>포인트:</h1>
            </div>
            <div id="img">
                <h1>프로필사진</h1>
            </div>
            <div id="lightbox-shadow">
        
            <div id="lightbox">
     <h1>의뢰인배송정보</h1>
            <button>요청</button>
            <button type="button" onclick="location.href='fundingAcceptList.html' ">취소</button>
    </div>
    </div>       
        <div id="lightbox-shadow1">
        
            <div id="lightbox1">
     <h1>후원 후기 쓰기</h1>
            <button>확인</button>
            <button type="button" onclick="location.href='fundingAcceptList.html' ">취소</button>
    </div>
    </div> 
     
  

   
</body>
<script type="text/javascript">
  $("#action").click(function() {
       $('#lightbox-shadow').css("display","inline")
       $('#lightbox').css("display","inline")
    });
  $("#cancel").click(function() {
       $('#lightbox-shadow1').css("display","inline")
       $('#lightbox1').css("display","inline")
    }); 


</script>

</html>