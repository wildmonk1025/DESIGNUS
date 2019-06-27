<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%> 

<!DOCTYPE html>
<html>
<head>
<title>제작의뢰 상세보기</title>
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
	box-shadow: 3px 0px 8px -3px rgba(0,0,0,0.56);
}

#middle {
	margin-top: 50px;
	width: 1520px;
	height: auto;
}

#middle_img {
	float: left;
	width: 300px;
	height: 300px;
	text-align: center;
}

#middle_img_lv1 {
	padding: 5px;
	width: 260px;
	height: 35px;
	font-weight: 800;
	border: 1px solid #f0f0f0;
	border-radius: 5px;
	box-shadow: 3px 0px 8px -3px rgba(0,0,0,0.56);
}

#middle_img_lv2 {
	padding: 5px;
	width: 260px;
	height: 230px;
	margin-top: 5px;
	border: 1px solid #f0f0f0;
	border-radius: 5px;
	box-shadow: 3px 0px 8px -3px rgba(0,0,0,0.56);
}

#middle_contents1 {
	float: left;
	width: 900px;
	height: 300px;
	text-align: center;
}

#middle_contents1_lv1 {
	width: 850px;
	height: 60px;
	font-size: 30px;
	border: 1px solid #58ACFA;
	background-color: #58ACFA;
	border-radius: 5px;
	box-shadow: 3px 0px 8px -3px rgba(0,0,0,0.56);
}

#middle_title {
	padding-top: 10px;
	padding-left: 20px;
	font-size: 25px;
	font-weight: 800;
	color: white;
	float: left;
	text-align: left;
	width: 680px;
	height: 50px;
}
#middle_contents1_lv2 {
	width: 150px;
	height: 58px;
	font-size: 20px;
	float: right;
}

#middle_contents1_lv3 {
	width: 850px;
	height: 140px;
	font-size: 20px;
	text-align: right;
	border: 1px solid #f0f0f0;
	border-radius: 5px;
	box-shadow: 3px 0px 8px -3px rgba(0,0,0,0.56);
}

#middle_contents1_lv4 {
	margin-top: 20px;
	padding-top: 5px;
	padding-left: 5px;
	width: 850px;
	height: 75px;
	font-size: 35px;
	color: red;
	text-align: left;
	border: 1px solid #f0f0f0;
	border-radius: 5px;
	box-shadow: 3px 0px 8px -3px rgba(0,0,0,0.56);
}

#middle_contents2 {
	width: 310px;
	height: 300px;
	float: left;
	border: 1px solid #f0f0f0;
	border-radius: 5px;
	box-shadow: 3px 0px 8px -3px rgba(0,0,0,0.56);
}

#middle_contents2_btn1 {
	width: 150px;
	height: 150px;
	margin: 100px 0px 30px 80px;
	color: white;
	font-size: 20px;
	font-weight: 800;
	border-radius: 15px;
	background-color: #58ACFA;
}

#middle_contents2_btn2 {
	width: 150px;
	height: 150px;
	margin: 100px 0px 30px 80px;
	color: white;
	font-size: 20px;
	font-weight: 800;
	border-radius: 15px;
	background-color: gray;
}

#middle_contents3 {
	margin-top: 10px;
	float: left;
	width: 1516px;
	height: 200px;

}

#middle_contents3_lv1 {
	width: 1514px;
	height: 150px;
	overflow: auto;
	margin-top: 10px;
	font-size: 20px;
	border: 1px solid #f0f0f0;
	border-radius: 5px;
	box-shadow: 3px 0px 8px -3px rgba(0,0,0,0.56);
}

#middle_contents4 {
	width: 1514px;
	heigth: auto;
	margin-top: 10px;
	float: left;
	border: 1px solid #f0f0f0;
	border-radius: 5px;
	box-shadow: 3px 0px 8px -3px rgba(0,0,0,0.56);
}

#middle_contents4_lv1 {
	padding: 10px;
	width: 1480px;
	height: 80px;
	border: 1px solid #f0f0f0;
box-shadow: inset 0px 1px 6px -3px rgba(0,0,0,0.62);
}

#middle_contents4_lv2 {
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
	width: 1500px;
	heigth: auto;
	margin-left: 5px;
	margin-top: 15px;
	margin-bottom: 30px;
	float: left;
}

#footer {
	width: 1518px;
	height: 180px;
	margin-top: 20px;
	float: left;
	border: 1px solid #f0f0f0;
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
	background-color: #58ACFA;
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
	margin-top: 40px;
	text-align: center;
	width: 400px;
	line-height: 200%;
}

#revamn input[type="button"]{
	width: 100px;
	height: 30px;
	background-color: white;
	font-size: 20px;
	color: #58ACFA;
	border-radius: 5px;
	box-shadow: -60px 0px 30px -90px #000000,
                60px 0px 30px -90px #000000;
}

.subtn {
	padding-top: 10px;
	border: none;
	font-size: 25.5px;
	color: white;
	background-color: #58ACFA;
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
	display: block;
	margin-left: 60px;
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
				<p style="font-size: 30px; font-weight: 700; color: white;">의뢰 접수 및 견적서 첨부</p>
				<hr style="color: white">
				<div id="revamn">
					<table>
						<tr>
							<td style="width: 100px; color:white; padding-right: 30px;">의뢰접수금액</td>
							<td style="width: 200px;"><input type="text" id="revamoney" name="revamoney"  placeholder="원 단위 금액 입력" style="width:200px;"></td>
						</tr>
						<tr>
							<td style="width: 100px; color:white; padding-right: 30px;">견적서 첨부</td>
							<td style="width: 200px;"><input type="file" id="revfile" name="revfile" style="width:200px;"></td>
						</tr>
						<tr>
							<td style="width: 100px; color:white; padding-right: 30px;">제작소요기간</td>
							<td style="width: 200px;"><input type="text" id="revadate" name="revadate" placeholder="일 단위 기간 입력" style="width:200px;"></td>
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
			<div id="middle_img_lv1">카테고리 > 
			 <c:set var="code" value="${raInfo.ra_cgcode}" />
					<c:forEach var="cg" items="${cgList}">
						<c:if test="${code eq cg.cg_code }">${cg.cg_name}</c:if>
					</c:forEach>
			</div>
			<div id="middle_img_lv2">
				<img src="/revauction/${raInfo.ra_image}" width="100%" height="100%"/>
				<%-- <img src="<spring:url value='resources/upload/${raInfo.ra_image}'/>" alt="${raInfo.ra_image}" width="100%" height="100%"/> --%>
			</div>
		</div>
		<div id="middle_contents1">
			<div id="middle_contents1_lv1">
				<div id="middle_title">${raInfo.ra_title}</div>
				<div id="middle_contents1_lv2">
					<div id="peek1">
						<input type="submit" value="꿍♥" class="subtn">
					</div>
					<div id="peek2">
						<input type="submit" value="꿍♡" class="subtn">
					</div>
				</div>
			</div>
			<div id="middle_contents1_lv3">
				<table style="margin: 10px 0px 0px 10px; line-height: 200%">
					<tr>
						<th>작성자 :</th>
						<td><input id="ra_mbid2" type="text" value="${raInfo.ra_mbid}" readonly="readonly"></td>
						<td style="text-align:left;">님</td>
					</tr>
					<tr>
						<th>수량 :</th>
						<td style="font-size: 15px; text-align:center;">1EA(짝/켤레/쌍)</td>
						<td style="color: gray; font-size: 11px; text-align:left;">제작의뢰 수량은 DEFAULT 1개 입니다.</td>
					</tr>
					<tr>
						<th>의뢰인의 낙찰 금액 :</th>
						<c:set var="priceChk" value="${raCurPrice.rat_price}"/>
						<c:if test="${priceChk eq null}">
						<td colspan="2" style="text-align:left; color:gray">의뢰한 내역이 없습니다.</td></c:if>
						<c:if test="${priceChk ne null}">
						<td style="text-align:center;"> <fmt:formatNumber value="${raCurPrice.rat_price}" pattern="#,###"/></td>
						<td style="text-align:left;">원  <input type="text" value="(${raCurPrice.rat_mbid_w}님)" readonly="readonly" style="border:none; text-align: left; font-size:20px; color:maroon;"></td></c:if>
						<td style="text-align:left; color:blue;"></td>
					</tr>
				</table>
				<div id="middle_contents1_lv4"></div>
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
					의뢰접수 <br> 권한이 <br> 없습니다.
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
					<c:set var="ttt" value="${msgfile}"/>
					<div>${raInfo.ra_file}<button id="middle_contents4_btn" onclick="location.href='ratfiledownload?rat_file=${raInfo.ra_file}&ra_num=${raInfo.ra_num}'">다운로드</button></div>
				</div>
			</div>
			<div id="middle_contents4_lv3">
				<c:set var="contents" value="${raInfo.ra_contents}"/>
				<c:if test="${contents ne null}">
				<p style="text-align:center">${raInfo.ra_contents}</p></c:if>
				<c:if test="${contents eq null}">
				<p style="text-align:center"><br>추가 요청내역이 없습니다.</p></c:if>
			</div>
		</div>
		<div id="footer">
		<hr style="width:100%; border: 2px solid coral; align: center;">	
			<jsp:include page="footer.jsp"></jsp:include>
		</div>
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
			$.ajax({
				type:'POST',
				url:'ajax/revauction',
				//traditional : true,
				data: { rat_ranum : ra_num},
				dataType:'json',
				success: function(data) {

					var str = "<tr style='background-color:#58ACFA;'><td width='300'>작가ID</td><td width='300'>접수금액</td><td width='300'>첨부파일</td><td width='300'>제작기간</td><td width='300'>의뢰하기</td></tr>";
					for(var i in data) {
					var wid = data[i].rat_mbid_w;
					var wprice = data[i].rat_price;
					var wdays = data[i].rat_days;
					str+="<tr><td width='300'>"+data[i].rat_mbid_w+"님</td><td width='300'>"+data[i].rat_price
							+"원(수량 1ea 기준)</td><td width='300' class='file'><a href='ratfiledownload?rat_file="+data[i].rat_file+"&ra_num="+${raInfo.ra_num}
							+"'>견적서 다운로드</a></td><td width='300'>"+data[i].rat_days
							+"일</td><td width='300'><input class='decisionbtn' type='button' onclick=\"revdecision('"+wid+"','"+wprice+"','"+wdays+"');\" value='CLICK'></td></tr>";
					}
					$("#tenderlist").html(str);
					console.log(str);
				},
				error: function(error) {
					var str="<tr><td width='1300'>작가회원의 의뢰 접수내역이 없습니다.</td></tr>";
					$("#tenderlist").html(str);
				}
			}); //ajax End
		});
		/* 여기까지 */
	var ra_mbid=$("#ra_mbid2").val();
	function revauctionapply() {
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
					window.location.reload();
				},
				error: function(error) {
					swal("해당 정보를 다시 입력하여 주시기 바랍니다.");
				}
			}); //ajax End
		}
		
 	function revdecision(wid,wprice,wdays) {
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
 							} else if(data == '5') {
 								swal("경매가 마감되어, 의뢰를 요청할 수 없습니다.");
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
 	
 	//시간 표시
 	//CountDownTimer('01/01/2017', 'countdown'); // 2017년 1월 1일까지
 	//CountDownTimer('01/01/2018 00:00 AM', 'newcountdown'); // 2018년 1월 1일까지, 시간을 표시하려면 01:00 AM과 같은 형식을 사용합니다.
 	
		$(document).ready(function() {
 		var date = new Date("${raInfo.ra_date}");
 		CountDownTimer(date,'#middle_contents1_lv4');
		});

 		function CountDownTimer(date,id) {
 		var end = new Date(date);
 	 	end.setDate(end.getDate()+1);
 	 	//end.setMinutes(end.getMinutes()+10);
 		var _second = 1000;
 		var _minute = _second * 60;
 		var _hour = _minute * 60;
 		var _day = _hour * 24;
 		var timer;

 		function showRemaining() {
 		var now = new Date();
 		var distance = end - now;

 		if (distance < 0) {
 		clearInterval(timer);
 		$(id).html("경매가 마감되었습니다.");

 		if (!location.hash) { 
 			location.hash = '#reload';
 			window.location.reload();
 		}

 		return;
 		}
 		
 		var days = Math.floor(distance / _day);
 		var hours = Math.floor((distance % _day) / _hour);
 		var minutes = Math.floor((distance % _hour) / _minute);
 		var seconds = Math.floor((distance % _minute) / _second);
 	 
 		$(id).html("남은 시간: "+days + "일 " + hours + "시간 " + minutes +"분 " + seconds + "초 남음");
 		}
 		
 		timer = setInterval(showRemaining, 100);
 		}
 		// Source: stackoverflow
 		
</script>
</html>