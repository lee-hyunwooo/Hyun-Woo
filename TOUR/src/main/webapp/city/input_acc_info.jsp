<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	
	<form action=FukuokaAccServlet method ="post" enctype="multipart/form-data">
		<label for ="acc_id">���� ��ȣ : </label>
		<input type ="text" name="acc_id" id="acc_id" required> <br>
		
		<label for ="user_id">���� �̸� : </label>
		<input type ="text" name="user_id" id="user_id" required> <br>
		
		<label for ="city_name">���� �̸� : </label>
		<input type ="text" name="city_name" id="city_name" required> <br>
		
		<label for ="acc_name">���� �̸� : </label>
		<input type ="text" name="acc_name" id="acc_name" required> <br>
		
		<label for ="acc_location">���� �ּ� : </label>
		<input type ="text" name="acc_location" id="acc_location" required> <br>
		
		<label for ="acc_phone">��ȭ��ȣ : </label>
		<input type ="text" name="acc_phone" id="acc_phone" required> <br>
		
		<label for ="acc_time">��ð� : </label>
		<input type ="text" name="acc_time" id="acc_time" required> <br>
		
		
		<label for ="acc_comment">���� ���� : </label>
		<input type ="text" name="acc_comment" id="acc_comment" required> <br>
		
		<label for="acc_img1"> �̹��� : </label>
		<input type = "file" name = "acc_img1" id="acc_img1" required> <br>
		
		<label for="acc_img2"> �̹��� : </label>
		<input type = "file" name = "acc_img2" id="acc_img2" required> <br>
		
		<label for="acc_img3"> �̹��� : </label>
		<input type = "file" name = "acc_img3" id="acc_img3" required> <br>
		
		<button type="submit">���ε�</button>

	</form>


</body>
</html>