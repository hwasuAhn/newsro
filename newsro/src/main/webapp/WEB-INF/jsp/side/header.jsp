<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div class="container-fluid">
	<div class="navbar-header">
		<a class="navbar-brand" id="logo" href="/newsro/main/main.jsp">
			<img src="/newsro/img/ugelogo.png" width="80px" height="80px">
		</a>
	</div>
	<div class="collapse navbar-collapse" id="myNavbar">
		<c:if
			test="${sessionScope.id == null && sessionScope.user_id == null }">
			<ul class="nav navbar-nav navbar-right">
				<li><a href="/newsro/member/loginForm.jsp"><span
						class="glyphicon glyphicon-log-in"></span> 로그인</a></li>
				<li><a href="/newsro/member/joinForm.jsp"><span
						class="glyphicon glyphicon-log-in"></span> 회원가입</a></li>
				<li><a href="/newsro/member/loginForm.jsp"><span
						class="glyphicon glyphicon-log-in"></span> 마이페이지</a></li>
			</ul>
		</c:if>
		<c:if
			test="${sessionScope.id != null || sessionScope.user_id != null }">
			<c:choose>
				<c:when test="${sessionScope.id != null}">
					<ul class="nav navbar-nav navbar-right">
						<li><a href="#"><span class="glyphicon glyphicon-log-in"></span>
								${id} 님 반갑습니다.</a></li>
						<li><a href="/newsro/Logout.do"><span
								class="glyphicon glyphicon-log-out" id="logout"></span> 로그아웃</a></li>
					</ul>
				</c:when>
				<c:when test="${sessionScope.user_id != null}">
					<ul class="nav navbar-nav navbar-right">
						<li><a href="#"><span class="glyphicon glyphicon-log-in"></span>
								${user_id} 님 반갑습니다.</a></li>
						<li><a href="/newsro/MemberUpdateView.do"><span
								class="glyphicon glyphicon-user"></span> 마이페이지</a></li>
						<li><a href="/newsro/Logout.do"><span
								class="glyphicon glyphicon-log-out" id="logout"></span> 로그아웃</a></li>
					</ul>
				</c:when>
			</c:choose>
		</c:if>
	</div>
</div>