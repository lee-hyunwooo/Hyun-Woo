<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %>
<%@ page import="com.kh.city.Nagasaki.acc.NagasakiAcc" %>
<%@ page import="com.kh.city.Nagasaki.acc.NagasakiAccDAO" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="EUC-KR">
    <title>Insert title here</title>
    <style>
        /* Style for the image slider container */
        
        h1{
        	background: red;
        	text-align:center;
        	
        	padding: 80px;
        
        
        }
        .image-slider {
            max-width: 1000px;
            margin-left: 10%;
            margin-top: 10%;
            overflow: hidden;
            height: 1000px; /* Set a fixed height for the container */
            position: relative; /* Add relative positioning for absolute positioning of images */
      		filter: drop-shadow(10px 10px 10px rgba(0, 0, 0, 0.5));
        }

        /* Style for the individual images */
        .image-slider img {
            width : 600px;
            height : 600px;
            position: absolute;
            top: 0;
            left: 0;
            opacity: 0; /* Start with opacity 0 */
            transition: opacity 1s ease-in-out; /* Add a smooth transition effect */
            max-width: 200%;
            max-height: 1000px;
            border-radius: 20px;
             /* Adjust the shadow color and size */
        }

        /* Show the first image by default */
        .image-slider img:first-child {
            opacity: 1;
        }
        
       
    </style>
</head>
<body>
	
    <% 
        String acc_idValue = request.getParameter("acc_id");
        int acc_id = Integer.parseInt(acc_idValue);
        NagasakiAcc ad = new NagasakiAccDAO().getAcc(acc_id);
    %>
    <h1><%= ad.getAcc_name() %>관광지상세정보</h1>

    <!-- Create a container for the images -->
    <div class="image-slider">
    <img src="<%= ad.getAcc_img1() %>" width="800" height="600">
    <img src="<%= ad.getAcc_img2() %>" width="800" height="600">
    <img src="<%= ad.getAcc_img3() %>" width="800" height="600">
    </div>

    <p>도시 이름: <%= ad.getCity_id()%> </p>
    <p>관광지 이름: <%= ad.getAcc_name()%></p>
    <p>관광지 주소: <%= ad.getAcc_location()%></p>
    <p>관광지 전화번호: <%= ad.getAcc_phone()%></p>
    <p>운영시간: <%= ad.getAcc_time()%></p>
    <p>관광지 정보:</p>

    <script>
        // JavaScript to handle the image slider
        document.addEventListener('DOMContentLoaded', function () {
            // Get all images and the slider container
            var images = document.querySelectorAll('.image-slider img');
            var currentIndex = 0;

            // Function to handle the image slider
            function startImageSlider() {
                setInterval(function () {
                    // Fade out the current image
                    images[currentIndex].style.opacity = 0;

                    // Move to the next image or go back to the first one
                    currentIndex = (currentIndex + 1) % images.length;

                    // Fade in the next image
                    images[currentIndex].style.opacity = 1;
                }, 3000); // Change image every 3 seconds (adjust as needed)
            }

            // Call the image slider function
            startImageSlider();
        });
    </script>
</body>
</html>