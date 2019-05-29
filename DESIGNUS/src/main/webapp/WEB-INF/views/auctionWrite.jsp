<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
    <div id="main">
       <h1>header</h1>
    </div>
<style>
    #main{
        width: 1520px;
        height: 170px;
        border: 1px solid black;
    }
    #WriteIntext{
        position: absolute;
        left: 200px;
        top: 230px;
        width: 600px;
        height: 210px;
        border: 1px solid black;
    }
    #WriteInimg{
        position: absolute;
        left: 200px;
        top: 465px;
        width: 603px;
        height: 200px;
    }
    .a1{
        border: 1px solid black;
        width: 90px;
        height: 35px;
    }
    .a2{
        border: 1px solid black;
        width: 200px;
    }
    input{
        width: 200px;
        height: 35px;
        font-size: 17px;
    }
    select{
        width: 200px;
        height: 35px;
        font-size: 17px;
    }
    #parts1{
        border: 1px solid black;
        position: absolute;
        width: 300px;
        height: 150px;
        text-align: center;
    }
    #parts2{
        border: 1px solid black;
        position: absolute;
        width: 295px;
        height: 198px;
        right: 0px;
        text-align: center;
    }
    #parts3{
        border: 1px solid black;
        position: absolute;
        width: 300px;
        height: 45px;
        bottom: 0px;
        left: 0px;
    }
    button{
        width: 95px;
        height: 40px;
        background-color: yellow;
        border: none;
    }
    #WriteInbtn{
        border: 1px solid black;
        position: absolute;
        top: 675px;
        left: 600px;
        width: 200px;
        height: 60px;
    }
</style>
</head>

<body>
<div id = "WriteIntext">
    <h2>&emsp;출품등록</h2>
    <table>
        <tr>
            <td class="a1">작가아이디</td><td class="a2">아이디</td><td class="a1">제품명</td><input type="text">
        </tr>
        <tr>
            <td class="a1">수량</td><td><input type="number"></td><td class="a1">제품종류</td>
            <td>
                <select>
                    <option>선택해주세요</option>
                    <option>귀금속</option>
                    <option>목공예</option>
                    <option>금속</option>
                    <option>기타 등등.</option>
                </select>
            </td>
        </tr>
        <tr>
            <th class="a1">입찰가격</th><th><input type="number"></th><th class="a1">즉시구매가</th><th><input type="number"></th>
        </tr>
    </table>
</div>
<div id = "WriteInimg">
    <div id="parts1">사진등록 (최소4장) 대표사진으로 첫번째 업로드한 사진이 등록됩니다.</div>
    <div id="parts2">출품 상품 설명</div>
    <div id="parts3"><input type="text" readonly ><button>파일첨부</button></div>
</div>
<div id = "WriteInbtn">
    <button>출품하기</button>&nbsp;<button>돌아가기</button>
</div>
    
</body>
</html>