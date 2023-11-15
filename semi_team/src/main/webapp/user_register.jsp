<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">

<title>Insert title here</title>
<link href="styles.css" rel="stylesheet" />
</head>
<body>
<form action="RegisterServlet" method="post">
		<label for = "user_id"> 아이디 :</label>
		<input type = "text" id = "user_id" name = "user_id" required><br>
		
		<label for = "user_pw" >비밀번호 :</label>
		<input type = "password" id = "user_pw" name = "user_pw" required><br>
		
		<label for = "user_email">이메일 : </label>
		<input type = "email" id = "user_email" name = "user_email" required><br>
		
		<label for = "user_age">생년월일 : </label>
		<input type = "date" id = "user_age" name = "user_age" required><br>
		
		<label for = "user_phone">전화번호 : </label>
		<input type = "text" id = "user_phone" name = "user_phone" required><br>
		
		<label for = "user_name">이름 : </label>
		<input type = "text" id = "user_name" name = "user_name" required><br>
		
		
		<p>
		<label for = "gender">성별 : </label>
	
		 
              <input type="radio" name="gender" value="man">남
              <input type="radio" name="gender" value="woman">여
           
		
		</p>
		
		<input type ="submit" value = "가입">
</form> 

</body>
</html>