<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Document</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
	crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="website.css">

<style>
.main_logo {
	color: #7AB730;
	text-decoration-line: none;
	font-size: 25px;
	margin-left: 15%;
}

.main_title2 {
	color: black;
}

#dropdownBtn {
	display: inline-block;
	position: relative;
	margin-left: 60%;
}

#dropdownContent {
	display: none;
	position: absolute;
	background-color: #f9f9f9;
	min-width: 160px;
	box-shadow: 0px 8px 16px 0px rgba(0, 0, 0, 0.2);
	z-index: 1;
}

#dropdownContent a {
	color: black;
	padding: 12px 16px;
	text-decoration: none;
	display: block;
}

#dropdownContent a:hover {
	background-color: #f1f1f1;
}

.mid_row1 {
	display: inline-block;
	text-decoration-line: none;
	color: #7AB730;
	font-size: 20px;
}

.mid_row2 {
	border: 1px solid #ccc;
	height: 70px;
	padding: 15px;
	text-align: center;
}

.search {
	justify-content: space-between;
	align-items: center;
	padding: 8px;
	margin-top: 5%;
	margin-bottom: 5%;
}

.info {
	margin-left: 10%;
	margin-right: 10%;
}

.category_img {
	width: 500px;
	height: 300px;
}
</style>
<body>
	<form action="LoginServlet" method="post">
        <input type="hidden" name="formAction" value="userInfoForm">
	
		<a href="mainpage.jsp" class="main_logo">
			<h1 style="display: inline-block;">
				����<span class="main_title2">��</span>
			</h1>
		</a> 
		<%
		String loggedIn = (String) session.getAttribute("user_id");
		%>

		<button type="button" id="dropdownBtn">
			<span>������</span>
			<div id="dropdownContent" style="display: none;">
				<a href="mainpage.jsp">����������</a>

				<%
				if (loggedIn != null && !loggedIn.isEmpty()) {
				%>
				<a href="myPage/user-info.jsp">����������</a>
				<%
				}
				%>
				<div id="citiesDropdown">
					<a href="#">���� ����</a>
					<div id="citiesContent" style="display: none;">
						<a href="#">����</a> <a href="#">������Ű</a> <a href="#">�����</a> <a
							href="#">����</a> <a href="#">������</a> <a href="#">�����ī</a> <a
							href="#">����ī</a> <a href="#">�����ī</a>
					</div>
				</div>
				<%
				loggedIn = (String) session.getAttribute("user_id");

				if (loggedIn != null && !loggedIn.isEmpty()) {
				%>
				<a href="LoginServlet">�α׾ƿ�</a>
				<%
				} else {
				%>
				<a href="login.jsp">�α���</a>
				<%
				}
				%>
			
		</button>

		<div id="imageSlider">
			<a href=""><img src="./������/4. ���� Ÿ��/4. ���� Ÿ��/3.jpg" class="top10"
				alt=""></a> <a href=""><img
				src="../����ī/������/3. ����ī ��/3. ����ī ��/1.jpg" class="top10" alt=""></a>
			<a href=""><img src="./������/9. ���쿪/9. ���쿪/1.jpg" class="top10"
				alt=""></a> <a href=""><img
				src="../����ī/������/9. ���溸��/9. ���溸��/1.jpg" class="top10" alt=""></a> <a
				href=""><img src="../����ī/������/1. ���Ϲ���/1. ���Ϲ���/3.jpg"
				class="top10" alt=""></a>
		</div>
		<!-- Navbar End -->


		<!-- Header Start -->


		<!-- Header End -->



		<!-- Booking Start -->
		<nav id="topMenu">
			<ul>
				<li class="Menu"><a class="menuLink" href="">������</a>
					<ul class="submenu">
						<li><a href="#" class="sub">������</a></li>
						<li><a href="#" class="sub">����</a></li>
						<li><a href="#" class="sub">����</a></li>
					</ul></li>

				<li class="Menu"><a class="menuLink" href="">����</a>
					<ul class="submenu">
						<li><a href="./tokyo_tour.html" class="sub">������</a></li>
						<li><a href="./tokyo_food.html" class="sub">����</a></li>
						<li><a href="./tokyo_accomodation.html" class="sub">����</a></li>
					</ul></li>

				<li class="Menu"><a class="menuLink" href="">�����ī</a>
					<ul class="submenu">
						<li><a href="" class="sub">������</a></li>
						<li><a href="" class="sub">����</a></li>
						<li><a href="" class="sub">����</a></li>
					</ul></li>

				<li class="Menu"><a class="menuLink">�����</a>
					<ul class="submenu2">
						<li><a href="" class="sub">������</a></li>
						<li><a href="" class="sub">����</a></li>
						<li><a href="" class="sub">����</a></li>
					</ul></li>

				<li class="Menu"><a class="menuLink">����</a>
					<ul class="submenu2">
						<li><a href="" class="sub">������</a></li>
						<li><a href="" class="sub">����</a></li>
						<li><a href="" class="sub">����</a></li>
					</ul></li>

				<li class="Menu"><a class="menuLink">����ī</a>
					<ul class="submenu2">
						<li><a href="../����ī/osaka_tour.html" class="sub">������</a></li>
						<li><a href="../����ī/osaka_food.html" class="sub">����</a></li>
						<li><a href="../����ī/osaka_accomodation.html" class="sub">����</a></li>
					</ul></li>

				<li class="Menu"><a class="menuLink">�����ī</a>
					<ul class="submenu3">
						<li><a href="" class="sub">������</a></li>
						<li><a href="" class="sub">����</a></li>
						<li><a href="" class="sub">����</a></li>
					</ul></li>

				<li class="Menu"><a class="menuLink">������Ű</a>
					<ul class="submenu3">
						<li><a href="" class="sub">������</a></li>
						<li><a href="" class="sub">����</a></li>
						<li><a href="" class="sub">����</a></li>
					</ul></li>

			</ul>
		</nav>

		<!-- Search Form -->
		<div class="search" style="text-align: center;">
			<input type="text" class="" placeholder="�˻�"
				style="display: inline-block;">
			<button type="button" id="searchButton">
				<span>�˻�</span>
			</button>
		</div>
		<!-- Booking End -->


		<!-- Blog Start -->
		<div class="container px-4 text-center">
			<div class="row gx-5">
				<div class="col">
					<div class="p-3">
						<div class="">
							<a href=""><img class="category_img"
								src="../����/����/1. �������� ȣ��/�ܰ�.webp" alt=""></a>
							<div class=""></div>
						</div>
						<div class="">
							<div class="">
								<h6>���� |</h6>
							</div>
							<a class="h5 m-0 text-decoration-none" href="">�������� ȣ��</a>
						</div>
					</div>
				</div>
				<div class="col">
					<div class="p-3">
						<div class="">
							<a href=""><img class="category_img"
								src="../����/����/2. ������ ����/�ܰ�.webp" alt=""></a>
							<div class=""></div>
						</div>
						<div class="">
							<div class="">
								<h6>���� |</h6>
							</div>
							<a class="h5 m-0 text-decoration-none" href="">������ ����</a>
						</div>
					</div>
				</div>

			</div>
			<div class="row gx-5">
				<div class="col">
					<div class="p-3">
						<div class="">
							<a href=""><img class="category_img"
								src="../����/����/3. ��ť ������/����.webp" alt=""></a>
							<div class=""></div>
						</div>
						<div class="">
							<div class="">
								<h6>���� |</h6>
							</div>
							<a class="h5 m-0 text-decoration-none" href="">��ť ������</a>
						</div>
					</div>
				</div>
				<div class="col">
					<div class="p-3">
						<div class="">
							<a href=""><img class="category_img"
								src="../����/����/4. ���̽�����/�ܰ�.webp" alt=""></a>
							<div class=""></div>
						</div>
						<div class="">
							<div class="">
								<h6>���� |</h6>
							</div>
							<a class="h5 m-0 text-decoration-none" href="">���̽�����</a>
						</div>
					</div>
				</div>

			</div>
			<div class="row gx-5">
				<div class="col">
					<div class="p-3">
						<div class="">
							<a href=""><img class="category_img"
								src="../����/����/5. ��ĭ ���𰡿�/����.avif" alt=""></a>
							<div class=""></div>
						</div>
						<div class="">
							<div class="">
								<h6>���� |</h6>
							</div>
							<a class="h5 m-0 text-decoration-none" href="">��ĭ ���𰡿�</a>
						</div>
					</div>
				</div>
				<div class="col">
					<div class="p-3">
						<div class="">
							<a href=""><img class="category_img"
								src="../����/����/6. ���ν�Ÿ�� ��ĭ/�ܰ�.webp" alt=""></a>
							<div class=""></div>
						</div>
						<div class="">
							<div class="">
								<h6>���� |</h6>
							</div>
							<a class="h5 m-0 text-decoration-none" href="">���ν�Ÿ�� ��ĭ</a>
						</div>
					</div>
				</div>

			</div>
			<div class="row gx-5">
				<div class="col">
					<div class="p-3">
						<div class="">
							<a href=""><img class="category_img"
								src="../����/����/7. ������ ��ĭ �ƻ����/�ܰ�.webp" alt=""></a>
							<div class=""></div>
						</div>
						<div class="">
							<div class="">
								<h6>���� |</h6>
							</div>
							<a class="h5 m-0 text-decoration-none" href="">��ġ�� ��ĭ</a>
						</div>
					</div>
				</div>
				<div class="col">
					<div class="p-3">
						<div class="">
							<a href=""><img class="category_img"
								src="../����/����/8. omo5/�ܰ�.webp" alt=""></a>
							<div class=""></div>
						</div>
						<div class="">
							<div class="">
								<h6>���� |</h6>
							</div>
							<a class="h5 m-0 text-decoration-none" href="">omo5</a>
						</div>
					</div>
				</div>

			</div>
			<div class="row gx-5">
				<div class="col">
					<div class="p-3">
						<div class="">
							<a href=""><img class="category_img"
								src="../����/����/9. ����Ʈ/�ܰ�.webp" alt=""></a>
							<div class=""></div>
						</div>
						<div class="">
							<div class="">
								<h6>���� |</h6>
							</div>
							<a class="h5 m-0 text-decoration-none" href="">����Ʈ</a>
						</div>
					</div>
				</div>
				<div class="col">
					<div class="p-3">
						<div class="">
							<a href=""><img class="category_img"
								src="../����/����/10. �� ����Ʈ/�ܰ�.jpg" alt=""></a>
							<div class=""></div>
						</div>
						<div class="">
							<div class="">
								<h6>���� |</h6>
							</div>
							<a class="h5 m-0 text-decoration-none" href="">�� ����Ʈ</a>
						</div>
					</div>
				</div>

			</div>

		</div>


		<script>
			var dropdownBtn = document.getElementById("dropdownBtn");
			var dropdownContent = document.getElementById("dropdownContent");

			dropdownBtn.addEventListener("click", function() {
				if (dropdownContent.style.display === "none"
						|| dropdownContent.style.display === "") {
					dropdownContent.style.display = "block";
				} else {
					dropdownContent.style.display = "none";
				}
			});

			document.addEventListener("click", function(event) {
				if (event.target !== dropdownBtn
						&& event.target !== dropdownContent) {
					dropdownContent.style.display = "none";
				}
			});

			let slideIndex = 0;
			const images = document.querySelectorAll('#imageSlider img');

			function showSlides() {
				for (let i = 0; i < images.length; i++) {
					images[i].style.display = 'none';
				}
				slideIndex++;
				if (slideIndex > images.length) {
					slideIndex = 1;
				}
				images[slideIndex - 1].style.display = 'block';
				setTimeout(showSlides, 3000); // Change image every 2 seconds (2000 milliseconds)
			}

			showSlides(); // Start the image slider
		</script>
	</form>

</body>
</html>