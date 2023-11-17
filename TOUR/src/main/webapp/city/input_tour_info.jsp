<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	
	<form action=FukuokaTourServlet method ="post" enctype="multipart/form-data">
		<label for ="tour_id">관광지 번호 : </label>
		<input type ="text" name="tour_id" id="tour_id" required> <br>
		
		<label for ="user_id">유저 이름 : </label>
		<input type ="text" name="user_id" id="user_id" required> <br>
		
		<label for ="city_name">도시 이름 : </label>
		<input type ="text" name="city_name" id="city_name" required> <br>
		
		<label for ="tour_name">관광지 이름 : </label>
		<input type ="text" name="tour_name" id="tour_name" required> <br>
		
		<label for ="tour_location">관광지 주소 : </label>
		<input type ="text" name="tour_location" id="tour_location" required> <br>
		
		<label for ="tour_phone">전화번호 : </label>
		<input type ="text" name="tour_phone" id="tour_phone" required> <br>
		
		<label for ="tour_time">운영시간 : </label>
		<input type ="text" name="tour_time" id="tour_time" required> <br>
		
		
		<label for ="tour_comment">관광지 정보 : </label>
		<input type ="text" name="tour_comment" id="tour_comment" required> <br>
		
		<label for="tour_img1"> 이미지 : </label>
		<input type = "file" name = "tour_img1" id="tour_img1" required> <br>
		
		<label for="tour_img2"> 이미지 : </label>
		<input type = "file" name = "tour_img2" id="tour_img2" required> <br>
		
		<label for="tour_img3"> 이미지 : </label>
		<input type = "file" name = "tour_img3" id="tour_img3" required> <br>
		
		<button type="submit">업로드</button>

	</form>


</body>
</html>