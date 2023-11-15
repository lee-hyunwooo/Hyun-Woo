import java.io.IOException;
import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.time.LocalDateTime;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// JDBC �ҷ�����
		
		String jdbcURL = "jdbc:oracle:thin:@localhost:1521:xe";
		String jdbcUsername = "TRAVEL";
		String jdbcPassword = "TRAVEL1234";
		try {
			Class.forName("oracle.jdbc.OracleDriver");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		try {
			Connection connection = DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPassword);
		
			//�ְ����ϴ� DB �� ����
			/*
			 * CREATE TABLE MemberInfo (
				    MNO INT PRIMARY KEY,
				    MName VARCHAR(50),
				    MEmail VARCHAR(100),
				    MBirth  DATE
			);*/
				String user_id = request.getParameter("user_id");
	            String user_pw = request.getParameter("user_pw");
	            String user_email = request.getParameter("user_email");
	            String user_phone = request.getParameter("user_phone");
	            String user_name = request.getParameter("user_name");
	            String user_sex = request.getParameter("user_sex");
	            String user_age = request.getParameter("user_age");
	            String user_date = request.getParameter("user_date");
	            
			
			//ȸ������ insert 
	            String sql = "INSERT INTO User_Info (user_id, user_pw, user_email, user_phone, user_name,user_sex,user_age, user_date) VALUES (?, ?, ?, ?, ?, ?, ?, ?)";
	            PreparedStatement preparedStatement = connection.prepareStatement(sql);
	            preparedStatement.setString(1, user_id);
	            preparedStatement.setString(2, user_pw);
	            preparedStatement.setString(3, user_email);
	            preparedStatement.setString(4, user_phone);
	            preparedStatement.setString(5, user_name);
	            preparedStatement.setString(6, user_sex);
	            preparedStatement.setString(7, user_age);
	            preparedStatement.setTimestamp(8,new Timestamp(System.currentTimeMillis())); 
	      
	        
	            

	            preparedStatement.executeUpdate();
			
			
	            request.getSession().setAttribute("user_id", user_id);
	            request.getSession().setAttribute("user_pw", user_pw);
	            request.getSession().setAttribute("user_email", user_email);
	            request.getSession().setAttribute("user_phone", user_phone);
	            request.getSession().setAttribute("user_name", user_name);
	            request.getSession().setAttribute("user_sex", user_sex);
	            request.getSession().setAttribute("user_age", user_age);
		
			
			response.sendRedirect("register_success.jsp");
			
		} catch (SQLException e) {
			
			response.sendRedirect("register_error.jsp");
			e.printStackTrace();
		}
	}


}