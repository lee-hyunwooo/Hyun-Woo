<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>회원가입 성공하셨습니다!</title>
</head>
<body>
<!-- String user_id = request.getParameter("user_id");
	            String user_pw = request.getParameter("user_pw");
	            String user_email = request.getParameter("user_email");
	            String user_phone = request.getParameter("user_phone");
	            String user_name = request.getParameter("user_name");
	            String user_sex = request.getParameter("user_sex");
	            String user_age = request.getParameter("user_age");
	            String user_date = request.getParameter("user_date"); -->
<h1>회원가입에 성공!</h1>
<h2> 회원가입 정보 :</h2>
<p> 회원 이름 : <%= session.getAttribute("user_name") %></p>
<p> 아이디 : <%= session.getAttribute("user_id") %></p>
<p> 비밀번호 : <%= session.getAttribute("user_pw") %></p>
<p> 생년월일 : <%= session.getAttribute("user_age") %></p>
<p>	성별 : <%= session.getAttribute("user_sex") %></p>
<p> 이메일 : <%= session.getAttribute("user_email") %></p>
<p> 전화번호 : <%= session.getAttribute("user_phone") %></p>
<p> 가입일 : <%= session.getAttribute("user_date") %></p>
</body>
</html>
