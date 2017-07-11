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
   
   <style>
      .main {
         margin : 0;
         background-color: black;
      }
      
	  .container{
	  	color: #ffffff;
	  	
	  }
	  
      .fl {
         float: left;
      }
      
      span {
         height: 27px;
         margin-top : 7px;
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
</head>
<body class="main">
   <div class="container" style="width:70%; margin-top:20px;">
      <form action="/newsro/MemberInsert.do" method="post">
         <table class="table">
            <tr>
               <th colspan="2" class="bg-primary">회원가입</th>
            </tr>
            <tr>
               <th class="col-md-2 text-right" style="vertical-align: middle;">이름</th>
               <td><input class="form-control input-sm" type="text" name="name" id="name" required></td>
            </tr>
            <tr>
               <th class="col-md-2 text-right" style="vertical-align: middle;">아이디</th>
               <td><input class="form-control" type="text" name="user_id" id="user_id" required></td>
            </tr>
            <tr>
               <th class="col-md-2 text-right" style="vertical-align: middle;">비밀번호</th>
               <td><input class="form-control" type="password" name="passwd" id="passwd" required></td>
            </tr>
            <tr>
               <th class="col-md-2 text-right" style="vertical-align: middle;">성별</th>
               <td>
                  <label class="radio-inline">
                     <input type="radio" name="sex" id="male" value="m" checked>남성
                  </label>
                  <label class="radio-inline">
                     <input type="radio" name="sex" id="female" value="f">여성
                  </label>
               </td>
            </tr>
            <tr>
               <th class="col-md-2 text-right" style="vertical-align: middle;">생년월일</th>
               <td style="vertical-align: middle;">
                  <input class="form-control fl" style="width:20%" type="text" name="year" id="year" required><span class="fl" style="width:7%">&nbsp;&nbsp;년</span> 
                  <input class="form-control fl" style="width:20%" type="text" name="month" id="month" required><span class="fl" style="width:7%">&nbsp;&nbsp;월</span>
                  <input class="form-control fl" style="width:20%" type="text" name="day" id="day" required><span class="fl" style="width:7%">&nbsp;&nbsp;일</span>
               </td>
            </tr>
            <tr>
               <th class="col-md-2 text-right" style="vertical-align: middle;">전화번호</th>
               <td>
                  <input class="form-control fl" style="width:20%" type="text" name="tel1" id="phone1" required><span class="fl" style="width:7%">&nbsp;&nbsp;&nbsp;-</span>
                  <input class="form-control fl" style="width:20%" type="text" name="tel2" id="phone2" required><span class="fl" style="width:7%">&nbsp;&nbsp;&nbsp;-</span>
                  <input class="form-control fl" style="width:20%" type="text" name="tel3" id="phone3" required>
               </td>
            </tr>
            <tr>
               <th class="col-md-2 text-right" style="vertical-align: middle;">E-MAIL</th>
               <td><input class="form-control" type="email" name="email" id="email" required></td>
            </tr>
            <tr>
               <td colspan="2" class="text-right">
                  <input class="btn btn-success" type="submit" value="회원가입">
                  <input class="btn btn-default" type="reset" value="취소">
               </td>
            </tr>
         </table>
      </form>
   </div>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       
</body>
</html>