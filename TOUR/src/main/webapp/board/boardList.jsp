<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %>
<%@ page import="com.kh.board.BoardDAO" %>
<%@ page import="com.kh.board.BoardDTO" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판 메인</title>
</head>
<body>

	<table border="1">
	<!-- 메인 내 공간정리 -->
		<colgroup>
			<col width="15%">
			<col width="15%">
			<col width="*">
			<col width="10%">
		</colgroup>
		<tr>
			<td>도시이름</td>
			<td>카테고리</td>
			<td>제목</td>
			<td>작성날짜</td>
		</tr>
	<%
		BoardDAO boardDAO = new BoardDAO();
	List<BoardDTO> boards = boardDAO.getAllBoards();
	
		for(BoardDTO b : boards) {
	%>
	<tr>	<!-- ? 에 클릭하는 POST_NUMBER가 들어간다 -->
		<td><%= b.getCity_name() %></td>
		<td> <%= b.getCategory() %>	</td>	
		<td> <a href="boardDetail.jsp?post_number=<%=b.getPost_number()%>"> <%= b.getTitle() %> </a></td>
		<td> <%= b.getPost_time() %> </td>
		</tr>
		
		
		
			
		<%
		
			}
		%>
   </table>
   <a href="board_write.jsp">글쓰기</a>
   
   
   
   
   
   
   
   
   
</body>
</html>