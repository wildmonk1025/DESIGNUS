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
	height: 1600px;
}

#footercheck {
	border: 1px solid black;
	width: 1520px;
	height: 150px;
}

#List {
	border: 1px solid black;
	margin:20px;
	top: 30px;
	width: 1480px;
	height: 1350px;
}

#category {
	border: 1px solid red;
	position:relative;
	float:left;
	width:200px;
	height: 25px;
}

</style>
</head>

<body>
	<div id="mainheader">
		<jsp:include page="main.jsp" />
	</div>

	<div id="homeMain">

		<div id="List">
			<div id="category">
				카테고리 > 꽃,조화,꽃장식.
			</div>
			

		</div>



	</div>
	<div id="footercheck">
		<jsp:include page="footer.jsp"></jsp:include>
	</div>

</body>
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<script>
	var kind = 1;
	$("#peek1").click(function() {
		if ($("#peek2").val != null) {
			$("#peek1").css("display", "none");
			$("#peek2").css("display", "inline");
			kind = kind + 1;
			console.log(kind);
		}
	});

	$("#peek2").click(function() {
		if ($("#peek1").val != null) {
			$("#peek2").css("display", "none");
			$("#peek1").css("display", "inline");
			kind = kind - 1;
			console.log(kind);
		}
	});

	$("#btn1").click(function() {
		$("#inbuyLB").css("display", "inline");
		$("#inbuyLB-shadow").css("display", "inline");
	});

	$("#inbuyLB-shadow").click(function() {
		$("#inbuyLB").css("display", "none");
		$("#inbuyLB-shadow").css("display", "none");
	});

	$("#btn2").click(function() {
		$("#tenderLB").css("display", "inline");
		$("#tenderLB-shadow").css("display", "inline");
	});

	$("#tenderLB-shadow").click(function() {
		$("#tenderLB").css("display", "none");
		$("#tenderLB-shadow").css("display", "none");
	});
</script>
</html>