<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	
	<form action="/Fukuoka/res/FukuokaAccServlet" method ="post" enctype="multipart/form-data">
		
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
		
		<label for ="res_name">�Ĵ� �̸� : </label>
		<input type ="text" name="res_name" id="res_name" required> <br>
		
		<label for ="res_location">�Ĵ� �ּ� : </label>
		<input type ="text" name="res_location" id="res_location" required> <br>
		
		<label for ="res_phone">��ȭ��ȣ : </label>
		<input type ="text" name="res_phone" id="res_phone" required> <br>
		
		<label for ="res_time">��ð� : </label>
		<input type ="text" name="res_time" id="res_time" required> <br>
		
		
		<label for ="res_comment">�Ĵ� ���� : </label>
		<input type ="text" name="res_comment" id="res_comment" required> <br>
		
		<label for="res_img1"> �̹��� : </label>
		<input type = "file" name = "res_img1" id="res_img1" required> <br>
		
		<label for="res_img2"> �̹��� : </label>
		<input type = "file" name = "res_img2" id="res_img2" required> <br>
		
		<label for="res_img3"> �̹��� : </label>
		<input type = "file" name = "res_img3" id="res_img3" required> <br>
		
		<button type="submit">���ε�</button>

	</form>


</body>
</html>