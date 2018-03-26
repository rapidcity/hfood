<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR" %>
<!DOCTYPE HTML>
<!--
	Halcyonic by HTML5 UP
	html5up.net | @ajlkn
	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html>
	<head>
		<title>Two Column 2 - Halcyonic by HTML5 UP</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1" />
		<!--[if lte IE 8]><script src="assets/js/ie/html5shiv.js"></script><![endif]-->
		<link rel="stylesheet" href="assets/css/main.css" />
		<!--[if lte IE 9]><link rel="stylesheet" href="assets/css/ie9.css" /><![endif]-->
	</head>
	<body class="subpage">
		<div id="page-wrapper">

			<!-- Header -->
				<div id="header-wrapper">
					<header id="header" class="container">
						<div class="row">
							<div class="12u">

							<!-- header menu -->
							<jsp:include page="./inc_menu.jsp" flush="true"></jsp:include>

							</div>
						</div>
					</header>
				</div>

			<!-- Content -->
				<div id="content-wrapper">
					<div id="content">
						<div class="container">
							<div class="row">
								<div class="3u 12u(mobile)">

									<!-- Sidebar -->
									<jsp:include page="./inc_left_menu_members.jsp" flush="true"></jsp:include>

								</div>
								<div class="9u 12u(mobile) important(mobile)">

									<!-- Main Content -->
										<section>
											<header>
												<h2>Dears, Jeonpo5 Area Members #2</h2>
												<h3>Apt Development, ... </h3>
											</header>
											<p>
												<br>
												<%
													String proc = "";
													proc = request.getParameter("proc");		// 1:Naver Band, 2:Naver Cafe
													
													if(proc.equals("1"))
													{
												%>
													<iframe width="860" height="800" src="http://band.us/@jeonpo" frameborder="0" allowfullscreen></iframe>												
												<%
												} else if(proc.equals("2")) {
												%>
													<iframe width="800" height="800" src="http://cafe.naver.com/pinkaxglf" frameborder="0" allowfullscreen></iframe>
												<%
												} else if(proc.equals("3")) {	// 한양수자인 홍보영상
												%>
													<p>
													한양수자인 홍보영상 .. Since 2016.04.10
													<br>※ 오래된 영상이므로 현재와 내용이 다를 수 있습니다.<br><br>
													</p>
													
													<iframe width="800" height="600" src="https://www.youtube.com/embed/m5ljHTMojF0" frameborder="0" allowfullscreen></iframe>
												<%
												} else if(proc.equals("4")) {
												%>
													<p>
													지역주택조합 알고가자!
													</p>
																	
													1. 지역주택조합 정확하게 알고 시작하자
													<br>
													<iframe width="560" height="315" src="https://www.youtube.com/embed/sgUKFd5TLkE?start=10" frameborder="0" allowfullscreen></iframe>
													<br><br>	
													
													2. 서민 울리는 지역주택조합
													<br>
													<iframe width="560" height="315" src="https://www.youtube.com/embed/jsq4q5Y7_j0" frameborder="0" allowfullscreen></iframe>
													<br><br>
													
													3. 지역주택조합의 득과 실
													<br>
													<iframe width="560" height="315" src="https://www.youtube.com/embed/gObCIp5GE-g?start=10" frameborder="0" allowfullscreen></iframe>
													<br><br>

												<%
												} else if(proc.equals("5")) {
												%>
													<p>
													부산 인근 아파트 소식
													</p>
													
													부산시민공원 센트럴 아이파크(촉진3구역 재개발) - 현대산업개발 홍보영상
													<br>
													<video id="video" width="800" height="600" controls="controls">
														<source src="../movies/2017_siminpark_hyundai.mp4" type="video/mp4" />
													</video>
													<br><br>

													부산시민공원 센트럴 아이파크(촉진3구역 재개발) - 롯데건설 홍보영상
													<br>
													<video id="video" width="800" height="600" controls="controls">
														<source src="../movies/2017_siminpark_lotte.mp4" type="video/mp4" />
													</video>
													<br><br>
													
													명지포스코 2017.09 분양 
													<video id="video" width="800" height="600" controls="controls">
														<source src="http://www.myeongji-thesharp.co.kr/images/main/skymovie.mp4" type="video/mp4" />
													</video>
													<br><br>
												<%
												} else if(proc.equals("6")) {	// 지역주택조합 아파트 사업절차
												%>
													<p>
														Jeonpo5 Develpoment Process
														<br>
													<img src="./images/jp5_pr1.png" width=800>
													<img src="./images/jp5_pr2.png" width=800>
													</p>
												<%
												} else if(proc.equals("7")) {}
												%>												
											</p>

								</div>
							</div>
						</div>
					</div>
				</div>

			<!-- Footer -->
				<div id="footer-wrapper">
					<footer id="footer" class="container">
						<div class="row">
							<div class="8u 12u(mobile)">

								<!-- Links -->
									<section>
										<h2>Links to Important Stuff</h2>
										<div>
											<div class="row">
												<div class="3u 12u(mobile)">
													<ul class="link-list last-child">
														<li><a href="#">Neque amet dapibus</a></li>
														<li><a href="#">Sed mattis quis rutrum</a></li>
														<li><a href="#">Accumsan suspendisse</a></li>
														<li><a href="#">Eu varius vitae magna</a></li>
													</ul>
												</div>
												<div class="3u 12u(mobile)">
													<ul class="link-list last-child">
														<li><a href="#">Neque amet dapibus</a></li>
														<li><a href="#">Sed mattis quis rutrum</a></li>
														<li><a href="#">Accumsan suspendisse</a></li>
														<li><a href="#">Eu varius vitae magna</a></li>
													</ul>
												</div>
												<div class="3u 12u(mobile)">
													<ul class="link-list last-child">
														<li><a href="#">Neque amet dapibus</a></li>
														<li><a href="#">Sed mattis quis rutrum</a></li>
														<li><a href="#">Accumsan suspendisse</a></li>
														<li><a href="#">Eu varius vitae magna</a></li>
													</ul>
												</div>
												<div class="3u 12u(mobile)">
													<ul class="link-list last-child">
														<li><a href="#">Neque amet dapibus</a></li>
														<li><a href="#">Sed mattis quis rutrum</a></li>
														<li><a href="#">Accumsan suspendisse</a></li>
														<li><a href="#">Eu varius vitae magna</a></li>
													</ul>
												</div>
											</div>
										</div>
									</section>

							</div>
							<div class="4u 12u(mobile)">

								<!-- Blurb -->
									<section>
										<h2>An Informative Text Blurb</h2>
										<p>
											Duis neque nisi, dapibus sed mattis quis, rutrum accumsan sed. Suspendisse eu
											varius nibh. Suspendisse vitae magna eget odio amet mollis. Duis neque nisi,
											dapibus sed mattis quis, sed rutrum accumsan sed. Suspendisse eu varius nibh
											lorem ipsum amet dolor sit amet lorem ipsum consequat gravida justo mollis.
										</p>
									</section>

							</div>
						</div>
					</footer>
				</div>

			<!-- Copyright -->
				<div id="copyright">
					&copy; Untitled. All rights reserved. | Design: <a href="http://html5up.net">HTML5 UP</a>
				</div>

		</div>

		<!-- Scripts -->
			<script src="assets/js/jquery.min.js"></script>
			<script src="assets/js/skel.min.js"></script>
			<script src="assets/js/skel-viewport.min.js"></script>
			<script src="assets/js/util.js"></script>
			<!--[if lte IE 8]><script src="assets/js/ie/respond.min.js"></script><![endif]-->
			<script src="assets/js/main.js"></script>

	</body>
</html>