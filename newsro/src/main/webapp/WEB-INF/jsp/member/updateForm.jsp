<%@ page language="java" contentType="text/html; charset=utf-8"
   pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>정직한 미디어 NewsRo</title>

<!-- 부트스트랩 CSS -->
<link rel="stylesheet"
   href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
<!-- JQuery 1.11.3 -->
<script
   src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<!-- 부트스트랩 JS -->
<script
   src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>

<style>
.fl {
   float: left;
}

span {
   height: 27px;
   margin-top: 7px;
}
</style>
<script>
   $(document).ready(function() {
      $("form").submit(function() {
         if (isNaN($("#year").val())) {
            alert("생년월일은 숫자로만 입력하세요.");
            $("#year").focus();
            return false;
         } else if (isNaN($("#month").val())) {
            alert("생년월일은 숫자로만 입력하세요.");
            $("#month").focus();
            return false;
         } else if (isNaN($("#day").val())) {
            alert("생년월일은 숫자로만 입력하세요.");
            $("#day").focus();
            return false;
         } else if (isNaN($("#phone1").val())) {
            alert("핸드폰 첫번째 자리 숫자로만 입력하세요.");
            $("#phone1").focus();
            return false;
         } else if (isNaN($("#phone2").val())) {
            alert("핸드폰 두번째 자리 숫자로만 입력하세요.");
            $("#phone2").focus();
            return false;
         } else if (isNaN($("#phone3").val())) {
            alert("핸드폰 세번째 자리 숫자로만 입력하세요.");
            $("#phone3").focus();
            return false;
         }
      });
   });
</script>
<!-- <script>

</script> -->
</head>
<body>
   <div class="container">
      <form method="post">
         <table class="table">
            <tr>
               <th colspan="2" class="bg-primary">회원정보수정</th>
            </tr>
            <tr>
               <th class="col-md-2 text-right" style="vertical-align: middle;">이름</th>
               <td><input value="${memberdto.name}" class="form-control"
                  type="text" name="name" id="name" required></td>
            </tr>
            <tr>
               <th class="col-md-2 text-right" style="vertical-align: middle;">아이디</th>
               <td><input value="${memberdto.user_id}" class="form-control"
                  type="text" readonly="readonly" name="user_id" id="user_id"></td>
            </tr>
            <tr>
               <th class="col-md-2 text-right" style="vertical-align: middle;">비밀번호</th>
               <td><input class="form-control" type="text" name="passwd"
                  id="passwd" required></td>
            </tr>
            <tr>
               <th class="col-md-2 text-right" style="vertical-align: middle;">성별</th>
               <td>
               
               <c:if test="${memberdto.sex=='m'}">
                  <input type="radio" name="sex" id="male" value="m" checked>남성 
                  <input type="radio"   name="sex" id="female" value="f">여성
               </c:if>
               <c:if test="${memberdto.sex=='f'}">
                  <input type="radio" name="sex" id="male" value="m">남성 
                  <input type="radio"   name="sex" id="female" value="f" checked>여성
               </c:if>   

               </td>
            </tr>
            <tr>
               <th class="col-md-2 text-right" style="vertical-align: middle;">생년월일</th>
               <td>
                  <%-- <c:set var="birth" value="${fn:split(memberdto.birth, '-')}"/>
                  <c:forEach var="birthday" items="${birth}">
                     <c:out value="${birthday}"/>
                  </c:forEach> --%> <input value="${year}" class="form-control fl"
                  style="width: 20%" type="text" name="year" id="year" required><span
                  class="fl" style="width: 7%">&nbsp;&nbsp;년</span> <input
                  value="${month}" class="form-control fl" style="width: 20%"
                  type="text" name="month" id="month" required><span
                  class="fl" style="width: 7%">&nbsp;&nbsp;월</span> <input
                  value="${day}" class="form-control fl" style="width: 20%"
                  type="text" name="day" id="day" required><span class="fl"
                  style="width: 7%">&nbsp;&nbsp;일</span> <%-- </c:forEach>    --%>

               </td>

            </tr>
            <tr>
               <th class="col-md-2 text-right" style="vertical-align: middle;">전화번호</th>


               <%-- <c:set var="intArray" value="${fn:split(tokens, '-')}"/> --%>
               <td><input value="${tel1}" class="form-control fl"
                  style="width: 20%" type="text" name="tel1" id="phone1" required><span
                  class="fl" style="width: 7%">&nbsp;&nbsp;&nbsp;-</span> <input
                  value="${tel2}" class="form-control fl" style="width: 20%"
                  type="text" name="tel2" id="phone2" required><span
                  class="fl" style="width: 7%">&nbsp;&nbsp;&nbsp;-</span> <input
                  value="${tel3}" class="form-control fl" style="width: 20%"
                  type="text" name="tel3" id="phone3" required></td>
            <tr>
               <th class="col-md-2 text-right" style="vertical-align: middle;">E-MAIL</th>
               <td><input value="${memberdto.email}" class="form-control"
                  type="text" name="email" id="email" required></td>
            </tr>



            <tr align="center" valign="middle">
               <td colspan="5">
         
               <font size=2> <a
                     href="/newsro/MemberUpdateAction.do?user_id=${memberdto.user_id}"><input class="btn btn-success" value="수정"></a>&nbsp;&nbsp; <a
                     href="/newsro/MemberDelete.do"><input class="btn btn-danger" value="삭제"></a>&nbsp;&nbsp; <a
                     href="/newsro/main/main.jsp"><input class="btn btn-default" value="취소"></a>
            </tr>

         </table>
      </form>
   </div>
</body>
</html>