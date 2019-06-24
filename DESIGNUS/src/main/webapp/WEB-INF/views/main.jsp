<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<style>
/* ::-webkit-scrollbar{width: 2px;}
::-webkit-scrollbar-track {background-color:#FFC19E;}
::-webkit-scrollbar-thumb {background-color:#FFC19E;border-radius: 5px; height: 10px;}
::-webkit-scrollbar-thumb:hover {background: #FFC19E;}
::-webkit-scrollbar-button:start:decrement,::-webkit-scrollbar-button:end:increment {
width:5px;height:5px;background:#FFC19E;} */
div {
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
	width: 630px;
	height: 50px;
	float: left;
}

#searchbox {
	width: 450px;
	height: 40px;
	float: left;
}

#searchtxt {
	width: 430px;
	height: 40px;
	align: center;
	background-color: none;
	border: 2px solid coral;
}

#searchtxt:focus {
	outline: none;
}

#searchbtn {
	position: absolute;
	width: 50px;;
	height: 40px;
	margin-left: -70px;
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
	position: relative;
	top: 1px;
}

#rankingbox {
	width: 150px;
	height: 30px;
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
	font-weight: bolder;
	font-family: Verdana, sans-serif;
}

#ranking span {
	text-align: center;
	height: 30px;
	line-height: 30px;
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
	margin-top: 14px;
	width: 50px;
	height: 50px;
	background-color: coral;
	color: white;
	font-size: 30px;
	float: left;
}

#menu {
	margin-top: 14px;
	float: left;
	width: 1400px;
	height: 50px
}

.submenu {
	margin-left: 100px;
	padding-top: 10px;
	width: 150px;
	float: left;
	height: 30px;
	text-align: center;
	font-size: 18px;
}

#msg {
	width: 50px;
	height: 50px;
	margin-left: 10px;
	margin-bottom: 10px;
	float: left;
}

#mypage {
	float: left;
	width: 50px;
	height: 50px;
	margin-bottom: 30px;
	margin-top: 10px;
	font-size: 15px;
	font-weight: 700;
	text-align: center;
}

.loginmsg {
	float: left;
	width: 250px;
	height: 50px;
	margin-top: 10px;
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
	height: 25px;
	margin-left: auto;
	margin-top: auto;
	color: coral;
	font-size: 15px;
	font-weight: 700;
}

#alarmList {
	position: absolute;
	width: 240px;
	heigth: auto;
	background-color: white;
	color: white;
	padding: 1px;
	font-size: 10px;
	display: none;
	z-index: 2000;
	box-shadow: 4px 2px 9px -4px rgba(0, 0, 0, 0.75);
	border: 1px solid black;
}

.alarmtitle {
	text-align: center;
	font-size: 18px;
	background-color: #FFC19E;
	color: gray;
}

.alarmcontents {
	padding-left: 5px;
	color: gray;
	display: none;
	border: 1px solid #FFC19E;
}

.alarmcontents:hover {
	background-color: #D0F5A9;
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
	height: 30px;
}

/*ul Styles*/
.menu-item ul {
	background: #FFC19E;
	font-size: 13px;
	font-weight: 400;
	line-height: 30px;
	height: 0px;
	list-style-type: none;
	overflow-y: auto;
	padding: 0px;
	width: 175px;
	position: absolute;
	z-index: 1000;
	top: 170px; \
	/*Animation*/
	-webkit-transition: height 1s ease;
	-moz-transition: height 1s ease;
	-o-transition: height 1s ease;
	-ms-transition: height 1s ease;
	transition: height 1s ease;
}

.menu-item:hover ul {
	/* overflow: auto; */
	overflow: none;
	height: 335px;
	width: 175px;
	position: absolute;
	top: 170px;
	z-index: 1002;
	-webkit-transition: height 1s ease;
	-moz-transition: height 1s ease;
	-o-transition: height 1s ease;
	-ms-transition: height 1s ease;
	transition: height 1s ease;
}

.menu-item li:hover {
	font-weight: 900;
	background-color: white;
}

.revauctionbtn, .auctionbtn, .sponsorbtn {
	margin-top: 20px;
	margin-right: 10px;
	background: coral;
	float: right;
	color: #fff;
	border: none;
	width: 150px;
	height: 30px;
	font-size: 15px;
	cursor: pointer;
	transition: 800ms ease all;
	outline: none;
	/* 	background-color: coral;
	margin-top: 20px;
	margin-right: 10px;
	width: 150px;
	height: 30px;
	color: white;
	float: right; */
}

.revauctionbtn:hover, .auctionbtn:hover, .sponsorbtn:hover {
	background: #fff;
	color: coral;
}

.revauctionbtn:before, .auctionbtn:before, .sponsorbtn:before,
	.revauctionbtn:after, .auctionbtn:after, .sponsorbtn:after {
	content: '';
	top: 0;
	right: 0;
	height: 2px;
	width: 0;
	background: #1AAB8A;
	transition: 400ms ease all;
}

.revauctionbtn:after, .auctionbtn:after, .sponsorbtn:after {
	right: inherit;
	top: inherit;
	left: 0;
	bottom: 0;
}

button:hover:before, button:hover:after {
	width: 100%;
	transition: 800ms ease all;
}

.mtag:visited {
	text-decoration: none;
	color: #646464;
}

.mtag:link {
	text-decoration: none;
	color: #646464;
}

.mtag:hover {
	transform: scale(3Y);
	transition-duration: 1s;
	font-weight: 900;
}

.atag:hover {
	text-decoration: none;
	color: #646464;
}

.atag:active {
	text-decoration: none;
	color: #646464;
}

.atag:visited {
	text-decoration: none;
	color: #646464;
}

.atag:link {
	text-decoration: none;
	color: #646464;
}

#fontcolor {
	color: white;
	font-size: 35px;
	align: center;
	height: 30px;
}
</style>
<meta charset="UTF-8">

</head>

<body>
	<div id="header">
		<div id="logo">
			<a href="home" class='atag'><img src="resources/images/logo.png"
				width="250px" height="80px"></a>
			<!-- <img src="./resources/images/logo.png" width="250px" height="80px" /> -->
			<!-- <img src="./resources/images/logo.png" width="250px" height="80px" /> -->
		</div>
		<form name="searchingfct" action="searching" method="POST">
			<div id="search">
				<div id="searchbox">
					<input type="text" id="searchtxt" name="word"
						placeholder="검색어를 입력해주세요." style="padding-left: 5px;" />
					<button id="searchbtn">Search</button>
				</div>
				<div id="rankingbox">
					<div id="ranking"></div>
				</div>
			</div>
		</form>
		<div id="loginwriter">

			<div id="mypage">
				<c:set var="perm" value="${grade}" />
				<c:choose>
					<c:when test="${empty perm}"></c:when>
					<c:when test="${perm eq 'M'}">
						<a href="adminInfo" class='atag' style="color: green;">관리자<br>페이지
						</a>
					</c:when>
					<c:when test="${perm ne 'M'}">
						<a href="mypage" class='atag' style="color: green;">마이<br>페이지
						</a>
					</c:when>
				</c:choose>
			</div>
			<div id="msg">
				<c:set var="perm2" value="${id}" />
				<c:if test="${perm2 eq null}"></c:if>
				<c:if test="${perm2 ne null}">
					<div id="alarmBtn">
						<img src="resources/images/notify_img0.png" width="50px"
							height="50px" />
					</div>
				</c:if>
			</div>
			<c:set var="check" value="${id}" />
			<c:if test="${check eq null}">
				<div class="loginmsg">
					<div class="mark">로그인 해주시기 바랍니다.</div>
					<input type="button" class="logbtn"
						onclick="location.href='logingo'" value="로그인"><br>
				</div>
			</c:if>
			<c:if test="${check ne null}">
				<div class="loginmsg">
					<div class="mark">
						<div id="alarmList"></div>
						<c:choose>
							<c:when test="${grade=='N'}">
								<img src="resources/images/letter-n.png" width="20px"
									height="20px">[일반]
								<c:out value="${check}" />
								님 반가워요
						</c:when>
							<c:when test="${grade=='W'}">
								<img src="resources/images/letter-w.png" width="20px"
									height="20px">[작가]
								<c:out value="${check}" />
								님 반가워요
						</c:when>
							<c:when test="${grade=='M'}">
								<img src="resources/images/letter-m.png" width="20px"
									height="20px">[관리자]
								<c:out value="${check}" />
								님 반가워요
						</c:when>
							<c:when test="${grade=='S'}">
								<img src="resources/images/letter-s.png" width="20px"
									height="20px">[임시]
								<c:out value="${check}" />
								님 반가워요
						</c:when>
						</c:choose>
					</div>
					<form id="logout" action="logout" method="post">
						<input type="button" class="logbtn" onclick="javascript:logout()"
							value="로그아웃">
					</form>
				</div>
			</c:if>
		</div>
	</div>
	<div id="category">
		<div id="subcategory" align="center" class="menu-item">
			<h4>
				<a href="#" class='atag'><span id="fontcolor">≡</span></a>
			</h4>
			<nav>
				<ul>
				</ul>
			</nav>
		</div>
		<div id="menu">
			<div class="submenu">
				<a href="sponsor" class='mtag'>후원</a>
			</div>
			<div class="submenu">
				<a href="reviewboard" class='mtag'>이용후기</a>
			</div>
			<div class="submenu">
				<a href="popularWriterFrm" class='mtag'>공지사항</a>
			</div>
			<div class="submenu">
				<a href="servicecenter" class='mtag'>고객센터</a>
			</div>

		</div>
	</div>
	<c:choose>
		<c:when test="${grade=='W'}">
			<button class="sponsorbtn" onclick="location.href='sponregistration'">후원상품등록</button>
			<button class="auctionbtn" onclick="location.href='auctionWrite'">출품등록하기</button>
		</c:when>
		<c:when test="${grade!='W'}">
			<button class="sponsorbtn" onclick="noAuthority()"
				style="background-color: gray">후원상품등록</button>
			<button class="auctionbtn" onclick="noAuthority()"
				style="background-color: gray">출품등록하기</button>
		</c:when>
	</c:choose>
	<c:choose>
		<c:when test="${grade != null}">
			<button class="revauctionbtn"
				onclick="location.href='revauctionWrite'">제작의뢰요청하기</button>
		</c:when>
		<c:when test="${grade == null}">
			<button class="revauctionbtn" onclick="noAuthority()"
				style="background-color: gray">제작의뢰요청하기</button>
		</c:when>
	</c:choose>

</body>
<script>
	function noAuthority() {
		swal("권한이 없습니다.");
	}

	function logout() {
		$('#logout').submit();
	}

	var i = 0;
	function ranking() {
		$.ajax({
			type : 'POST',
			url : 'ajax/searchranking',
			dataType : 'json',
			success : function(data) {
				var str = '';
				if (i < 10) {
					str = "<span>" + (i + 1)
							+ ". <a href=\"javascript:searchingfct('"
							+ data[i].rtsr_word + "')\" class='atag'>"
							+ data[i].rtsr_word + "</a></span>";
					$("#ranking").html(str);
					$("#rankingbox").delay(4850).animate({
						top : 8
					}, function() {
						$("#ranking span:first");
						$("#rankingbox").css({
							top : 0
						});
					});
					i++;
				} else if (i == 10) {
					i = 0;
					str = "<span>실시간 검색순위</span>";
					$("#ranking").html(str);
				}
			},
			error : function(error) {
			}
		}); //ajax End
	}

	function searchingfct(word) {
		var f = document.searchingfct;
		// input태그의 값들을 전송하는 주소
		f.action = "searching"

		f.word.value = word;
		// 전송 방식 : post
		f.method = "post"
		f.submit();
	}

	$(document).ready(
			function() {
				$.ajax({
					type : 'POST',
					url : 'ajax/category',
					dataType : 'json',
					success : function(data) {
						var str = '';
						for ( var i in data) {
							str += "<li><a href='auctionList?cgcode="
									+ data[i].cg_code + "' class='atag'>"
									+ data[i].cg_name + "</a></li>";
						}
						$("#subcategory ul").html(str);
					},
					error : function(error) {
					}
				}); //ajax End
			});

	$("#alarmBtn").click(function() {
		$('#alarmList').css('display', 'block');
		$('.alarmcontents').css('display', 'block');
		setTimeout(function() {
			$('#alarmList').css('display', 'none');
			$('.alarmcontents').css('display', 'none');
		}, 2500);
	});

	$(document).ajaxStart(function() {
		poll();
	});
	setTimeout($("#ranking").html("<span>실시간 검색순위</span>"), 100);
	setInterval(ranking, 5300);

	function poll() {
		$
				.ajax({
					type : 'POST',
					url : 'ajax/notification',
					dataType : 'json',
					success : function(data) {
						var str = "<div class='alarmtitle'>알림</div>";
						var str2 = '';
						for ( var i in data) {
							str += "<div class='alarmcontents' onclick='updateArm("
									+ data[i].nf_num
									+ ");'>["
									+ data[i].nf_mbid_s
									+ "] "
									+ data[i].nf_contents
									+ "<br>수신일 "
									+ data[i].nf_date + "</div>";
						}
						if (data.length > 6) {
							str2 = "<img src='resources/images/notify_img6.png' width='50px' height='50px'/>";
						} else {
							str2 = "<img src='resources/images/notify_img"+data.length+".png' width='50px' height='50px'/>";
						}
						$("#alarmList").html(str);
						$("#alarmBtn").html(str2);
					}
				}); //ajax End
	}

	function updateArm(num) {
		$.ajax({
			type : 'POST',
			url : 'ajax/updatearm',
			data : {
				nf_num : num
			},
			dataType : 'json',
			success : function(data) {
				$('#alarmList').css('display', 'none');
				$('.alarmcontents').css('display', 'none');
				poll();
			},
			error : function(error) {
			}
		});
	}
</script>
</html>