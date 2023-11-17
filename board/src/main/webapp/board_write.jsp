<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시물 작성</title>
</head>
<body>
	<form action="boardServlet" method="post">
		<label for ="title">유저</label>
				<input type="text"id ="user_id" name="user_id" required>
				
				<label for ="title">제목</label>
				<input type="text"id ="title" name="title" required>
				
			
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