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

        }#point {
            border: 1px solid orange;
            position: absolute;
            width: 300px;
            height: 80px;
            text-align: left;
            left: 183px;
            top: 500px;

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
        a:active{text-decoration: none; color:#646464;}
        a:visited{text-decoration: none;color:#646464;}
        a:link {text-decoration: none;color:#646464;}
        a:hover{text-decoration: none;color:#646464;}
               #header {
	padding: 3px;
	width: 1510px;
	height: 100px;
	float: left;
}

#logo {
	padding: 5px;
	width: 270px;
	height: 80px;
	float: left;
}

#search {
	margin-left: 100px;
	padding-left: 120px;
	padding-right: 120px;
	padding-top: 20px;
	width: 570px;
	height: 80px;
	float: left;
}

#loginwriter {
	padding: 3px;
	padding-top: 20px;
	width: 300px;
	height: 80px;
	float: right;
}

#category {
	float: left;
	width: 1500px;
	height: 50px;
}

#searchtxt {
	margin: 50px, 20px;
	width: 300px;
	height: 30px;
	align: center;
}

#subcategory {
	width: 50px;
	height: 50px;
	background-color: orange;
	color: white;
	font-size: 30px;
	float: left;
}

#menu {
	float: left;
	width: 1400px;
	height: 50px
}

#submenu {
	margin-left: 100px;
	width: 150px;
	float: left;
	height: 50px;
	text-align: center;
	font-size: 18px;
}

#msg {
	width: 50px;
	height: 50px;
	margin-left: 10px;
	float: left;
}

#mypageimg {
	float: left;
	width: 50px;
	height: 50px;
	margin-left: 5px;
}

#loginmsg {
	float: left;
	width: 130px;
	height: 50px;
	margin-left: 10px;
}
    </style>

</head>
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>

<body>
    <div id="one">
        <form action="">

          <div id="main">
            <div id="header">
		<div id="logo">
			<a href="home"><img src="./images/logo.png" width="250px" height="80px" /></a>
			<!-- <img src="./resources/images/logo.png" width="250px" height="80px" /> -->
			<!-- <img src="./resources/images/logo.png" width="250px" height="80px" /> -->
		</div>
		<div id="search">
			<input type="text" id="searchtxt" placeholder="검색어를 입력해주세요." />
			<button id="searchbtn">검색</button>
		</div>
		<div id="loginwriter">
			<div id="mypageimg"></div>
			<div id="msg">
				<img src="./images/writer.png" width="40px" height="40px" />
			</div>
			<div id="loginmsg"><a href="logingo">로그인</a></div>
		</div>
	</div>
	<div id="category">
		<div id="subcategory" align="center">三</div>
		<div id="menu">
			<div id="submenu"><a href="sponsor">후원</a></div>
			<div id="submenu"><a href="boardlist">게시판</a></div>
			<div id="submenu"><a href="bestwriter">인기작가</a></div>
			<div id="submenu"><a href="servicecenter">고객센터</a></div>
		</div>
	</div>

        </div>
            <div id="notice">
                <h2>알림</h2>
            </div>
            <div id="info">
                <table width="1000">

                <tr>
                    <td style="font-size: 30px"><a href="revAuctionMyOrderList.html">제작의뢰 내역</a></td>
                </tr>
                <tr>
                    <td style="font-size: 30px"><a href="revAuctionMyAcceptList.html">제작의뢰 접수내역</a></td>
                </tr>
                <tr>
                    <td style="font-size: 30px"><a href="auctionMyOrderList.html">출품작 구매 내역</a></td>
                </tr>
                <tr>
                    <td style="font-size: 30px"><a href="auctionMyAcceptList.html">출품작 판매 내역</a></td>
                </tr>
                <tr>
                    <td style="font-size: 30px"><a href="fundingAcceptList.html">후원진행 내역</a></td>
                </tr>
                <tr>
                    <td style="font-size: 30px"><a href="fundingOrderList.html">후원요청 내역</a></td>
                </tr>
                <tr>
                    <td style="font-size: 30px"><a href="basketFrm.html">꿍 내역</a></td>
                </tr>
                <tr>
                    <td style="font-size: 30px"><a href="memberEdit.html">개인정보 수정</a></td>
                </tr>
                <tr>
                    <td style="font-size: 30px"><a href="memberDelete.html">회원탈퇴 신청</a></td>
                </tr>
                <tr>
                    <td style="font-size: 30px"><a href="memberTransform.html">작가전환 신청</a></td>
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
