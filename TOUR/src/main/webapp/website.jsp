<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Document</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
	crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="website.css">

<style>

.top10 {
	margin-left: 15%;
	margin-right: 15%;
	width: 75%;
	height: 500px;
	margin-bottom: 25px;

}

img {
	
	margin-top: 30px;
	border-radius: 20px;
	filter: drop-shadow(10px 8px 8px #c3c3c3);
	

}




.mainImage {
    width: 1000px;
    height: 700px;
    margin-top: 500px;
    display: grid;
    grid-template-columns: repeat(2, 1fr);
    text-align: center;
}

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
	margin-left: 65%;
}

#dropdownContent {
	display: none;
	position: absolute;
	background-color: #f9f9f9;
	min-width: 150px;
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


.info {
	margin-left: 10%;
	margin-right: 10%;
}

.category_img {
	width: 500px;
	height: 300px;
}

#topMenu ul {
	
    display: flex;
    list-style: none;
    padding: 0;
    margin-bottom: 100px;

    
    
}

#topMenu li {
    margin-right: 0px;
   
    
}

.submenu,
.submenu2,
.submenu3 {
     display: flex;
    flex-direction: row; 
    position: absolute;
    top: 95%;
    left: 0;
    z-index: 1;
    display: none;
}

.submenu li,
.submenu2 li,
.submenu3 li {
    margin: 0.5px;
}

#topMenu li:hover .submenu,
#topMenu li:hover .submenu2,
#topMenu li:hover .submenu3 {
    display: flex;
}


.text {
	text-align: center;
	margin-top: 300px;
	color: #EE9CA7;
	font-size: 60px;
	

}




</style>


<body>
	<form action="LoginServlet" method="post">
        <input type="hidden" name="formAction" value="userInfoForm">
	
		<a href="mainpage.jsp" class="main_logo">
			<h1 style="display: inline-block;">
				떠나<span class="main_title2">조</span>
			</h1>
		</a> 
		<%
		String loggedIn = (String) session.getAttribute("user_id");
		%>

		<button type="button" id="dropdownBtn">
			<span>더보기</span>
			<div id="dropdownContent" style="display: none;">
				<a href="mainpage.jsp">메인페이지</a>

				<%
				if (loggedIn != null && !loggedIn.isEmpty()) {
				%>
				<a href="myPage/user-info.jsp">마이페이지</a>
				<%
				}
				%>
				<div id="citiesDropdown">
					<a href="#">도시 선택</a>
					<div id="citiesContent" style="display: none;">
						
					</div>
				</div>
				<%
				loggedIn = (String) session.getAttribute("user_id");

				if (loggedIn != null && !loggedIn.isEmpty()) {
				%>
				<a href="LoginServlet">로그아웃</a>
				<%
				} else {
				%>
				<a href="login.jsp">로그인</a>
				<%
				}
				%>
			
		</button>
		

		<div id="imageSlider">
			<a href=""><img src="../Image/오도리공원.jpg" class="top10"
				alt=""></a> <a href=""><img
				src="./main/Image/시로이코이비토 파크.jpg" class="top10" alt=""></a>
			<a href=""><img src="/main/Image/시로이코이비토 파크.jpg" class="top10"
				alt=""></a> <a href=""><img
				src="./Image/시로이코이비토 파크.jpg" class="top10" alt=""></a> <a
				href=""><img src="../Image/홋카이도 신궁.jpg"
				class="top10" alt=""></a>
				
		</div>
		<!-- Navbar End -->



		<!-- Header Start -->



		<!-- Header End -->



		<!-- Booking Start -->
		<nav id="topMenu">
			<ul>
				<li class="Menu"><a class="menuLink" href="">삿포로</a>
					<ul class="submenu">
						<li><a href="./city/Sapporo/spot/SapporoTourList.jsp" class="sub">관광지</a></li>
						<li><a href="./city/Sapporo/res/SapporoResList.jsp" class="sub">맛집</a></li>
						<li><a href="./city/Sapporo/acc/SapporoAccList.jsp" class="sub">숙박</a></li>
					</ul></li>

				<li class="Menu"><a class="menuLink" href="">도쿄</a>
					<ul class="submenu">
						<li><a href="./city/Tokyo/spot/TokyoTourList.jsp" class="sub">관광지</a></li>
						<li><a href="./city/Tokyo/res/TokyoResList.jsp" class="sub">맛집</a></li>
						<li><a href="./city/Tokyo/acc/TokyoAccList.jsp" class="sub">숙박</a></li>
					</ul></li>

				<li class="Menu"><a class="menuLink" href="">시즈오카</a>
					<ul class="submenu">
						<li><a href="./city/Shizuoka/spot/ShizuokaTourList.jsp" class="sub">관광지</a></li>
						<li><a href="./city/Shizuoka/res/ShizuokaResList.jsp" class="sub">맛집</a></li>
						<li><a href="./city/Shizuoka/acc/ShizuokaAccList.jsp" class="sub">숙박</a></li>
					</ul></li>

				<li class="Menu"><a class="menuLink">나고야</a>
					<ul class="submenu2">
						<li><a href="./city/Nagoya/spot/NagoyaTourList.jsp" class="sub">관광지</a></li>
						<li><a href="./city/Nagoya/res/NagoyaResList.jsp" class="sub">맛집</a></li>
						<li><a href="./city/Nagoya/acc/NagoyaAccList.jsp" class="sub">숙박</a></li>
					</ul></li>

				<li class="Menu"><a class="menuLink">교토</a>
					<ul class="submenu2">
						<li><a href="./city/Kyoto/spot/KyotoTourList.jsp" class="sub">관광지</a></li>
						<li><a href="./city/Kyoto/res/KyotoResList.jsp" class="sub">맛집</a></li>
						<li><a href="./city/Kyoto/acc/KyotoAccList.jsp" class="sub">숙박</a></li>
					</ul></li>

				<li class="Menu"><a class="menuLink">오사카</a>
					<ul class="submenu2">
						<li><a href="./city/Osaka/spot/OsakaTourList.jsp" class="sub">관광지</a></li>
						<li><a href="./city/Osaka/res/OsakaResList.jsp" class="sub">맛집</a></li>
						<li><a href="./city/Osaka/acc/OsakaAccList.jsp" class="sub">숙박</a></li>
					</ul></li>

				<li class="Menu"><a class="menuLink">후쿠오카</a>
					<ul class="submenu3">
						<li><a href="./city/Fukuoka/spot/FukuokaTourList.jsp" class="sub">관광지</a></li>
						<li><a href="./city/Fukuoka/res/FukuokaResList.jsp" class="sub">맛집</a></li>
						<li><a href="./city/Fukuoka/acc/FukuokaAccList.jsp" class="sub">숙박</a></li>
					</ul></li>

				<li class="Menu"><a class="menuLink">나가사키</a>
					<ul class="submenu3">
						<li><a href="./city/Nagasaki/spot/NagasakiTourList.jsp" class="sub">관광지</a></li>
						<li><a href="./city/Nagasaki/res/NagasakiResList.jsp" class="sub">맛집</a></li>
						<li><a href="./city/Nagasaki/acc/NagasakiAccList.jsp" class="sub">숙박</a></li>
					</ul></li>
					
					<li class="Menu"><a href="./board/boardList.jsp" class="menuLink">자유게시판</a>
					</li>


			</ul>
		</nav>


<div class="text">
			<div>
				<h2><b>미리보기</h2>
			
			</div>




</div>


		<!-- Blog Start -->
		
		
	<div class="mainImage">	
		<a href=""><img src="./main/Image/나카미세도리.jpg" class="top10"
				alt=""></a> <a href=""><img
				src="../main/Image/나카미세도리.jpg" class="top10" alt=""></a>
			<a href=""><img src="../Image/소메타로.jpg" class="top10"
				alt=""></a> <a href=""><img
				src="./Image/나카미세도리.jpg" class="top10" alt=""></a> <a
				href=""><img src="../Image/나카미세도리.jpg"
				class="top10" alt=""></a>
				<a href=""><img src="나카미세도리.jpg" class="top10" alt=""></a>
		
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
				setTimeout(showSlides, 3000); 
			}

			showSlides(); 
			
		
		
		</script>
	</form>

</body>
</html>