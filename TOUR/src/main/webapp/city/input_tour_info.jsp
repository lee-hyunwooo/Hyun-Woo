<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	
	<form action="/Fukuoka/spot/FukuokaTourServlet" method ="post" enctype="multipart/form-data">
		
		<label for ="user_id">���� �̸� : </label>
		<input type ="text" name="user_id" id="user_id" required> <br>
		
		<p id="city_name">
				<label for ="city_name">����</label> <br>
                <input type="radio" id ="city_name"name="city_name" value="Osaka">����ī
                <input type="radio" id ="city_name"name="city_name" value="Sapporo">������
                <input type="radio" id ="city_name"name="city_name" value="Nagasaki">������Ű
                <input type="radio" id ="city_name"name="city_name" value="Tokyo">����
                <input type="radio" id ="city_name"name="city_name" value="Shizuoka">�����ī
                <input type="radio" id ="city_name"name="city_name" value="Kyoto">����
                <input type="radio" id ="city_name"name="city_name" value="Nagoya">�����
                <input type="radio" id ="city_name"name="city_name" value="Fukuoka">�����ī
		
			</p>
		
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