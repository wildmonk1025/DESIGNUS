<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<title>제작의뢰 상세보기</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<style>
div {
	margin: auto;
}

#main {
	width: 1518px;
	height: 170px;
	position: relative;
}

#mainheader {
	border: 1px solid black;
	width: 1520px;
	height: 170px;
	position: fixed;
	background-color: white;
}

#middle {
	margin-top: 50px;
	width: 1520px;
	height: auto;
	border: 1px solid blue;
}

#middle_img {
	float: left;
	border: 1px solid red;
	width: 300px;
	height: 300px;
	text-align: center;
}

#middle_img_lv1 {
	padding: 5px;
	border: 1px solid blue;
	width: 260px;
	height: 35px;
}

#middle_img_lv2 {
	padding: 5px;
	border: 1px solid blue;
	width: 260px;
	height: 230px;
	margin-top: 5px;
}

#middle_contents1 {
	float: left;
	border: 1px solid red;
	width: 900px;
	height: 300px;
	text-align: center;
}

#middle_contents1_lv1 {
	border: 1px solid blue;
	width: 850px;
	height: 60px;
	font-size: 30px;
}

#middle_contents1_lv2 {
	border: 1px solid green;
	width: 150px;
	height: 58px;
	font-size: 20px;
	float: right;
}

#middle_contents1_lv3 {
	border: 1px solid blue;
	width: 850px;
	height: 140px;
	font-size: 20px;
	text-align: right;
}

#middle_contents1_lv4 {
	margin-top: 5px;
	width: 850px;
	height: 80px;
	font-size: 50px;
	color: red;
	text-align: left;
}

#middle_contents2 {
	border: 1px solid red;
	width: 310px;
	height: 300px;
	float: left;
}

#middle_contents2_btn1 {
	width: 130px;
	height: 130px;
	margin: 150px 0px 0px 100px;
	color: white;
	border-radius: 15px;
	background-color: coral;
}

#middle_contents2_btn2 {
	width: 130px;
	height: 130px;
	margin: 150px 0px 0px 100px;
	color: white;
	border-radius: 15px;
	background-color: gray;
}

#middle_contents3 {
	border: 1px solid red;
	margin-top: 10px;
	float: left;
	width: 1514px;
	height: 200px;
}

#middle_contents3_lv1 {
	border: 1px solid blue;
	width: 1400px;
	height: 150px;
	overflow: auto;
	margin-top: 10px;
	font-size: 20px;
}

#middle_contents4 {
	border: 1px solid red;
	width: 1514px;
	heigth: auto;
	margin-top: 10px;
	float: left;
}

#middle_contents4_lv1 {
	border: 1px solid blue;
	padding: 10px;
	width: 1480px;
	height: 80px;
}

#middle_contents4_lv2 {
	border: 1px solid green;
	width: 500px;
	height: 50px;
	float: left;
}

#middle_contents4_btn {
	width: 150px;
	height: 30px;
	margin-right: 10px;
	float: right;
}

#middle_contents4_lv3 {
	border: 1px solid blue;
	width: 1500px;
	heigth: auto;
	margin-left: 5px;
	margin-top: 15px;
	float: left;
}

#footer {
	border: 1px solid red;
	width: 1514px;
	height: 170px;
	margin-top: 20px;
	float: left;
}

#lightboxshadow {
	position: absolute;
	top: 0;
	left: 0;
	width: 100%;
	height: 200%;
	background: #000;
	background-color: rgba(0, 0, 0, 0.7);
	z-index: 1000;
	display: none;
}

#lightbox_contents1 {
	border: 1px solid white;
	position: absolute;
	background-color: coral;
	left: 30%;
	top: 20%;
	padding: 50px;
	text-align: center;
	width: 500px;
	height: 300px;
	opacity: 100;
	z-index: 1010;
	display: none;
	border-radius: 20px;
	box-shadow: -60px 0px 30px -90px #000000,
                60px 0px 30px -90px #000000;
}

#revamn {
	border: 1px solid white;
	margin-top: 40px;
	text-align: center;
	width: 400px
}

.subtn {
	border: none;
	font-size: 29.5px;
	color: red;
	background-color: white;
}

.file {
	color: blue;
	font-size: 15px;
}

#tenderlist {
	text-align: center;
}

.decisionbtn {
	width: 150px;
}

#ra_mbid2 {
	border: none;
	height: 25px;
	width: 150px;
	font-size: 25px;
	text-align: center;
}
</style>
</head>

<body>
		<!-- 여기서부턴 라이트 박스 -->
		<div id="lightboxshadow"></div>
		<form id="tenderlightbox" enctype="multipart/form-data">
			<div id="lightbox_contents1">
				<p>의뢰 접수 및 견적서 첨부</p>
				<hr style="color: black">
				<div id="revamn">
					<table>
						<tr style="width: 400px;">
							<td>의뢰접수금액</td>
							<td><input type="text" id="revamoney" name="revamoney"></td>
						</tr>
						<tr>
							<td>견적서 첨부</td>
							<td><input type="file" id="revfile" name="revfile"></td>
						</tr>
						<tr>
							<td>제작소요기간</td>
							<td><input type="text" id="revadate" name="revadate">일</td>
						</tr>

					</table>
					<c:set var="ra_id" value="${raInfo.ra_mbid}" />
					<c:set var="se_id" value="${id}" />
					<c:set var="grade" value="${grade}" />
					<c:if test="${ra_id ne se_id}">
						<c:if test="${grade eq 'W'}">
							<input type="button" id="yespermitapply"
								onclick="revauctionapply()" value="전송" />
						</c:if>
					</c:if>
					<c:if test="${ra_id eq se_id}">
						<input type="button" id="nopermitapply" value="전송" />
					</c:if>
					<input type="button" id="meneycancle" value="돌아가기" />
				</div>
			</div>
		</form>
		<!-- 라이트박스 끝 -->
	<div id="main">
		<div id="mainheader">
			<jsp:include page="main.jsp" />
		</div>
	</div>
	<div id="middle">
		<!-- div 카테고리와 이미지 -->
		<div id="middle_img">
			<div id="middle_img_lv1">카테고리 > ${raInfo.ra_cgcode}</div>
			<div id="middle_img_lv2">
				<img src="resources/images/${raInfo.ra_image}"
					alt="${raInfo.ra_image}" />
			</div>
		</div>
		<div id="middle_contents1">
			<div id="middle_contents1_lv1">
				${raInfo.ra_title}
				<div id="middle_contents1_lv2">
					<div id="peek1">
						<input type="submit" value="꿍누르기♥" class="subtn">
					</div>
					<div id="peek2">
						<input type="submit" value="꿍누르기♡" class="subtn">
					</div>
				</div>
			</div>
			<div id="middle_contents1_lv3">
				<table style="margin: 10px 0px 0px 10px; line-height: 200%">
					<tr>
						<th>작성자 :</th>
						<td><input id="ra_mbid2" type="text" value="${raInfo.ra_mbid}" readonly="readonly">님</td>
						<td></td>
					</tr>
					<tr>
						<th>수량 :</th>
						<td style="font-size: 15px;">1EA(짝/켤레/쌍)</td>
						<td style="color: gray; font-size: 11px;">제작의뢰 수량은 DEFAULT 1개
							입니다.</td>
					</tr>
					<tr>
						<th>회원님이 낙찰한 금액 :</th>
						<td colspan="2"><div id="tender_result">0원</div></td>
					</tr>
				</table>
				<div id="middle_contents1_lv4">경매 남은 시간 표시</div>
			</div>
		</div>
		<div id="middle_contents2">
			<c:set var="decidechk" value="${decidechk}" />
			<c:if test="${decidechk eq null}">
				<button id="middle_contents2_btn1">
					작가 의뢰 접수 <br> 및 견적서 첨부
				</button>
			</c:if>
			<c:if test="${decidechk eq 'HIDE'}">
				<button id="middle_contents2_btn2">
					작가 의뢰 접수 <br> 및 견적서 첨부
				</button>
			</c:if>
		</div>
		<div id="middle_contents3">
			<p style="font-size: 25px; margin-left: 10px;">작가 접수내역</p>
			<div id="middle_contents3_lv1">
				<table id="tenderlist">
				</table>
			</div>
		</div>
		<div id="middle_contents4">
			<p style="font-size: 25px; margin: 10px 0px 10px 10px;">의뢰인 요청사항</p>
			<div id="middle_contents4_lv1">
				<p style="font-size: 20px; color: blue;">제작 의뢰 도안(첨부파일)</p>
				<div id="middle_contents4_lv2">
					${raInfo.ra_file} <button id="middle_contents4_btn">다운로드</button>
				</div>
			</div>
			<div id="middle_contents4_lv3">
				<p style="font-size: 25px; padding-left:5px">작가님께 요청드릴 사항</p><br>
				<c:set var="contents" value="${raInfo.ra_contents}"/>
				<c:if test="${contents ne null}">
				<p>${raInfo.ra_contents}</p></c:if>
				<c:if test="${contents eq null}">
				<p><br>추가 요청내역이 없습니다.</p></c:if>
			</div>
		</div>
		<div id="footer">여기는 푸터 입니다.</div>
	</div>
</body>

<script>
if(${nb} > 0){
	$("#peek2").css("display", "none");
	$("#peek1").css("display", "inline");
}
if(${nb} == 0){
	$("#peek1").css("display", "none");
	$("#peek2").css("display", "inline");
}


var kind = 1;
$(".subtn").click(function() {
		 	$.ajax({
			url : 'ajax/revBasketSelect',
			type: 'post',
			data: {'num':${ra_num}},
			success:function(data){
				if(data > 0){
					$("#peek1").css("display", "none");
					$("#peek2").css("display", "inline");
				}
				if(data == 0){
					$("#peek2").css("display", "none");
					$("#peek1").css("display", "inline");
				}
			},
			error:function(error){
				console.log(error);
			}
		});	
});

	$("#middle_contents2_btn1").click(function() {
		$('#lightboxshadow').css("display", "block")
		$('#lightbox_contents1').css("display", "block")
	});
	$("#lightboxshadow").click(function() {
		$('#lightboxshadow').css("display", "none")
		$('#lightbox_contents1').css("display", "none")
	});
	$("#meneycancle").click(function() {
		$('#lightboxshadow').css("display", "none")
		$('#lightbox_contents1').css("display", "none")
	});
	$("#nopermitapply").click(function() {
		swal("접근 권한이 없습니다.");
		$('#lightboxshadow').css("display", "none")
		$('#lightbox_contents1').css("display", "none")
	});

	/* 여기부터 */
 	var ra_num = ${ra_num};
	$(document).ready(function() {
		//setInterval(function() {
			$.ajax({
				type:'POST',
				url:'ajax/revauction',
				//traditional : true,
				data: { rat_ranum : ra_num},
				dataType:'json',
				success: function(data) {

					var str = "<tr><td width='300'>작가ID</td><td width='300'>접수금액</td><td width='300'>첨부파일</td><td width='300'>제작기간</td><td></td></tr>";
					for(var i in data) {
					var wid = data[i].rat_mbid_w;
					var wprice = data[i].rat_price;
					var wdays = data[i].rat_days;
					str+="<tr><td width='300'>"+data[i].rat_mbid_w+"님</td><td width='300'>"+data[i].rat_price
							+"원(수량 1ea 기준)</td><td width='300' class='file'><a href='ratfiledownload?rat_file="+data[i].rat_file
							+"'>견적서 다운로드</a></td><td width='300'>"+data[i].rat_days
							+"일</td><td width='200'><input class='decisionbtn' type='button' onclick=\"revdecision('"+wid+"','"+wprice+"','"+wdays+"');\" value='의뢰하기'></td></tr>";
					}
					$("#tenderlist").html(str);
					console.log(str);
				},
				error: function(error) {
					var str="<tr><td width='1300'>작가회원의 의뢰 접수내역이 없습니다.</td></tr>";
					$("#tenderlist").html(str);
				}
			}); //ajax End
			//}, 300);
		});
		/* 여기까지 */
	var ra_mbid=$("#ra_mbid2").val();
	function revauctionapply() {
			//var formData = new FormData(document.getElementById("#tenderlightbox"));
			var $file = $("#revfile");
			var formData = new FormData();
			formData.append("revamoney",$("#revamoney").val());
			formData.append("revadate",$("#revadate").val());
			formData.append("file",$file[0].files[0]);
			formData.append("ra_num",ra_num);
			console.log(formData);
			$.ajax({
				type:'POST',
				url:'ajax/revauctionapply',
				processData: false,
                contentType: false,
				data: formData,
				dataType:'json',
				success: function(data) {
					swal(data);
					$('#lightboxshadow').css("display", "none");
					$('#lightbox_contents1').css("display", "none");
				},
				error: function(error) {
					swal("해당 정보를 다시 입력하여 주시기 바랍니다.");
				}
			}); //ajax End
		}
		
 	function revdecision(wid,wprice,wdays) {
 		//alert("(가격: "+dval2+"원, 제작기간: "+dval3+"일) \n작가'"+dval1+"'님 에게 의뢰를 요청 하시겠습니까?");
 		var str='';
 		str+="(가격: "+wprice+"원, 제작기간: "+wdays+"일) \n작가'"+wid+"'님 에게 의뢰를 요청 하시겠습니까?";
 		swal(str, {
 			  buttons: {
 			    cancel: "뒤로가기",
 			    
 			    catch: {
 			    	text: "네, 의뢰합니다.",
 					value: "go",
 			    },
 			  },
 			}).then((value) => {
 			  switch (value) {
 			    case "go":
 			      console.log(str);
 			      var form = {
 			    		  rap_ranum:ra_num,
 			    		  rap_mbid_w:wid,
 			    		  rap_price:wprice,
 			    		  rap_days:wdays,
 			    		  rap_mbid_n:ra_mbid
 			      }
 			      $.ajax({
 						type:'POST',
 						url:'ajax/reqdecision',
 						contentType: "application/json; charset=utf-8;",
 						data: JSON.stringify(form),
 						dataType:'json',
 						success: function(data) {
 							console.log(data);
 							if(data == '0') {
 								swal("의뢰접수한 작가님 본인은 신청 할 수 없습니다.");
 							} else if(data == '1') {
 								swal("의뢰한 본인의 의뢰하기 완료");
 							} else if(data == '2') {
 								swal("다른사람의 의뢰하기 완료");
 							} else if(data == '3') {
 								swal("의뢰완료! 마이페이지-[제작의뢰 내역]을 확인해주세요.");
 							} else if(data == '4') {
 								swal("이미 해당 작가님께 의뢰중인 접수내역이 있습니다!");
 							}							
 						},
 						error: function(error) {
 						}
 					});
 			      break;
 			      
 			    default:
 			  }
 			});
 	}
 	
// $("#middle_contents2_btn").attr('disabled',true);
// $(".decisionbtn").css("display","none");
</script>
</html>