<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

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
            padding-right: 20px;
            padding-top: 20px;
            width: 570px;
            height: 80px;
            float: left;
        }

        #loginwriter {
            padding: 3px;
            padding-top: 20px;
            width: 400px;
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

        .loginmsg {
            float: left;
            width: 250px;
            height: 50px;
            margin-left: 10px;
        }
        
        .logbtn {
        	margin: auto;
        	width: 130px;
        	text-align: center;
        }
        
        .mark {
       		float: left;
        	width: 250px;
        	heigh: 35px;
        	margin-left: auto;
        	margin-top: auto;
        	color: coral;
        	
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
            top:162px;\

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
            z-index:1002;
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
       #revauctionbtn, #auctionbtn {
	background-color: orange;
	width: 150px;
	height: 30px;
	color: white;
	float: right;
}
    </style>
    <meta charset="UTF-8">

</head>

<body>
    <div id="header">
        <div id="logo">
            <a href="home"><img src="resources/images/logo.png" width="250px" height="80px"></a>
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
                <img src="resources/images/writer.png" width="40px" height="40px" />
            </div>
            <c:set var="check" value="${id}"/>
            <c:if test="${check eq null}">
            <div class="loginmsg"><input type="button" class="logbtn" onclick="location.href='logingo'" value="로그인"><br>
            <div class="mark">로그인 해주시기 바랍니다.</div></div></c:if>
            <c:if test="${check ne null}">
            <div class="loginmsg"><form id="logout" action="logout" method="post"><input type="button" class="logbtn" onclick="javascript:logout()" value="로그아웃"></form>
            <c:choose>
            <c:when test="${grade=='N'}">
            <div class="mark"><img src="resources/images/letter-n.png">[일반] <c:out value="${check}"/> 님 반가워요</div> </c:when>
            <c:when test="${grade=='W'}">
            <div class="mark"><img src="resources/images/letter-w.png">[작가] <c:out value="${check}"/> 님 반가워요</div> </c:when>
			<c:when test="${grade=='M'}">
            <div class="mark"><img src="resources/images/letter-m.png">[관리자] <c:out value="${check}"/> 님 반가워요</div> </c:when>
			<c:when test="${grade=='S'}">
            <div class="mark"><img src="resources/images/letter-s.png">[임시] <c:out value="${check}"/> 님 반가워요</div> </c:when>
            </c:choose>
            </div></c:if>
        </div>
    </div>
    <div id="category" >
        <div id="subcategory" align="center" class="menu-item">
            <h4><a href="#"><h2>三</h2></a></h4>
            <nav>
                <ul>
                    <li class="li1"><a href="auctionList?cgcode=<%=100%>">귀금속 공예</a></li>
                    <li class="li1"><a href="auctionList?cgcode=<%=110%>">원목 공예</a></li>
                    <li class="li1"><a href="auctionList?cgcode=<%=120%>">종이 공예</a></li>
                    <li class="li1"><a href="auctionList?cgcode=<%=130%>">가죽 공예</a></li>
                    <li class="li1"><a href="auctionList?cgcode=<%=140%>">천 공예</a></li>
                    <li class="li1"><a href="auctionList?cgcode=<%=150%>">플라스틱 공예</a></li>
                    <li class="li1"><a href="auctionList?cgcode=<%=160%>">도자기</a></li>
                    <li class="li1"><a href="auctionList?cgcode=<%=170%>">가공식품</a></li>
                    <li class="li1"><a href="auctionList?cgcode=<%=180%>">휴대폰 악세서리</a></li>
                    <li class="li1"><a href="auctionList?cgcode=<%=190%>">패인팅,캐리커쳐,캘리</a></li>
                    <li class="li1"><a href="auctionList?cgcode=<%=200%>">유아 용품</a></li>
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
    <button id="revauctionbtn" onclick="location.href='revauctionWrite'">제작의뢰 요청하기</button>
		<button id="auctionbtn" onclick="location.href='auctionWrite'">출품등록하기</button>
</body>
<script>
function logout(){
	$('#logout').submit();
}

</script>
</html>