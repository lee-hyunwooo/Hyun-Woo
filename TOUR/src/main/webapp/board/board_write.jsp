<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시물 작성</title>
</head>
<body>
	<form action="/board/boardServlet" method="post">
		<label for ="title">유저</label>
				<input type="text"id ="user_id" name="user_id" required>
				
				<label for ="title">제목</label>
				<input type="text"id ="title" name="title" required>
				
			<p id="city_name">
				<label for ="city_name">도시</label> <br>
                <input type="radio" id ="city_name"name="city_name" value="오사카">오사카
                <input type="radio" id ="city_name"name="city_name" value="삿포로">삿포로
                <input type="radio" id ="city_name"name="city_name" value="나가사키">나가사키
                <input type="radio" id ="city_name"name="city_name" value="도쿄">도쿄
                <input type="radio" id ="city_name"name="city_name" value="시즈오카">시즈오카
                <input type="radio" id ="city_name"name="city_name" value="교토">교토
                <input type="radio" id ="city_name"name="city_name" value="나고야">나고야
                <input type="radio" id ="city_name"name="city_name" value="후쿠오카">후쿠오카
		
			</p>
			<p id="category">
				<label for ="title">카테고리</label>
				<input type="radio"id ="category" name="category" value="숙소">숙소
				<input type="radio"id ="category" name="category" value="관광지">관광지
				<input type="radio"id ="category" name="category" value="식당">식당
			</p>
				<label for ="title">내용</label>
				<textarea rows="5" cols="50"id="content" name="content" required></textarea>

		<input type="submit" value="글등록">
	</form>

</body>
</html>