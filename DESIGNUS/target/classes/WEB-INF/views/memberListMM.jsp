<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>memberListMM.jsp</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
    <style>
    #main {
	width: 1520px;
	height: 170px;
	position: relative;
}

#mainheader {
	border: 1px solid #F5BCA9;
	width: 1518px;
	height: 170px;
	position: fixed;
	background-color: white;
	z-index: 1000;
	box-shadow: 3px 0px 8px -3px rgba(0,0,0,0.56);
}
        body {
            margin: auto;
            width: 1520px;
            height: auto;
            overflow: auto;
        }
	

        ul {
            list-style: none;
        }

        #mainheader {
            width: 1518px;
            height: 170px;
        }
        #middle {
            float: left;
            width: 1518px;
            height: auto;
            overflow: auto;
        }
        #adminmenu {
            float: left;
            width: 300px;
            height: 500px;
        }

        #adminopt {
            float: left;
            align-content: center;
            width: 1214px;
            height: 500px;
        }

        .opt {
            padding: inherit;
            position: relative;
            margin-top: 5px;
            width: 1000px;
            height: 450px;

        }

        #declarelist {
            margin-left: 20px;
            width: 820px;
            height: 340px;
            float: left;
        }

        .declareinfo {
            width: 820px;
            height: 340px;
        }

        .btnArray {
            margin-left: 10px;
            position: absolute;
            float: left;
            width: 120px;
        }

        #btn1 {
            bottom: 100px;
            left: 850px;
        }

        #btn2 {
            bottom: 60px;
            left: 850px;
        }

        #btn3 {
            bottom: 17px;
            left: 850px;
        }

        .btnArray>input {
            width: 120px;
            height: 30px;
        }

#customers {
	font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
	width: 820px;
	border-collapse: collapse;
}

#customers td, #customers th {
	font-size: 1em;
	padding: 3px 7px 2px 7px;
}

#customers th {
	font-size: 1.1em;
	text-align: left;
	padding-top: 5px;
	padding-bottom: 4px;
	background-color: #A7C942;
	color: #ffffff;
}

#customers tr.alt td {
	color: #000000;
	background-color:#F6D8CE;
}
tr{
width: 300px;
height: 60px;
}
.btn2{
margin-top: 10px;
	/*General*/
	display: inline-block;
	text-decoration: none;
	/*Text*/
	font-family: "Helvetica Neue", Helvetica, Arial, sans-serif;
	font-size: 13px;
	font-weight: bold;
	line-height: 240%;
	color: rgb(162, 136, 44);
	text-align: center;
	text-shadow: 0px 1px 0px rgba(255, 255, 255, 0.25);
	/*Button*/
	background-color: #FFE79E;
	background-image: -moz-linear-gradient(53% 100% 90deg, rgb(212, 212, 212)
		0%, rgb(237, 237, 237) 100%);
	background-image: -webkit-gradient(linear, 53% 100%, 53% 3%, color-stop(0, rgb(212, 212,
		212)), color-stop(1, rgb(237, 237, 237)));
	background-image: -webkit-linear-gradient(90deg, rgb(212, 212, 212) 0%,
		rgb(237, 237, 237) 100%);
	background-image: -o-linear-gradient(90deg, rgb(212, 212, 212) 0%,
		rgb(237, 237, 237) 100%);
	background-image: -ms-linear-gradient(90deg, rgb(212, 212, 212) 0%,
		rgb(237, 237, 237) 100%);
	background-image: linear-gradient(90deg, rgb(212, 212, 212) 0%,
		rgb(237, 237, 237) 100%);
	width: 150px;
	height: 40px;
	border-color: rgb(223, 192, 86);
	border-width: 1px;
	-moz-border-radius: 3px;
	-webkit-border-radius: 3px;
	border-radius: 3px;
	border-style: solid;
	-moz-box-shadow: 0px 0px 0px 3px rgba(0, 0, 0, 0.1), inset 0px 1px 0px
		rgba(255, 255, 255, 0.25);
	-webkit-box-shadow: 0px 0px 0px 3px rgba(0, 0, 0, 0.1), inset 0px 1px
		0px rgba(255, 255, 255, 0.25);
	box-shadow: 0px 0px 0px 3px rgba(0, 0, 0, 0.1), inset 0px 1px 0px
		rgba(255, 255, 255, 0.25);
	-ms-filter: "progid:DXImageTransform.Microsoft.gradient(startColorstr=#ffffefbf,
		endColorstr=#ffffe185, GradientType=0) progid:DXImageTransform.Microsoft.Glow(Color=#ff000000,
		Strength=3)";
	filter: progid:DXImageTransform.Microsoft.gradient(startColorstr=#ffffefbf,
		endColorstr=#ffffe185, GradientType=0) progid:DXImageTransform.Microsoft.Glow(Color=#ff000000,
		Strength=3);
	display: inline-block;
	background-image: -webkit-gradient(linear, 53% 100%, 53% 3%, color-stop(0, rgb(212, 212,
		212)), color-stop(1, rgb(237, 237, 237)));
	background-image: -webkit-linear-gradient(90deg, rgb(212, 212, 212) 0%,
		rgb(237, 237, 237) 100%);
	background-image: -o-linear-gradient(90deg, rgb(212, 212, 212) 0%,
		rgb(237, 237, 237) 100%);
	background-image: -ms-linear-gradient(90deg, rgb(212, 212, 212) 0%,
		rgb(237, 237, 237) 100%);
	background-image: linear-gradient(90deg, rgb(212, 212, 212) 0%,
		rgb(237, 237, 237) 100%);
}
#atag{
	width: 120px;
	height: 30px;
}
#dd{
box-shadow: 3px 0px 8px -3px rgba(0,0,0,0.56);


}

#footercheck {
	width: 1520px;
	height: 150px;
}
.best {
	display : inline;
	float: left;
	width: 100%;
	heigth: 150px;
	size: 20px;
	box-shadow: 3px 0px 8px -3px rgba(0,0,0,0.56);
	margin:5px 5px 5px 5px;
	
}
    </style>
</head>

<body>
   <div id="main">
   <div id="mainheader">
		<jsp:include page="main.jsp"/>
	</div>
	</div>
    <div id="adminmenu">
        <ul>
                <jsp:include page="admininclud.jsp"></jsp:include>

        </ul>
    </div>
    <div id="adminopt">
    <div id="adminopt">
            <div class="opt"><br/><br/>
            <form action="membercaution" method="post" id="form1">
                <h3	id="dd" style="margin-left: 20px; font-size: 25px;  background-color:#F6D8CE; width:820px; ">회원 상세보기</h3>
                <hr><br/>
                <div id="declarelist">
                <div class="best">
                    <table id="customers">
                        <tr  class="alt">
                            <td colspan="6" width="600" height="20">회원등급 : ${mbInfo.mb_grade}</td>
                        </tr>
                        <tr>
                            <td width="100" height="20">ID</td>
                            <td width="100" height="20">이름</td>
                            <td width="100" height="20">생년월일</td>
                            <td width="100" height="20">이메일</td>
                            <td width="100" height="20">포인트</td>
                            <td width="100" height="20">경고횟수</td>
                        </tr>
                        <tr  class="alt">
                            <td width="100" height="20">${mbInfo.mb_id}</td>
                            <td width="100" height="20">${mbInfo.mb_name}</td>
                            <td width="100" height="20">${mbInfo.mb_birth}</td>
                            <td width="100" height="20">${mbInfo.mb_email}</td>
                            <td width="100" height="20">${mbInfo.mb_point}</td>
                            <td width="100" height="20">${mbInfo.mb_ccnt}</td>
                        </tr>
                        
                        <tr  >
                            <td colspan="6" width="600" height="170"> <br>
                                주소 : ${mbInfo.mb_address}<br>
                        </tr>
                    </table>
                    </div>
                </div>
                <input type="hidden" name="mb_id" value="${mbInfo.mb_id}">
                <div class="btnArray" id="btn1"><input type="submit" value="경고" class="btn2" ></div>
                 </form>
                 <form action="membercautioncnt" method="post" id="form">
                 <input type="hidden" name="mb_id" value="${mbInfo.mb_id}">
                <div class="btnArray" id="btn2"><input type="submit" value="해제" id="dd" class="btn2"></div>
                </form>
                <div class="btnArray" id="btn3">
                	<a href="memberList" class="btn2" id="atag">돌아가기</a>
                </div>
                <!--<div class="btnArray" id="btn3"><button onclick="goBack()">돌아가기</button></div>-->
            </div>
       
        </div>
    </div>
    	<div id="footercheck">
		<jsp:include page="footer.jsp"></jsp:include>
	</div>
</body>
<script>

$("#form").on("click", function(){
	var dd = ${mbInfo.mb_ccnt};
	console.log(dd);
	if(dd<1){
		
		swal("경고횟수가 0이하로 누를수없습니다.");
		return false;
	} else{
		swal("해당회원이 경고되었습니다.");
		return true;
	}
});
$("#form1").on("click", function(){
	var dd = ${mbInfo.mb_ccnt};
	console.log(dd);
	if(dd>=5){
		
		swal("경고횟수가 5이상 누를수없습니다.");
		return false;
	} else{
		swal("해당회원이 경고되었습니다.");
		return true;
	}
});

</script>
</html>
