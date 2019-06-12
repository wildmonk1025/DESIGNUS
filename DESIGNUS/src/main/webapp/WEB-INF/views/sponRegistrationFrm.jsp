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
	height: 700px;
}

.btn{
	background-color: orange;
	width: 150px;
	height: 30px;
	color: white;
	float: right;
}
.btn2{
	width: 47%;
	height: 100%;
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
	width: 1510px;
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
    #contents{
        border: 1px solid red;
        position: absolute;
        width: 1000px;
        height: 500px;
        top: 270px;
        left: 50px;
    }
    #tableCont{
        width: 100%;
        height: 100%;
    }
    input{
        width: 100%;
        height: 44; 
        border: none; 
        font-size: 20;
    }
    #btn2{
        border: 1px solid red;
        position: relative;
        top:10px;
        float: right;
        width: 200px;
        height: 50px;
    }
</style>
<title>Home</title>
</head>
<body>
	<div id="mainheader">
		<jsp:include page="main.jsp" />
	</div>

	<div id="homeMain">
		<div id="title">
            후원 상품 등록
        </div>
        <div id="contents">
            <form>
                <table id="tableCont" border="1" style="text-align: center">
                    <tr style="height: 50">
                        <td style="width: 100">제품명</td><td colspan="3">
                        <input type="text"></td>
                    </tr>
                    <tr style="height: 50">
                        <td>가격</td><td style="width: 400"><input type="number" style="width: 100%"></td>
                        <td style="width: 100"> 목표주문량</td><td style="width: 400"><input type="number" style="width: 100%"></td>
                    </tr>
                    <tr style="height: 50">
                        <td>이미지</td><td colspan="3"><input type="text" style="width: 80%; float: left" readonly>
                        <button style="width: 6%; height: 48; float: right; border-radius:100px">╉</button>    
                        <button style="width: 14%; height: 48; float: right;">파일첨부</button>
                            
                        </td>
                    </tr>
                    <tr style="height: 100">
                        <td colspan="4" rowspan="2">이미지 미리보기</td>
                    </tr>
                    <tr>
                    </tr>
                    <tr style="height: 100">
                        <td colspan="4" rowspan="2">상품설명</td>
                    </tr>
                </table>
                <div id ="btn2">
                <button class="btn2">후원등록</button> 
                <button class="btn2">돌아가기</button>
                </div>
            </form>
        </div>
	</div>
	<div id="footercheck">
		<jsp:include page="footer.jsp"></jsp:include></div>-

</body>
</html>