<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	
	<form action=TourServlet method ="post" enctype="multipart/form-data">
		<label for ="tour_id">������ ��ȣ : </label>
		<input type ="text" name="tour_id" id="tour_id" required> <br>
		
		<label for ="user_id">���� �̸� : </label>
		<input type ="text" name="user_id" id="user_id" required> <br>
		
		<label for ="city_id">���� ��ȣ : </label>
		<input type ="text" name="city_id" id="city_id" required> <br>
		
		<label for ="tour_name">������ �̸� : </label>
		<input type ="text" name="tour_name" id="tour_name" required> <br>
		
		<label for ="tour_location">������ �ּ� : </label>
		<input type ="text" name="tour_location" id="tour_location" required> <br>
		
		<label for ="tour_phone">��ȭ��ȣ : </label>
		<input type ="text" name="tour_phone" id="tour_phone" required> <br>
		
		<label for ="tour_time">��ð� : </label>
		<input type ="text" name="tour_time" id="tour_time" required> <br>
		
		
		<label for ="tour_comment">������ ���� : </label>
		<input type ="text" name="tour_comment" id="tour_comment" required> <br>
		
		<label for="tour_img1"> �̹��� : </label>
		<input type = "file" name = "tour_img1" id="tour_img1" required> <br>
		
		<label for="tour_img2"> �̹��� : </label>
		<input type = "file" name = "tour_img2" id="tour_img2" required> <br>
		
		<label for="tour_img3"> �̹��� : </label>
		<input type = "file" name = "tour_img3" id="tour_img3" required> <br>
		
		<button type="submit">���ε�</button>

	</form>


</body>
</html>