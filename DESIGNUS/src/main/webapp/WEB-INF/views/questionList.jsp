<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>transformList.jsp</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <style>
        body {
            margin: auto;
            width: 1520px;
            height: auto;
            overflow: auto;
        }

        div {
            margin: auto;
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
            width: 960px;
            height: 320px;
            border: 1px solid grey;
            float: left;
        }

        .declareinfo{
            width: 960px;
            height: 320px;
            border: 1px solid red;
        }
        
        .declareinfo>tr{
            border: 1px solid yellow;
        }

        .btnArray {
            margin-left: 10px;
            position: absolute;
            float: left;
            width: 120px;
        }
        td {
            text-align: center;
        }
.lipont{
	font-size:20px;
}
    </style>
</head>

<body>
    <div id="mainheader">
<div id="mainheader">
		<jsp:include page="main.jsp" />
	</div>
    </div>
    <div id="adminmenu">
        <ul>
                 <jsp:include page="admininclud.jsp"></jsp:include>

        </ul>
    </div>
    <div id="adminopt">
        <form name="form" method="get">
            <div class="opt">
                <h3 style="margin-left:  20px; font-size: 25px; background-color: orange;">1:1문의 접수 리스트</h3>
                <hr>
                <div id="declarelist">
                    <table class="declareinfo">
                        <tr>
                            <td>[문의번호]</td>
                            <td>[회원등급]</td>
                            <td>[ID]</td>
                            <td>[질문유형]</td>
                            <td>[등록일]</td>
                            <td>[첨부파일 확인]</td>
                        </tr>
                        <tr>
                            <td>12345</td>
                            <td>작가회원</td>
                            <td>BBDD</td>
                            <td>카테고리 관련</td>
                            <td>2019-05-31</td>
                            <td rowspan="3" height="80"><button>첨부파일</button></td>
                        </tr>
                        <tr>
                            <td>[제목]</td>
                            <td colspan="4" height="20">카테고리좀 추가할 수 있을까요?</td>
                        </tr>
                        <tr>
                            <td colspan="5" height="20">내용이다 내용요요요용요요요요요요용.....</td>
                        </tr>
                        <tr>
                            <td>[문의번호]</td>
                            <td>[회원등급]</td>
                            <td>[ID]</td>
                            <td>[질문유형]</td>
                            <td>[등록일]</td>
                            <td>[첨부파일 확인]</td>
                        </tr>
                        <tr>
                            <td>12345</td>
                            <td>작가회원</td>
                            <td>BBDD</td>
                            <td>카테고리 관련</td>
                            <td>2019-05-31</td>
                            <td rowspan="3"><button>첨부파일</button></td>
                        </tr>
                        <tr>
                            <td>[제목]</td>
                            <td colspan="4">카테고리좀 추가할 수 있을까요?</td>
                        </tr>
                        <tr>
                            <td colspan="5">내용이다 내용요요요용요요요요요요용.....</td>
                        </tr>
                        <tr>
                            <td>[문의번호]</td>
                            <td>[회원등급]</td>
                            <td>[ID]</td>
                            <td>[질문유형]</td>
                            <td>[등록일]</td>
                            <td>[첨부파일 확인]</td>
                        </tr>
                        <tr>
                            <td>12345</td>
                            <td>작가회원</td>
                            <td>BBDD</td>
                            <td>카테고리 관련</td>
                            <td>2019-05-31</td>
                            <td rowspan="3"><button>첨부파일</button></td>
                        </tr>
                        <tr>
                            <td>[제목]</td>
                            <td colspan="4">카테고리좀 추가할 수 있을까요?</td>
                        </tr>
                        <tr>
                            <td colspan="5">내용이다 내용요요요용요요요요요요용.....</td>
                        </tr>
                    </table>
                </div>
                <h3 style="text-align: center; color:blue;">페이징</h3>
            </div>
        </form>
        </div>
    </div>
</body>
<script>
    function goBack() {
        window.history.forward();
    }
</script>
</html>
