package spot;

import java.io.IOException;
import java.sql.Blob;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import org.apache.catalina.connector.Response;

/**
 * Servlet implementation class TourServlet
 */
@WebServlet("/TourServlet")
@MultipartConfig 

public class TourServlet extends HttpServlet {
	private static final String jdbcURL = "jdbc:oracle:thin:@localhost:1521:xe";
	private static final String jdbcUsername = "TRAVEL";
	private static final String jdbcPassword = "TRAVEL1234";
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		Connection connection = null;
		try {
		Class.forName("oracle.jdbc.OracleDriver");
	} catch (ClassNotFoundException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
		try {
			Connection conn = DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPassword);
			
			//sql
			String sql = "SELECT tour_img FROM tour";
			
			PreparedStatement ps = conn.prepareStatement(sql);
			
			ResultSet rs = ps.executeQuery();
			
			while(rs.next()) {
				//Result image 해당하는 데이터를 가지고와서 blob 저장
				//blob 을 쓴 이유는 우리가 image 데이터를 sql에서 blob에 저장해준다고
				//지정 해줬기 때문에 blob 객체를 가지고 온 것
				Blob blob = rs.getBlob("tour_img");
				//blob 같은 경우 파일이기 때문에 파일을 쪼개고 쪼개서
				//byte 타입으로 읽은 다음 배열에 읽은 byte들을 모두 저장
				//getBytes(1, (int) blob.length()) : 1부터 끝까지 가지고 온다는 것
				//getBytes(시작,종료) 
				byte[] imageData = blob.getBytes(1, (int) blob.length());
				//setContentType("image/jpeg") : 파일 형식이 image 임을 나타냄
				response.setContentType("image/jpeg");
				response.getOutputStream().write(imageData);
			}
			
		
		
		
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	public List<Tour> getAllTours() {
        List<Tour> tours = new ArrayList<>();
        try {
            Connection connection = DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPassword);
            String sql = "SELECT * FROM tour";
            Tour tour = null;
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                tour = new Tour();
                tour.setTour_id(rs.getInt("tour_id"));
                tour.setUser_id(rs.getString("user_id"));
                tour.setCity_id(rs.getInt("city_id"));
                tour.setTour_name(rs.getString("tour_name"));
                tour.setTour_location(rs.getString("tour_location"));
                tour.setTour_phone(rs.getString("tour_phone"));
                tour.setTour_time(rs.getString("tour_time"));
                tour.setTour_date(rs.getString("tour_date"));
                tour.setTour_comment(rs.getString("tour_comment"));
                tour.setTour_img(rs.getString("tour_img"));
                tours.add(tour);
            }
            
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return tours;
    }
	
	
		
	public Tour getTour(int tour_id) {
    	Tour tour = null;
    	
    	try {
			Connection connection = DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPassword);
			String sql = "SELECT USER_ID, CITY_ID, TOUR_NAME, TOUR_LOCATION, TOUR_PHONE, TOUR_TIME, TOUR_DATE, TOUR_COMMENT  FROM boards WHERE post_number = ?";
			PreparedStatement ps = connection.prepareStatement(sql);
			ps.setInt(1, tour_id);
			ResultSet rs = ps.executeQuery();
			if(rs.next()) {
				tour = new Tour();
				tour.setUser_id(rs.getString("user_id"));
				tour.setCity_id(rs.getInt("city_id"));
				tour.setTour_name(rs.getString("tour_name"));
				tour.setTour_location(rs.getString("tour_location"));
				tour.setTour_phone(rs.getString("tour_phone"));
				tour.setTour_time(rs.getString("tour_time"));
				tour.setTour_date(rs.getString("tour_date"));
				tour.setTour_comment(rs.getString("tour_comment"));
			}
			
    	
    	} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
    	
    	return tour;
    }
	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		try {
			Class.forName("oracle.jdbc.OracleDriver");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
			
		
		try {
			Connection conn = DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPassword);
			
			int tour_id = Integer.parseInt(request.getParameter("tour_id"));
		    
		    int city_id = Integer.parseInt(request.getParameter("city_id"));
		   
			
			
			String user_id = request.getParameter("user_id");
			String tour_name = request.getParameter("tour_name");
			String tour_location = request.getParameter("tour_location");
			String tour_phone = request.getParameter("tour_phone");
			String tour_time = request.getParameter("tour_time");
			String tour_date = request.getParameter("tour_date");
			String tour_comment = request.getParameter("tour_comment");
			Part tour_img = request.getPart("tour_img");
			
			
			String sql = "INSERT INTO TOUR(tour_id, user_id, city_id, tour_name, tour_location, tour_phone, tour_time, tour_date, tour_comment,tour_img)"
					+ "VALUES(?,?,?,?,?,?,?,?,?,?)";
			PreparedStatement ps = conn.prepareStatement(sql);
			
			ps.setInt(1, tour_id);
			ps.setString(2, user_id);
			ps.setInt(3, city_id);
			ps.setString(4, tour_name);
			ps.setString(5, tour_location);
			ps.setString(6, tour_phone);
			ps.setString(7, tour_time);
			ps.setTimestamp(8, new Timestamp(new Date().getTime()));
			ps.setString(9,tour_comment);
			ps.setBinaryStream(10, tour_img.getInputStream(),(int) tour_img.getSize());
			
			ps.executeUpdate();
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
			
		
	}
}
