<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<title>정직한 미디어 NewsRo</title>
	   
	<!-- 부트스트랩 CSS -->
	<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
	<!--  공통 CSS -->
	<link rel="stylesheet" href="/newsro/css/common.css">
	
	<!-- JQuery 1.11.3 -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
	<!-- 부트스트랩 JS -->
	<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
</head>
<body>
	<div class="main">
		<nav class="navbar" id="header">
			<jsp:include page="/side/header.jsp"></jsp:include>
		</nav>
		<div id="sub_header">
			<jsp:include page="/side/sub_header.jsp"></jsp:include>
		</div>
		<div id="content">
			<jsp:include page="/main/page_view.jsp"></jsp:include> 
		</div>
		<div class="container-fluid text-center">
			<jsp:include page="/side/footer.jsp"></jsp:include>
		</div>
	</div>
</body>
</html>