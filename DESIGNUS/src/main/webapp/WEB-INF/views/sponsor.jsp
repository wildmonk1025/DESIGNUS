<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<meta charset="UTF-8">
<style>
#mainheader {
	border: 1px solid black;
	width: 1520px;
	height: 170px;
}

#homeMain {
	border: 1px solid black;
	width: 1520px;
	height: 800px;
}

.btn {
	background-color: orange;
	width: 150px;
	height: 30px;
	color: white;
	float: right;
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
	height: 100px;
}
#titleAndbtn{
    position: relative;
    top: 50px;
    left: 50px;
    width: 1300px;
    height: 60px;
    font-size: 20px;
    color: orange;
    }
    #btn1{
        float: right;
    }
    #sponList{
        border: 1px solid red;
        position: relative;
        top: 50px;
        left: 50px;
        width: 1300px;
        height: 500px;
        overflow-y:scroll;
    }
</style>
<title>Sponsor</title>
</head>
<body>
	<div id="mainheader">
		<jsp:include page="main.jsp" />
	</div>

	<div id="homeMain">
		<button id="revauctionbtn" class="btn">제작의뢰 요청하기</button>
		<button id="auctionbtn" class="btn">출품등록하기</button>
        <div id="titleAndbtn">
            지금 후원 가능한 작품
            <button id="btn1" class="btn">후원상품등록</button>
        </div>
        <div id="sponList">
            
        </div>
    </div>
    
	<div id="footercheck">
		<jsp:include page="footer.jsp"></jsp:include></div>

</body>
</html>