<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page import="dto.culBoardDTO"%>
<%@ page import="dao.culBoardDAO"%>
<%@ page import="java.util.*"%>


<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
<!--  공통 CSS -->
	<link rel="stylesheet" href="/newsro/css/common.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
<div class="main">
		<nav class="navbar" id="header">
			<jsp:include page="/side/header.jsp"></jsp:include>
		</nav>
		<div id="sub_header">
			<jsp:include page="/admin/admin_sub_header.jsp"></jsp:include>
		</div>
		
		
<div class="sub_container">		
	<div>

		<tr>
			<td>회원관리 리스트코드 넣기</td>
		</tr>		

	</div>
</div>

		<div class="container-fluid text-center">
			<jsp:include page="/side/footer.jsp"></jsp:include>
		</div> 
</div>