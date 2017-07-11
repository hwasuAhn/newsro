<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<title>정직한 미디어 NewsRo</title>
	
	<!-- 부트스트랩 CSS -->
	<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
	<!-- JQuery 1.11.3 -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
	<!-- 부트스트랩 JS -->
	<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
</head>

<body>
	<div class="container">
		<form action="/newsro/MemberLogin.do"  method="post">
			<table class="table">
				<tr>
					<th colspan="2" class="bg-primary">로그인페이지</th>
				</tr>
				<tr>
					<th class="text-right" style="vertical-align: middle;">아이디</th>
					<td><input class="form-control" type="text" name="user_id" id="id" required></td>
				</tr>
				<tr>
					<th class="text-right" style="vertical-align: middle;">비밀번호</th>
					<td><input class="form-control" type="password" name="passwd" id="passwd" required></td>
				</tr>
				<tr>
					<td colspan="2" class="text-right" style="vertical-align: middle;">
						<input class="btn btn-success" type="submit" onclick="location.href='main.jsp'" value="로그인">
						<input class="btn btn-default" type="button" onclick="location.href='joinForm.jsp'" value="회원가입">

					</td>
				</tr>		
			</table>		
		</form>
	</div>
</body>
</html>