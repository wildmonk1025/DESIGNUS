<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <style>
        div {
            margin: auto;
            border: 1px solid orange;
        }

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

        * {
            margin: 0px;
            padding: 0px;
        }

       

        nav {
            font-family: Helvetica, Arial, "Lucida Grande", sans-serif;
            font-size: 13px;
            line-height: 1.5;
            margin: 50px auto;
            width: 200px;
            -webkit-box-shadow: 2px 2px 5px rgba(0, 0, 0, 0.2);
            -moz-box-shadow: 2px 2px 5px rgba(0, 0, 0, 0.2);
            box-shadow: 2px 2px 5px rgba(0, 0, 0, 0.2);
        }

        .menu-item {
            background: #fff;
            width: 200px;
        }

        /*Menu Header Styles*/
        .menu-item h4 {
            border-bottom: 1px solid rgba(0, 0, 0, 0.3);
            border-top: 1px solid rgba(255, 255, 255, 0.2);
            color: #fff;
            font-size: 15px;
            font-weight: 500;
            padding: 7px 12px;



        }




        /*ul Styles*/
        .menu-item ul {
            background: orange;
            font-size: 13px;
            line-height: 30px;
            height: 0px;
            list-style-type: none;
            overflow: hidden;
            padding: 0px;
            width: 200px;
            position: absolute;
            top:162px;

            /*Animation*/
            -webkit-transition: height 1s ease;
            -moz-transition: height 1s ease;
            -o-transition: height 1s ease;
            -ms-transition: height 1s ease;
            transition: height 1s ease;
        }


        .menu-item:hover ul {
            height: 340px;
            width: 200px;
            position: absolute;
            top:162px;
            -webkit-transition: height 1s ease;
            -moz-transition: height 1s ease;
            -o-transition: height 1s ease;
            -ms-transition: height 1s ease;
            transition: height 1s ease;
        }

     

        /*li Styles*/
        .menu-item li {
            border-bottom: 1px solid #eee;
        }



        a:active {
            text-decoration: none;
            color: #646464;
        }

        a:visited {
            text-decoration: none;
            color: #646464;
        }

        a:link {
            text-decoration: none;
            color: #646464;
        }

        a:hover {
            text-decoration: none;
            color: #646464;
        }
       
    </style>
    <meta charset="UTF-8">

</head>

<body>
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
            <div id="mypageimg"><a href="mypage">마이페이지</a></div>
            <div id="msg">
                <img src="./images/writer.png" width="40px" height="40px" />
            </div>
            <div id="loginmsg"><a href="logingo">로그인</a></div>
        </div>
    </div>
    <div id="category" >
        <div id="subcategory" align="center" class="menu-item">
            <h4><a href="#"><h2>三</h2></a></h4>
            <nav>
                <ul>
                    <li class="li1"><a href="#">귀금속 공예</a></li>
                    <li class="li1"><a href="#">원목 공예</a></li>
                    <li class="li1"><a href="#">종이 공예</a></li>
                    <li class="li1"><a href="#">가죽 공예</a></li>
                    <li class="li1"><a href="#">천 공예</a></li>
                    <li class="li1"><a href="#">플라스틱 공예</a></li>
                    <li class="li1"><a href="#">도자기</a></li>
                    <li class="li1"><a href="#">가공식품</a></li>
                    <li class="li1"><a href="#">휴대폰 악세서리</a></li>
                    <li class="li1"><a href="#">패인팅,캐리커쳐,캘리</a></li>
                    <li class="li1"><a href="#">유아 용품</a></li>
                </ul>
            </nav>
        </div>
        <div id="menu">
            <div id="submenu"><a href="sponsor">후원</a></div>
            <div id="submenu"><a href="boardlist">게시판</a></div>
            <div id="submenu"><a href="bestwriter">인기작가</a></div>
            <div id="submenu"><a href="servicecenter">고객센터</a></div>
        </div>
    </div>
</body>
<script>

</script></html>