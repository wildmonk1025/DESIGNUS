<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>memberListMM.jsp</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <style>
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
            border: 1px solid black;
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
            border: 1px solid grey;
            float: left;
        }

        .declareinfo {
            width: 820px;
            height: 340px;
            border: 1px solid red;
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
            bottom: 20px;
            left: 850px;
        }

        .btnArray>input {
            width: 120px;
            height: 30px;
        }

        td {
            border: 1px solid grey;
        }

    </style>
</head>

<body>
   <div id="mainheader">
		<jsp:include page="main.jsp"/>
	</div>
    <div id="adminmenu">
        <ul>
                <jsp:include page="admininclud.jsp"></jsp:include>

        </ul>
    </div>
    <div id="adminopt">
    <div id="adminopt">
        <form name="form" method="get">
            <div class="opt">
                <h3 style="margin-left:  20px; font-size: 25px; background-color: orange;">회원 상세보기</h3>
                <hr>
                <div id="declarelist">
                    <table class="declareinfo">
                        <tr>
                            <td colspan="6" width="600" height="20">회원등급</td>
                        </tr>
                        <tr>
                            <td width="100" height="20">ID</td>
                            <td width="100" height="20">이름</td>
                            <td width="100" height="20">생년월일</td>
                            <td width="100" height="20">이메일</td>
                            <td width="100" height="20">포인트</td>
                            <td width="100" height="20">경고횟수</td>
                        </tr>
                        <tr>
                            <td width="100" height="20">${mbInfo.mb_id}</td>
                            <td width="100" height="20">${mbInfo.mb_name}</td>
                            <td width="100" height="20">${mbInfo.mb_birth}</td>
                            <td width="100" height="20">${mbInfo.mb_email}</td>
                            <td width="100" height="20">${mbInfo.mb_point}</td>
                            <td width="100" height="20">${mbInfo.mb_ccnt}</td>
                        </tr>
                        <tr>
                            <td colspan="6" width="600" height="20">상세정보</td>
                        </tr>
                        <tr>
                            <td colspan="6" width="600" height="170">카테고리 분류번호 : <br>
                                포트폴리오 : <br>
                                파일설명 : <br>
                                추천수 : <br></td>
                        </tr>
                    </table>
                </div>
                <div class="btnArray" id="btn1"><input type="submit" value="경고" name="action"
                onclick="javascipt: form.action='test20190503.html'"></div>
                <div class="btnArray" id="btn2"><input type="submit" value="해제" name="action"
                onclick="javascipt: form.action='adminInfo.html'"></div>
                <div class="btnArray" id="btn3">
                	<button><a href="memberList">돌아가기</a></button>
                </div>
                <!--<div class="btnArray" id="btn3"><button onclick="goBack()">돌아가기</button></div>-->
            </div>
        </form>
        </div>
    </div>
</body>
<script>
  


</script>
</html>
