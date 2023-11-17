<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	
	<form action=FukuokaResServlet method ="post" enctype="multipart/form-data">
		<label for ="res_id">식당 번호 : </label>
		<input type ="text" name="res_id" id="res_id" required> <br>
		
		<label for ="user_id">유저 이름 : </label>
		<input type ="text" name="user_id" id="user_id" required> <br>
		
		<label for ="city_name">도시 이름 : </label>
		<input type ="text" name="city_name" id="city_name" required> <br>
		
		<label for ="res_name">식당 이름 : </label>
		<input type ="text" name="res_name" id="res_name" required> <br>
		
		<label for ="res_location">식당 주소 : </label>
		<input type ="text" name="res_location" id="res_location" required> <br>
		
		<label for ="res_phone">전화번호 : </label>
		<input type ="text" name="res_phone" id="res_phone" required> <br>
		
		<label for ="res_time">운영시간 : </label>
		<input type ="text" name="res_time" id="res_time" required> <br>
		
		
		<label for ="res_comment">식당 정보 : </label>
		<input type ="text" name="res_comment" id="res_comment" required> <br>
		
		<label for="res_img1"> 이미지 : </label>
		<input type = "file" name = "res_img1" id="res_img1" required> <br>
		
		<label for="res_img2"> 이미지 : </label>
		<input type = "file" name = "res_img2" id="res_img2" required> <br>
		
		<label for="res_img3"> 이미지 : </label>
		<input type = "file" name = "res_img3" id="res_img3" required> <br>
		
		<button type="submit">업로드</button>

	</form>


</body>
</html>