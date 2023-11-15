package board;

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
		//jsp 폼에서 전송한 데이터 가지고오기!
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
		
		
		
		
		//ProductComment 객체 생성
												// 0의 경우 무결성 제약 걸릴 것, 시퀀스 이용해서 NEXTVAL 들어갈 수 있어야함
												// productId 경우 기본 값으로 지정해줘야함 input이 아니라 p나 다른 값으로 넣어준 후
												//hidden 이용해서 숨기기
		BoardComment comment= new BoardComment(user_id, review_content, review_writer, review_number,POST_NUMBER,review_date,review_like);
		

		//ProductDAO를 사용해서 댓글 추가 
		BoardDAO boardDAO = new BoardDAO();
		boardDAO.addComment(comment);
		
		//댓글 추가 한다음 상세페이지로 다시 전송하는 리다이렉트 작성해주기
		response.sendRedirect("boardDetail.jsp?productId=" + user_id);
	}

}
