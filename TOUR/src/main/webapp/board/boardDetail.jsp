<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %>
<%@ page import="com.kh.board.BoardDTO" %>
<%@ page import="com.kh.board.BoardDAO" %>
<%@ page import = "com.kh.board.BoardComment" %>
<%@ page import = "java.util.ArrayList" %>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시물 보기</title>
</head>
<body>
<form action="/board/deleteServlet" method="post">
  	<%
  	BoardComment bc = null;
		
	String user_id = (String) session.getAttribute("user_id");
	String post_numberValue = request.getParameter("post_number");
	
	int post_number = Integer.parseInt(post_numberValue);
	
	BoardDTO bd = new BoardDAO().getBoard(post_number);
	ArrayList<BoardComment> reviewList = new BoardDAO().getCommentsByProductId(post_number);

	%>
 

작성자 :	 <%= bd.getUser_id() %><br>
작성날짜 :	 <%= bd.getPost_time() %><br>
도시이름 :  <%= bd.getCity_name() %><br>
카테고리 :	 <%= bd.getCategory() %><br>
제목 : 	 <%= bd.getTitle() %><br>
내용 :  	 <%= bd.getContent() %><br>


		
		<input type = "text" id ="post_number" name="post_number" value="<%= post_number %>" style="display: none;">
		<input type ="submit" value="삭제하기">
		
	</form>
	

<a href="update_board.jsp">수정하기</a>
<a href="review.jsp"><img src="./1.jpeg"></a>


	    	
  	    
	    	
  	    
         
		<%
			String review_writer =	request.getParameter("review_writer");
			String review_content = request.getParameter("review_content");
			
			System.out.println("user_id : " + user_id);
	    %>
	    	
  	    <form action="/board/AddCommentServlet" method="post">
        	<input type="text" name="user_id" value="<%= user_id  != null ? user_id  : ""%>"><br>
			
            <label for="review_writer"> 이름 : </label>
            <input type="text" name="review_writer" required><br>
            <label for="review_content"> 댓글 내용 : </label>
            <textarea name="review_content" required></textarea><br>
            <input type="submit" value="댓글추가">
         </form>
         
		<%
			// 게시물에 댓글이 존재한다면 댓글 목록을 가져오기
			//if(session.getAttribute("review_number") != null) {
				System.out.println("reviewList.size() : " + reviewList.size());
				if(reviewList.size() > 0){
				// 댓글 목록을 순회하면서 출력
				for (BoardComment comment : reviewList) {
		%>
				<div>
					<p>작성자: <%= comment.getUser_id() %></p>
					<p>내용: <%= comment.getReview_content() %></p>
					<p>작성일시: <%= comment.getReview_date() %></p>
				</div>
		<%
		    	}
			} else {
		%>
			<p>not used review</p>
		<%
			}
			
		%>
         
	</body>	
	 <!--  댓글 목록 표시 -->
   
    

                
</html>