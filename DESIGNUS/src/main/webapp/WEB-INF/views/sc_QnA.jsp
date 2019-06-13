<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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

#revauctionbtn, #auctionbtn {
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

#list {
	width: 1100px;
	height: 400px;
	float: left;
	margin: 50px;
}

#text1 {
	width: 400px;
	height: 30px;
	float: left;
}

#text2 {
	margin-top: 30px;
	width: 400px;
	height: 30px;
	float: left;
}

#footercheck {
	border: 1px solid black;
	width: 1510px;
	height: 400px;
}
.menuLink {
   text-decoration: none;
   color: black;
   display: block;
   width: 261px;
   font-size: 25px;
   font-weight: bold;
   font-family: "Trebuchet MS", Dotum, Arial;
}
ul li {
    border: 1px solid black;
    width: 450px;
   list-style: none;
   color: white;
   background-color: #FFCA6C;
   float: left;
   line-height: 40px;
   text-align: center;
    }
    li{
        text-align-last: right;
        
    }
    #h,#s{
    position: relative;
	top: 10px;
	left: 50px;
    }
    #s{
    position: relative;
        color: red;
	top: -6px;
    }
    #list{
        border: 1px solid black;
         width: 1355px;
         position: relative;
	    top: -20px;
        left: -10px;
    }
    #l1{
        border: 1px solid black; 
        padding: 15px;
        height: 368px;
        float: left;
    }
    .b1{
        font-size: 25px;
        background-color: white;
        border: 1px solid white;
        margin: 10px;
        padding: 15px;
    }
    #selectt{
        text-align: center;
    }
</style>
</head>
<body>
<div id="mainheader">
		<jsp:include page="main.jsp" />
	</div>
	<div id="homeMain">
  
   <div id="one">
	   <h2 id="h">고객센터</h2>
	   <p id="s">여러분 고민에 귀 기울이겠습니다.</p>
	   
	   <ul>
			<li><a class="menuLink" href="scquestion">1:1문의</a></li>
			<li><a class="menuLink" href="scqna">QnA</a></li>
			<li><a class="menuLink" href="scdeclare">신고하기</a></li>
		</ul>

	   </div>
		<div id="list">
          <div id="l1">
             <button class="b1" onclick="qnalistajaxbuy(qnalist?qna_kind='구매'),'#selectt'">구매</button><br/>
             <button class="b1" onclick="qnalistajaxsale(qnalist?qna_kind='판매'),'#selectt'">판매</button><br/>
             <button class="b1" onclick="qnalistajaxaccount(qnalist?qna_kind='계정관련'),'#selectt'">계정관련</button><br/>
             <button class="b1" onclick="qnalistajaxOther(qnalist?qna_kind='기타'),'#selectt'">기타</button>
          </div>
          <div id="selectt">ddd</div>
		</div>
		
	</div>
     
	<div id="footercheck">
		<jsp:include page="footer.jsp"></jsp:include></div>-

</body>
<script>
    function qnalistajaxbuy(url, position){
        $.ajax({
            url : url,
            dataType : "json",
            success : function(data){
                console.log(data);
            }
        });//end ajax
    } 
    </script>
</html>