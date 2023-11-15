package spot;

import java.sql.Blob;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.Part;

public class TourDAO {
	private static final String jdbcURL = "jdbc:oracle:thin:@localhost:1521:xe";
	private static final String jdbcUsername = "TRAVEL";
	private static final String jdbcPassword = "TRAVEL1234";

	    public TourDAO() {
	        try {
	            Class.forName("oracle.jdbc.OracleDriver");
	        } catch (ClassNotFoundException e) {
	            e.printStackTrace();
	        }
	    }

	    public List<Tour> getAllTours() {
	    	List<Tour> tours = new ArrayList<>();
	        try {
	            Connection connection = DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPassword);
	            String sql = "SELECT * FROM tour";
	            PreparedStatement ps = connection.prepareStatement(sql);
	            ResultSet rs = ps.executeQuery();
	            while (rs.next()) {
	              
	                int tour_id = rs.getInt("tour_id");
	                String user_id = rs.getString("user_id");
	                int city_id = rs.getInt("city_id");
	                String tour_name = rs.getString("tour_name");
	                String tour_location = rs.getString("tour_location");
	                String tour_phone = rs.getString("tour_phone");
	                String tour_time = rs.getString("tour_time");
	                String tour_date = rs.getString("tour_date");
	                String tour_comment = rs.getString("tour_comment");
	                
	                Blob blob = rs.getBlob("tour_img");
	                 byte[] imageBytes = blob.getBytes(1, (int) blob.length());

	                 String imageBase64 = java.util.Base64.getEncoder().encodeToString(imageBytes);
	                 String tour_img = ("data:image/jpeg;base64, " + imageBase64);
	                 
	                 Tour tour =new Tour(tour_id,user_id,city_id,tour_name,tour_location,tour_phone,tour_time,tour_date,tour_comment, tour_img);
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
	    
	    
	    
	    
	    public void insertTour(Tour tour) {
	        try {
	            Connection conn = DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPassword);
	            String sql = "INSERT INTO TOUR(TOUR_ID, USER_ID, CITY_ID, TOUR_NAME, TOUR_LOCATION, TOUR_PHONE, TOUR_TIME, TOUR_DATE, TOUR_COMMENT, TOUR_IMG)"
	                    + "VALUES(?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
	            PreparedStatement ps = conn.prepareStatement(sql);

	            ps.setInt(1, tour.getTour_id());
	            ps.setString(2, tour.getUser_id());
	            ps.setInt(3, tour.getCity_id());
	            ps.setString(4, tour.getTour_name());
	            ps.setString(5, tour.getTour_location());
	            ps.setString(6, tour.getTour_phone());
	            ps.setString(7, tour.getTour_time());
	            ps.setTimestamp(8, new Timestamp(System.currentTimeMillis()));
	            ps.setString(9, tour.getTour_comment());
	            //ps.setBlob(10, tour.getTour_img().getBinaryStream(), tour.getTour_img().length());

	            ps.executeUpdate();
	        } catch (SQLException e) {
	            e.printStackTrace();
	        }
	    }
	}