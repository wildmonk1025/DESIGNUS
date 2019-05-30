<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
<style>
#mainheader {
	border: 1px solid black;
	width: 1520px;
	height: 170px;
}

#homeMain {
	border: 1px solid black;
	width: 1520px;
	height: 600px;
}

.btn{
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
	height: 150px;
}
#title{
    position: relative;
    top: 50px;
    left: 50px;
    width: 1300px;
    height: 60px;
    font-size: 20px;
    color: orange;
    }    
    #board{
        position: absolute;
        width: 1000px;
        height: 800px;
        top: 300px;
        left: 50px;
        font-size: 20px;
    }    

    td{
        height: 50px;
    }
    .ts1{
        width: 100px;
    }
    .ts2{
        width: 233px;
    }
    button{
        width: 100%;
        height: 48px;
    }
</style>
<title>Home</title>
</head>
<body>
	<div id="mainheader">
		<jsp:include page="main.jsp" />
	</div>

	<div id="homeMain">
		<button id="revauctionbtn" class="btn">제작의뢰 요청하기</button>
		<button id="auctionbtn" class="btn">출품등록하기</button>
		<div id="title">
            후원 상세 보기
        </div>
        <div id = "board">
            <table border="1" style="text-align: center">
                <tr>
                    <td colspan="2" rowspan="4" style="width: 200; height: 200">[사진]</td>
                    <td style="width: 100; height: 50;" >제품명</td>
                    <td colspan="3" style="width: 700"> Sponsor table title </td>
                </tr>
                <tr>
                    <td>작성자</td><td colspan="3"> session ID </td>
                </tr>
                <tr>
                    <td>가격</td><td colspan="3"> Sponsor table price </td>
                </tr>
                <tr>
                    <td>등록일</td><td colspan="3"> sysdate </td>
                </tr>
            </table>
            <table border="1" style="text-align: center" class="ts">
                <tr>
                    <td class="ts1">후원 목표량</td>
                    <td class="ts2"> Sponsor table </td>
                    <td class="ts1">후원 기간</td>
                    <td class="ts2"> Sponsor table </td>
                    <td class="ts1">현제 주문량</td>
                    <td class="ts2"> Sponsor table </td>
                </tr>
                <tr>
                    <td colspan="6" style="height: 150"> Sponsor table 상세정보 </td>
                </tr>
                <tr>
                    <td colspan="4"><button>밀어주기</button></td><td colspan="2"><button>목록보기</button></td>
                </tr>
            </table>
            <table>
            
            </table>
        </div>
		
	</div>
	<div id="footercheck">
		<jsp:include page="footer.jsp"></jsp:include></div>-

</body>
</html>