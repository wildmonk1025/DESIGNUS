<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>Insert title here</title>
    <style type="text/css">
        #one{
            position: relative;
            width: 100%;
            height: 100%;
        }
        div{
        margin: auto;
        }
#notice{
    
	border: 1px solid orange;
    position: absolute;
    width: 1100px;
	height: 60px;
    text-align: center;
    left: 603px;
    top:180px;
    font-size:100%

}
#info{
    border: 1px solid orange;
    position: absolute;
    width: 300px;
    height: 600px;
    text-align: left;
    left: 183px;
    top: 200px;
    
 
}
#renking{
    border: 1px solid orange;
     width: 1100px;
	height: 230px;
    text-align: center;
    left: 603px;
    position: absolute;    
    top:510px;
   
}
#auction{
     border: 1px solid orange;
       width: 1100px;
	height: 230px;
    text-align: center;
    left: 603px;
    position: absolute;
     top:760px;    
     
}

    
#spon{
        

    border: 1px solid orange;
    width: 1100px;
	height: 230px;
    text-align: center;
    left: 603px;
    position: absolute;
    top:260px;
  
    }    
    
    #main{
        position: absolute;
        width: 1520px;
        height:170px;
        border: 1px solid orange;
        left: 183px;
        text-align: center;
    }   

        .bt01{
            position: absolute;
            right: 100px;
            top: 50px;
            
        }   
        a{color: red}
        #lightbox {

position: absolute;
top: 0;
left: 30%;
width: 1000px;
height:800px;
margin-left: -200px;
background: #fff;
z-index: 1001;
display: none;
border: 1px solid orange;
}


</style>

</head>
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>

<body>
    <div id="one">
	<form action="">
    
    <div id="main">
        <h1>메인!</h1>
        
        </div>
	<div id="notice" >
		<h2>제작의뢰내역</h2>
        <hr>
	</div>
   <div id="info">
       <table width="1000">
        <tr><td><h3>내역</h3></td></tr>
           <tr><td style="font-size: 30px"><a href="">제작의뢰 내역</a></td></tr>
           <tr><td style="font-size: 30px">제작의뢰 접수내역</td></tr>
           <tr><td style="font-size: 30px">출품작 구매 내역</td></tr>
           <tr><td style="font-size: 30px">출품작 판매 내역</td></tr>
           <tr><td style="font-size: 30px">꿍 내역</td></tr>
           <tr><td style="font-size: 30px">출품</td></tr>
           <tr><td style="font-size: 30px">제작</td></tr>
           <tr><td style="font-size: 30px">후원</td></tr>
           <tr><td style="font-size: 30px">개인정보 수정</td></tr>
           <tr><td style="font-size: 30px">회원탈퇴 신청</td></tr>
           <tr><td style="font-size: 30px">작가전환 신청</td></tr>
       </table>
    </div>           
    
    <div id="renking">
          <h1>의뢰내역</h1>
        <div  class="bt01">
        <a href="javascript:lightbox('요청 AJAX')"><h2>요청</h2></a><br>
        <a href=""><h2>취소</h2></a></div>
        
    </div>
    <div id="auction">
        <h1>의뢰내역</h1>
        <div class="bt01">
            <a href="javascript:lightbox('요청 AJAX')">><h2>요청</h2></a><br>
        <a href=""><h2>취소</h2></a></div> 
    </div>
    <div id="spon">
        <h1>의뢰내역</h1>
        <div  class="bt01">
        <a href="javascript:lightbox('요청 AJAX')"><h2>요청</h2></a><br>
        <a href=""><h2>취소</h2></a></div>
    </div>
      <div id="lightbox">
</div>
<div id="lightbox-shadow" >
</div>
	</form>
        </div> 
</body>
<script type="text/javascript">



function lightbox(insertContent, ajaxContentUrl){
$('#lightbox').empty();
if(insertContent != null){

$('#lightbox').append(insertContent);

}
if(ajaxContentUrl != null){
$('#lightbox').append('<p class="loading">Loading...</p>');
$.ajax({
type: 'GET',
url: ajaxContentUrl,
success:function(data){
$('#lightbox').empty();
$('#lightbox').append(data);
},
error:function(){
alert('AJAX Failure!');
}
});
}
$('#lightbox').css('top', $(window).scrollTop() + 100 + 'px');
$('#lightbox').show();
$('#lightbox-shadow').show();
}
function closeLightbox(){
$('#lightbox').hide();
$('#lightbox-shadow').hide();
$('#lightbox').empty();
}

</script>
</html>