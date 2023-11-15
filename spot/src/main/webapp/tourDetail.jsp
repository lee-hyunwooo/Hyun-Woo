<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %>
<%@ page import="spot.Tour" %>
<%@ page import="spot.TourDAO" %>

<!DOCTYPE html>
<html>
<head>
<script src="./jquery-3.2.1.js"></script>
<script type="text/javascript" src = "./asd.js"></script>

<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	.popup-overlay {
		position: fixed;
		top: 0;
		left: 0;
		width: 100%;
		height: 100%;
		background-color: rgba(0, 0, 0, 0.5);
		display: flex;
		visibility: hidden;
		opacity: 0;
		transition: visibility 0s, opacity 0.3s ease;
	}
	.popup-background{
		position: fixed;
		top: 0;
		left: 0;
		width : 80%;
		height : 85%;
		background-color: white;
		margin-top: 4%;
	    margin-left: 9%;
	    border-radius: 20px;
	    box-shadow: 0px 40px 60px 0px rgba(0, 0, 0, 0.5);
	}
	.popup-content {
		width: 400px;
		padding: 20px;
		background-color: #fff;
		border-radius: 5px;
		box-shadow: 0 0 10px rgba(0, 0, 0, 0.3);
	}

	.popup-content form {
		display: flex;
		flex-direction: column;
		position: fixed;
	    top: 33%;
	    left: 67%;
	    border: 0;
	    margin-top: -244px;
	    margin-left: -325px;
	}


	.popup-content input[type="submit"]:hover {
		background-color: #303f9f;
	}
	.popup-content .close-btn {
		
		top: 10px;
		right: 10px;
		cursor: pointer; 
	}
	#inImage {
	position: fixed;
    top: 321px;
    left: 25%;
    border-radius: 20px;
    margin-top: -13%;
    margin-left: -17%;
    width : 40%;
    height: 85%;
	}
	p {
	margin-top: 10%;
	}
	
	img {
	width : 20%;
    height: 15%;
	}

</style>

</head>
<body>
	
	<table>
		
<% 
		TourDAO tourDAO = new TourDAO();
	List<Tour> tours = tourDAO.getAllTours();
	
	for (Tour t : tours) {
		
%>
		<tr>
		<td><%= t.getTour_name() %></td>

		console.log(<%= t.getTour_id() %>);


</table>
 
	
       
<img src="<%=t.getTour_img() %>" onclick="openPopup()"></img>
	
	<div id="popup" class="popup-overlay">
		<div class= "popup-background">
		<div class="popup-content">
			<span class="close-btn" onclick="closePopup()">&times;</span>





			<form>
				<img src="<%= t.getTour_img() %>" id="inImage">
				<br><br>
				<p>도시 이름 : <%= t.getCity_id()%></p> <br>
				<p>관광지 이름 : </p> <%= t.getTour_name()%><br>
				<p>관광지 주소 : </p> <%= t.getTour_location()%> <br>
				<p>관광지 전화번호 : </p><%= t.getTour_phone()%> <br>
				<p>운영시간 : </p> <%= t.getTour_time()%> <br>
				<p>좋아요 수 : </p> <%= t.getTour_like()%> <br>
				<p >관광지 정보 : </p>
				
	
				<input type="submit" value="">
			</form>
		</div>
	</div>
	</div>		

				<%
	}
%>



<script>
	function openPopup() {
		var popup = document.getElementById("popup");
		popup.style.visibility = "visible";
		popup.style.opacity = "1";
	}

	function closePopup() {
		var popup = document.getElementById("popup");
		popup.style.visibility = "hidden";
		popup.style.opacity = "0";
	}
</script> 
</body>
  
</html>