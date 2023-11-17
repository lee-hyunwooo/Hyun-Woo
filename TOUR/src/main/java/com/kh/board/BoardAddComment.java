package com.kh.board;

import java.io.IOException;
import java.sql.Timestamp;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/AddCommentServlet")
public class BoardAddComment extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int review_number = Integer.parseInt(request.getParameter("review_number"));
		int POST_NUMBER = Integer.parseInt(request.getParameter("POST_NUMBER"));
		int review_date = Integer.parseInt(request.getParameter("review_date"));
		int review_like = Integer.parseInt(request.getParameter("review_like"));
		
		
		String user_id = request.getParameter("user_id");
		String review_content = request.getParameter("review_content");
		String review_writer = request.getParameter("review_writer");
		
		
	
		
		/*
		 * String user_id;
	private	 String review_content;
	private  String review_writer;
	private  int review_number;
	private int POST_NUMBER;
	private int review_date;
	private int review_like;
		 * */
		
		
		
		
		BoardComment comment= new BoardComment(user_id, review_content, review_writer, review_number,POST_NUMBER,review_date,review_like);
		

		BoardDAO boardDAO = new BoardDAO();
		boardDAO.addComment(comment);
		
		response.sendRedirect("boardDetail.jsp?productId=" + user_id);
	}

}
