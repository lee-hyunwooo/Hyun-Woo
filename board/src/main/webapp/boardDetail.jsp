<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %>
<%@ page import="board.BoardDTO" %>
<%@ page import="board.BoardDAO" %>
<%@ page import = "board.BoardComment" %>
<%@ page import = "java.util.ArrayList" %>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시물 보기</title>
</head>
<body>
  	<%
		//String = id 값을 가지고 오겠다.
		String post_numberValue = request.getParameter("post_number");
		int post_number = Integer.parseInt(post_numberValue);
		//DAO 작업
			BoardDTO bd = new BoardDAO().getBoard(post_number);
	

	%>
 

작성자 :	 <%= bd.getUser_id() %><br>
작성날짜 :	 <%= bd.getPost_time() %><br>
도시이름 :  <%= bd.getCity_name() %><br>
카테고리 :	 <%= bd.getCategory() %><br>
제목 : 	 <%= bd.getTitle() %><br>
내용 :  	 <%= bd.getContent() %><br>
			

<a href="boardDelete.jsp">삭제하기</a>
<a href="update_board.jsp">수정하기</a>
<a href="review.jsp"><img src="./1.jpeg"></a>

		
			
		
</body>	
 <!--  댓글 목록 표시 -->
   
    
    <!--  댓글 추가 폼 작성! -->
    <form action="AddCommentServlet" method="post">
    
    	<input type=text name="user_id" value=><br>
    	
    	<label for = "User_id"> 이름 : </label>
    	<input type="text" name="User_id" required>
    	<br>
    	
    	<label for="commentText"> 댓글 내용 : </label>
    	<textarea name="commentText" required></textarea>
    	<br>
    	
    	<input type="submit" value="댓글추가">
    </form>
</html>