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
		<label for = "user_id"> ���̵� :</label>
		<input type = "text" id = "user_id" name = "user_id" required><br>
		
		<label for = "user_pw" >��й�ȣ :</label>
		<input type = "password" id = "user_pw" name = "user_pw" required><br>
		
		<label for = "user_email">�̸��� : </label>
		<input type = "email" id = "user_email" name = "user_email" required><br>
		
		<label for = "user_age">������� : </label>
		<input type = "date" id = "user_age" name = "user_age" required><br>
		
		<label for = "user_phone">��ȭ��ȣ : </label>
		<input type = "text" id = "user_phone" name = "user_phone" required><br>
		
		<label for = "user_name">�̸� : </label>
		<input type = "text" id = "user_name" name = "user_name" required><br>
		
		
		<p>
		<label for = "gender">���� : </label>
	
		 
              <input type="radio" name="gender" value="man">��
              <input type="radio" name="gender" value="woman">��
           
		
		</p>
		
		<input type ="submit" value = "����">
</form> 

</body>
</html>