<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
     #main{
        width: 1520px;
        height: 170px;
        border: 1px solid black;
        display: flex;
    }
    #Listbtn{
        border: 1px solid black;
        position: relative;
        width: 305px;
        height: 50px;
        top: 10px;
        left: 700px;
    }
    .btn1{
        width: 140px;
        height: 50px;
        background-color: orange;
        border: none;
    }
    #List{
        border: 1px solid black;
        position: relative;
        top: 30px;
        width: 1000px;
        height: 500px;
    }
    #ListView1{
        border: 1px solid black;
        position: absolute;
        top: 50px;
        left: 10px;
        width: 97%;
        height: 86%;
    }
    #ListView2{
        border: 1px solid black;
        position: absolute;
        top: 50px;
        left: 10px;
        width: 97%;
        height: 86%;
        
    }
</style>
</head>
<body>
    <div id = "Listbtn">
        &nbsp;<button class="btn1">제작 의뢰 요청하기</button>&nbsp;
        <button class="btn1">출품 등록하기</button>
    </div>
    <div id = "List">
        <button id="Lbtn1"> 제작의뢰 리스트</button>
        <button id="Lbtn2"> 출품 리스트</button>
    <div id="ListView1">
        제작의뢰 리스트 
    </div>
    <div id="ListView2">
        출품리스트
    </div>    
        
    </div>
</body>
    <script >

        $("#Lbtn1").click(function(){
            $("#ListView1").css("display","inline");
            $("#ListView2").css("display","none");
        });
        
        $("#Lbtn2").click(function(){
            $("#ListView1").css("display","none");
            $("#ListView2").css("display","inline");
        });
    </script>
</html>