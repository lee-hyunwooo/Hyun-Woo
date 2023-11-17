<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %>
<%@ page import="com.kh.board.BoardDTO" %>
<%@ page import="com.kh.board.BoardDAO" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시물 업데이트</title>

</head>
<body>
<%

		//DAO 작업
			BoardDAO boardDAO = new BoardDAO();
	List<BoardDTO> boards = boardDAO.getAllBoards();
	
		for(BoardDTO b : boards) {
	%>


	<form action="/board/updateServlet" method="post">
	
	
				<label style="display: none;" for ="post_number"><%= b.getPost_number() %></label>
				<input style="display: none;" type = "text" id ="post_number" name="post_number" value=<%= b.getPost_number() %> required>
				<%
		
			}
		%>
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

				


	<input type ="submit" value="수정하기">


</form>

</body>
</html>