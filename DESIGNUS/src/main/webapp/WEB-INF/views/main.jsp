<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<style>
div{
	margin: auto;
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
	padding-left: 60px;
	padding-right: 20px;
	padding-top: 30px;
	padding-bottom: 30px;
	width: 550px;
	height: 50px;
	float: left;
}

#searchbox {
	width: 390px;
	height: 40px;
	float: left;
}

#searchtxt {
	width: 370px;
	height: 40px;
	align: center;
	background-color: none;
	border: 2px solid coral;
}

#searchtxt:focus {
	outline: none;
}

#searchbtn {
	width: 50px;
	height: 40px;
	margin-left: -75px;
	display: inline;
	font-size: 1.1em;
	font-style: italic;
	box-sizing: border-box;
	outline: none;
	background: none;
	border: none;
	color: gray;
}
#searchbtn:hover {
	color: coral;
}

#searchbtn:active {
	position:relative;
	top:1px;
}
#rankingbox{
	width: 150px;
	height: 30px;
	padding-left: 10px;
	padding-top: 10px;
	position: relative;
	float: left;

}
#ranking {
	width: 150px;
	height: 30px;
	position: absolute;
	top: 5;
	left: 5;
	font-size: 16px;
	font-weight:bolder;
	font-family: Verdana, sans-serif;

}
#ranking span {
	text-align: center;
	height: 30px;
	line-height: 30px;
	background-color: aqua;
	/* 	box-shadow: 4px 2px 9px -4px rgba(0,0,0,0.75); */
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



#subcategory {
	width: 50px;
	height: 50px;
	background-color: coral;
	color: white;
	font-size: 30px;
	float: left;
}

#menu {
	float: left;
	width: 1400px;
	height: 50px
}

.submenu {
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
	background: coral;
	width: 200px;
}

/*Menu Header Styles*/
.menu-item h4 {
	color: white;
	font-size: 15px;
	font-weight: 500;
	padding: 7px 12px;
}

/*ul Styles*/
.menu-item ul {
	background: #FFC19E;
	font-size: 13px;
	font-weight: 400;
	line-height: 30px;
	height: 0px;
	list-style-type: none;
	overflow: hidden;
	padding: 0px;
	width: 200px;
	position: absolute;
	top: 162px; \
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
	top: 162px;
	z-index: 1002;
	-webkit-transition: height 1s ease;
	-moz-transition: height 1s ease;
	-o-transition: height 1s ease;
	-ms-transition: height 1s ease;
	transition: height 1s ease;
}

.menu-item li:hover{
	font-weight: 900;
	background-color: white;
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
	background-color: coral;
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
			<a href="home"><img src="resources/images/logo.png" width="250px"
				height="80px"></a>
			<!-- <img src="./resources/images/logo.png" width="250px" height="80px" /> -->
			<!-- <img src="./resources/images/logo.png" width="250px" height="80px" /> -->
		</div>
		<form name="searchingfct" action="searching" method="POST">
		<div id="search">
			<div id="searchbox">
			<input type="text" id="searchtxt" name="word" placeholder="검색어를 입력해주세요." style="padding-left:5px;" />
			<button id="searchbtn">Search</button>
			</div>
			<div id="rankingbox">
			<div id="ranking">
			</div>
			</div>
		</div>
		</form>
		<div id="loginwriter">
			<div id="adminpage">
				<a href="adminInfo">관리자</a><br/><br/>
			</div>
			<div id="mypageimg">
				<a href="mypage">마이페이지</a>
			</div>
			<div id="msg">
				<img src="resources/images/writer.png" width="40px" height="40px" />
			</div>
			<c:set var="check" value="${id}" />
			<c:if test="${check eq null}">
				<div class="loginmsg">
					<input type="button" class="logbtn"
						onclick="location.href='logingo'" value="로그인"><br>
					<div class="mark">로그인 해주시기 바랍니다.</div>
				</div>
			</c:if>
			<c:if test="${check ne null}">
				<div class="loginmsg">
					<form id="logout" action="logout" method="post">
						<input type="button" class="logbtn" onclick="javascript:logout()"
							value="로그아웃">
					</form>
					<c:choose>
						<c:when test="${grade=='N'}">
							<div class="mark">
								<img src="resources/images/letter-n.png">[일반]
								<c:out value="${check}" />
								님 반가워요
							</div>
						</c:when>
						<c:when test="${grade=='W'}">
							<div class="mark">
								<img src="resources/images/letter-w.png">[작가]
								<c:out value="${check}" />
								님 반가워요
							</div>
						</c:when>
						<c:when test="${grade=='M'}">
							<div class="mark">
								<img src="resources/images/letter-m.png">[관리자]
								<c:out value="${check}" />
								님 반가워요
							</div>
						</c:when>
						<c:when test="${grade=='S'}">
							<div class="mark">
								<img src="resources/images/letter-s.png">[임시]
								<c:out value="${check}" />
								님 반가워요
							</div>
						</c:when>
					</c:choose>
				</div>
			</c:if>
		</div>
	</div>
	<div id="category">
		<div id="subcategory" align="center" class="menu-item">
			<h4>
				<a href="#"><h2>≡</h2></a>
			</h4>
			<nav>
				<ul>
					<li class="li1"><a href="auctionList?cgcode=<%=100%>">귀금속
							공예</a></li>
					<li class="li1"><a href="auctionList?cgcode=<%=110%>">원목
							공예</a></li>
					<li class="li1"><a href="auctionList?cgcode=<%=120%>">종이
							공예</a></li>
					<li class="li1"><a href="auctionList?cgcode=<%=130%>">가죽
							공예</a></li>
					<li class="li1"><a href="auctionList?cgcode=<%=140%>">천 공예</a></li>
					<li class="li1"><a href="auctionList?cgcode=<%=150%>">플라스틱
							공예</a></li>
					<li class="li1"><a href="auctionList?cgcode=<%=160%>">도자기</a></li>
					<li class="li1"><a href="auctionList?cgcode=<%=170%>">가공식품</a></li>
					<li class="li1"><a href="auctionList?cgcode=<%=180%>">휴대폰
							악세서리</a></li>
					<li class="li1"><a href="auctionList?cgcode=<%=190%>">패인팅,캐리커쳐,캘리</a></li>
					<li class="li1"><a href="auctionList?cgcode=<%=200%>">유아
							용품</a></li>
				</ul>
			</nav>
		</div>
		<div id="menu">
			<div class="submenu">
				<a href="sponsor">후원</a>
			</div>
			<div class="submenu">
				<a href="boardlist">이용후기</a>
			</div>
			<div class="submenu">
				<a href="bestwriter">공지사항</a>
			</div>
			<div class="submenu">
				<a href="servicecenter">고객센터</a>
			</div>

		</div>
	</div>
	<button id="revauctionbtn" onclick="location.href='revauctionWrite'">제작의뢰
		요청하기</button>
	<c:choose>
		<c:when test="${grade=='W'}">
			<button id="auctionbtn" onclick="location.href='auctionWrite'">출품등록하기</button>
		</c:when>
		<c:when test="${grade!='W'}">
			<button id="auctionbtn" onclick="nonono()">출품등록하기</button>
		</c:when>

	</c:choose>



</body>
<script>
	function nonono() {
		alert("작가가 아니면 NoNoNo");
	}

	function logout() {
		$('#logout').submit();
	}
/* 	function asd() {
		var word = $('#searchtxt').val();
		location.href="searching/"+word;
	} */
	
	var i=0;
/* 	 setInterval(  function() {
		$.ajax({
    		type:'POST',
    		url:'ajax/searchranking',
    		dataType:'json',
    		success: function play(data) {
    			var str='';
    			if(i<10) {
    			str="<span>"+(i+1)+". <a href=\"javascript:searchingfct('"+data[i].rtsr_word+"')\">"+data[i].rtsr_word+"</a></span>";
    			$("#ranking").html(str);
    	        $("#rankingbox").delay(2850).animate({top:8},function(){
    	        	$("#ranking span:first");
    	        	$("#rankingbox").css({top:0});
    	        });
    			i++;
    			}
    			else if(i==10) {
    				i=0;
    				str="<span>실시간 검색순위</span>";
        			$("#ranking").html(str);
    			}
    		},
			error: function(error) {
    		}
    	}); //ajax End
	} ,3300); */
	
	
	function searchingfct(word) {
	      	var f = document.searchingfct;
	        // input태그의 값들을 전송하는 주소
	        f.action = "searching"
	        
	       	f.word.value = word;
	        // 전송 방식 : post
	        f.method = "post"
	        f.submit();
	}
	

</script>
</html>