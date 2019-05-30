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
    #board{
        border: 1px solid black;
        position: relative;
        top: 30px;
        width: 1000px;
        height: 1000px;
    }
    #photo{
        border: 1px solid black;
        position: absolute;
        top: 40px;
        left: 10px;
        width: 200px;
        height: 200px;
    }
    #contents{
        border: 1px solid black;
        position: absolute;
        top: 10px;
        left: 280px;
        width: 470px;
        height: 160px;
    }
    #category{
        border: 1px solid black;
        position: absolute;
        top: 10px;
        left: 10px;
        width: 200px;
        height: 25px;
    }
    #auctionTime{
        border: 1px solid black;
        position: absolute;
        top : 180px;
        left: 280px;
        width: 470px;
        height: 60px;
    }
    #h3_1{
        position: absolute;
        top: 240px;
        left: 20px;
        width: 200px;
        height: 10px; 
    }
    #h3_2{
        position: absolute;
        top: 400px;
        left: 20px;
        width: 200px;
        height: 10px; 
    }
    #tenderList{
        border: 1px solid black;
        position: absolute;
        top: 300px;
        left: 10px;
        width: 870px;
        height: 100px;
    }
    #btn{
        border: 1px solid black;
        position: absolute;
        top : 180px;
        left: 770px;
        height: 60px;
    }
    #writerList{
        border: 1px solid black;
        position: absolute;
        top: 460px;
        left: 10px;
        width: 900px;
        height: 130px;
    }
    #h4_1{
        position: absolute;
        top: 590px;
        left: 20px;
    }
    #contInfo{
        border: 1px solid black;
        position: absolute;
        top: 650px;
        left: 10px;
        width: 900px;
        height: 130px
    }
    #peek{
        border: 1px solid black;
        position: absolute;
        top: 10px;
        left: 600px;
        font-size: 20px;
        width: 150px;
        height: 60px
    }
    #peek1{
        position: absolute;
     
    }
    #peek2{
        position: absolute;
        display: none;
    }
    #inbuyLB{
        position: absolute;
        width: 400px;
        height: 230px;
        top: 300px;
        left: 45%;
        border-radius: 100px;
        z-index: 1002;
        padding-top: 170px;
        text-align: center;
        background-color: #FFE08C;
        display: none;
    }
    #inbuyLB-shadow{
        position: absolute;
        width: 100%;
        height: 1200px;
        background-color: black;
        z-index: 1001;
        opacity: 0.75;
        display: none;
    }
    #tenderLB{
        position: absolute;
        width: 400px;
        height: 230px;
        top: 300px;
        left: 45%;
        border-radius: 100px;
        z-index: 1002;
        padding-top: 170px;
        text-align: center;
        background-color: #FFE08C;
        display: none;
    }
    #tenderLB-shadow{
        position: absolute;
        width: 100%;
        height: 1200px;
        background-color: black;
        z-index: 1001;
        opacity: 0.75;
        display: none;
    }
    
</style>
</head>
<body>
	<div id="main">
    	    
	</div>
    <div id="inbuyLB-shadow">
        
    </div>
    <div id="tenderLB-shadow">
        
    </div>
    <div id="inbuyLB">
        <form>
        즉시 구매하기 : 
         <input type="number" style="width: 200px; height: 40px; font-size: 18px;border: none; background-color: #EAEAEA">
        <br><br><input type="button" value="구입"> <input type="reset" value="취소">
        </form>
    </div>
    
    <div id="tenderLB">
        <form>
        입찰하기 : 
         <input type="number" style="width: 200px; height: 40px; font-size: 18px;border: none; background-color: #EAEAEA">
        <br><br><input type="button" value="입찰"> <input type="reset" value="취소">
        </form>
    </div>
    
<div id = "board">
    <div id="category"> 
    카테고리 > 꽃,조화,꽃장식.
    </div>
    <div id="photo">
        사~~~진
    </div>
    <dib id="contents">
        커플드로잉 폰케이스
    </dib>
    <div id="peek">
        <div id="peek1">꿍누르기♡</div>
        <div id="peek2">꿍누르기♥</div>
    </div>
    <div id="btn">
        <button id = btn1>즉시 구매하기</button><br>
        <button id = btn2>입찰하기</button>
    </div>
    
    <div id="auctionTime">
        경매 마감시간  2일 3시간 07분 29초 남음
    </div>
    <h3 id="h3_1">회원 입찰내역</h3>
    <div id="tenderList">
    이수원빈 님' &emsp;&emsp;&emsp;&emsp;&emsp;&emsp; 입찰금액 : &emsp; 100 원
    </div>
    <h3 id="h3_2">작가의 다른작품 보기</h3>
    <div id="writerList">
    □□□□□□□□□□□
    </div>
    <h4 id="h4_1">상세정보</h4>
    <div id="contInfo">
        작성에서 및 유의사항 <br>
        1. 회원님에게 .... <br>
        2. 욕설..비방...등등...<br>
        3. 기타등등...
    </div>
</div>
</body>
    <script>
        var kind = 1;
       $("#peek1").click(function(){
            if($("#peek2").val != null){
            $("#peek1").css("display","none");
            $("#peek2").css("display","inline");
                kind= kind+1;
                console.log(kind);
            } 
        });
        
      $("#peek2").click(function(){
            if($("#peek1").val != null){
            $("#peek2").css("display","none");
            $("#peek1").css("display","inline");    
                kind= kind - 1;
                console.log(kind);
            }
        });
        
        $("#btn1").click(function(){
            $("#inbuyLB").css("display","inline");
            $("#inbuyLB-shadow").css("display","inline");
        });
        
        $("#inbuyLB-shadow").click(function(){
        $("#inbuyLB").css("display","none");   
        $("#inbuyLB-shadow").css("display","none");
        });
        
        $("#btn2").click(function(){
        $("#tenderLB").css("display","inline");
        $("#tenderLB-shadow").css("display","inline");
        });
        
        $("#tenderLB-shadow").click(function(){
        $("#tenderLB").css("display","none");   
        $("#tenderLB-shadow").css("display","none");
        });
        
    </script>
</html>