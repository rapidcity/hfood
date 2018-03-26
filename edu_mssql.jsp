<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR" %>
<!DOCTYPE HTML>
<!--
	Editorial by HTML5 UP
	html5up.net | @ajlkn
	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html>
	<head>
		<title>2018 MSSQL Query Tunning</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<!--[if lte IE 8]><script src="assets/js/ie/html5shiv.js"></script><![endif]-->
		<link rel="stylesheet" href="assets/css/main.css" />
		<!--[if lte IE 9]><link rel="stylesheet" href="assets/css/ie9.css" /><![endif]-->
		<!--[if lte IE 8]><link rel="stylesheet" href="assets/css/ie8.css" /><![endif]-->
		<script type="text/javascript" src="http://code.jquery.com/jquery-1.8.3.min.js"></script> 
		
		<script type="text/javascript" src="http://code.jquery.com/jquery-latest.js"></script>
		
		<style>
		    .setDiv {
		        padding-top: 100px;
		        text-align: center;
		    }
		    .mask {
		        position:absolute;
		        left:0;
		        top:0;
		        z-index:9999;
		        background-color:#000;
		        display:none;
		    }
		    .window {
		        display: none;
		        background-color: #ffffff;
		        height: 200px;
		        z-index:99999;
		    }
		</style>		
		<script type="text/javascript">
			$(document).ready(function(){
			//$(function () {
				$("#frmDoc").find('#click_introduce').click(function() {
					$(location).attr('href', 'http://www.visualdb.net/');
				});
				$("#frmDoc").find('#click_evernote').click(function() {
					$(location).attr('href', 'http://www.evernote.com/l/ARNVdpKZ-GJIQKEGDYuJnpB6EbNwgke2SgQ/');
				});	
				
			    function wrapWindowByMask(json_data){
			        // ȭ���� ���̿� �ʺ� ������ ����ϴ�.
			        var maskHeight = $(document).height();
			        var maskWidth = $(window).width();
			 
			        // ����ũ�� ���̿� �ʺ� ȭ���� ���̿� �ʺ� ������ �����մϴ�.
			        $('.mask').css({'width':maskWidth,'height':maskHeight});
			 
			        // fade �ִϸ��̼� : 1�� ���� �˰� �ƴٰ� 80%�� ���������� ���մϴ�.
			        $('.mask').fadeIn(500);
			        $('.mask').fadeTo("slow",0.8);
			 
			        // ���̾� �˾��� ����� ���� ���� ȭ���� ���̿� �ʺ��� ��� ���� ��ũ�� ���� ���Ͽ� ������ ����ϴ�.
			        var left = ( $(window).scrollLeft() + ( $(window).width() - $('.window').width()) / 2 );
			        var top = ( $(window).scrollTop() + ( $(window).height() - $('.window').height()) / 2 );
			 
			        // css ��Ÿ���� �����մϴ�.
			        $('.window').css({'left':left,'top':top, 'position':'absolute'});
		
		/*
					  var xhr = new XMLHttpRequest();
					  xhr.onreadystatechange = function() {
					    if (xhr.readyState != 4) return;
					    if (xhr.status != 200) {
					    	alert(xhr.status);
					    	alert(xhr.responseText);
					    }
					    
					    $('.window').innerHTML = xhr.responseText;
					  };
					  xhr.open("GET", "http://www.naver.com", true);
					  xhr.send(null);
					  */
  			 		
  			 		$('#frmDoc').find('#pop_body').text(json_data);
  			 			
			        // ���̾� �˾��� ���ϴ�.
			        $('.window').show();
			        
			        //alert(body_html);
			        
			        //$("#dialog").dialog();
			    }
				
				// ���̾��˾��� �����Ѵ�.
				$('.showMask').click(function(e){
					// preventDefault�� href�� ��ũ �⺻ �ൿ�� ���� ����Դϴ�.
					e.preventDefault();
					
					var body_html = "";
					/*
					var request = $.ajax({
						url:"���� ������ URL",
						type:"POST",
						data:json_data, // {��user_id��:���Է°���, ��user_password��:���Է°���} �������� ���� ��
						dataType:"json"
					});
					
					request.done(function(data){ // ���� ��, ��� �� �޾ƿ��� �κ�
					if (data != null){
					 if (data.error == 2) { // ���� �� JSON ������ {��error��:2} ���� �������� ����
					                                                                     // data ������Ʈ�� error�� ���� 2�� ���� �̺�Ʈ ó��
					  alert("�̹� ��ϵǾ� �ִ� ���̵� �Դϴ�.");
					 } else if (data.submit == true) {
					  alert("��� �Ϸ�! �α��� �Ͻñ� �ٶ��ϴ�.");
					 }
					}
					});
					*/
					
					var myObj = {
								    "name":"John",
								    "age":30,
								    "cars": [
								        { "name":"Ford", "models":[ "Fiesta", "Focus", "Mustang" ] },
								        { "name":"BMW", "models":[ "320", "X3", "X5" ] },
								        { "name":"Fiat", "models":[ "500", "Panda" ] }
								    ]
								 }
								 
					var myJSON = JSON.stringify(myObj);
					
					var newArr = JSON.parse(myJSON);
					var iHTML = '';
					

					iHTML += '<p>name :' + newArr.name + '</p>';
					iHTML += '<p>age :' + newArr.age + '</p>';
					//iHTML += '<p>cars count :' + newArr.cars.length + '</p>';
					
					/*
					$.each(myJSON, function(key, value){ 
						alert('key:' + key + ' / ' + 'value:' + value); 
					});
					*/
					alert(newArr.age);
					wrapWindowByMask(iHTML);
				});
				
				// ���̾��˾��� �ݴ´�.
		        $('.window .close').click(function (e) {
		            e.preventDefault();
		            $('.mask, .window').hide();
		        });
		 	        
				
			});
		</script>		
	</head>
	<body>
	<form name="frmDoc" id="frmDoc">
		<!-- Wrapper -->
			<div id="wrapper">
				
				<!-- ���̾� �˾� -->
				<a href="#" class="showMask">���� ����ũ�� ���̾� �˾� ����</a>
				
				<div class="mask"></div>
				<div class="window">
				    <input type="button" href="#" class="close" value="��� ������� ���̾� �˾� �Դϴ�. (�ݱ�)"/>
				    <div class="inner">
					<nav id="menu">
						<!--
						<header class="major">
							<h2>����</h2>
						</header>
						-->
						<ul>
							<h2>Json Request Data</h2>
							<div id="pop_body"></div>
						</ul>					
					</nav>

				    </div>
					<object id="miniwini" width="650" height="400" type="text/x-scriptlet"> 
					<!--<param name="url" value="http://www.evernote.com/l/ARNVdpKZ-GJIQKEGDYuJnpB6EbNwgke2SgQ/">-->
					
					<param name="url" value="http://www.naver.com">
					<param name="selectablecontent" value="0"> 
					<param name=scrollbar value="1"> 
					</object>
				</div>

    
				<!-- Main -->
					<div id="main">
						<div class="inner">

							<!-- Header -->
								<header id="header">
									<a href="index.html" class="logo"><strong>Editorial</strong> by HTML5 UP</a>
									<ul class="icons">
										<li><a href="#" class="icon fa-twitter"><span class="label">Twitter</span></a></li>
										<li><a href="#" class="icon fa-facebook"><span class="label">Facebook</span></a></li>
										<li><a href="#" class="icon fa-snapchat-ghost"><span class="label">Snapchat</span></a></li>
										<li><a href="#" class="icon fa-instagram"><span class="label">Instagram</span></a></li>
										<li><a href="#" class="icon fa-medium"><span class="label">Medium</span></a></li>
									</ul>
								</header>

							<!-- Content -->
								<section>
									<header class="main">
										<h1>SQL Server Query Tunning ... 2018</h1>
									</header>
									<!--	
									<span class="image main"><img src="images/pic11.jpg" alt="" /></span>
-->
									<h2>Introduce</h2>
									<p>������ (��)������(www.SQLRoad.com) ��ǥ�̻�</p>
									<p><a href="#" id="click_introduce">http://www.visualdb.net</a></a></p>
									
									<h2>Check Point</h2>
									<p>- Nested Loop Join</p>
									<p>- Hash Join</p>
									<p>- Semi Join</p>

									<hr class="stop1_video" />

									<h2>Youtube</h2>
									<!--
									<iframe width="560" height="315" src="https://www.youtube.com/embed/GU9i_v8Y1S8" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>
									-->
									

									<hr class="step2_reference" />

									<h2>Reference</h2>
									<p>Nasted Loop Join</p>
									<iframe width="560" height="315" src="https://www.youtube.com/embed/dlJjmbl8y7c" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>
									

									<hr class="step3_evernote" />
									<h2>Memo</h2>
									<p><a href="#" id="click_evernote">��Ʈ����</a></p>
									<p>
										�������� �Ϲ����̳� ������ �ϴٺ��� �׿� ���� ���丮�� ���̰� �ȴ�.
										������ ����� ���丮 ������ �װ� �ϳ��� ���������� �״� ��Ⱑ �� �� �ִ�.
										�̰� �ڻ��̴�!!!
									</p>

									
								</section>

						</div>
					</div>

					<!-- Sidebar -->
					<div id="sidebar">
						<div class="inner">
					
							<!-- Search -->
								<section id="search" class="alt">
									<form method="post" action="#">
										<input type="text" name="query" id="query" placeholder="Search" />
									</form>
								</section>
					
							<!-- Menu -->
								<nav id="menu">
									<header class="major">
										<h2>Menu</h2>
									</header>
									<ul>
										<li><a href="index.html">Homepage</a></li>
										<li><a href="generic.html">Generic</a></li>
										<li><a href="elements.html">Elements</a></li>
										<li>
											<span class="opener">Submenu</span>
											<ul>
												<li><a href="#">Lorem Dolor</a></li>
												<li><a href="#">Ipsum Adipiscing</a></li>
												<li><a href="#">Tempus Magna</a></li>
												<li><a href="#">Feugiat Veroeros</a></li>
											</ul>
										</li>
										<li><a href="#">Etiam Dolore</a></li>
										<li><a href="#">Adipiscing</a></li>
										<li>
											<span class="opener">Another Submenu</span>
											<ul>
												<li><a href="#">Lorem Dolor</a></li>
												<li><a href="#">Ipsum Adipiscing</a></li>
												<li><a href="#">Tempus Magna</a></li>
												<li><a href="#">Feugiat Veroeros</a></li>
											</ul>
										</li>
										<li><a href="#">Maximus Erat</a></li>
										<li><a href="#">Sapien Mauris</a></li>
										<li><a href="#">Amet Lacinia</a></li>
									</ul>
								</nav>
					
							<!-- Section -->
								<section>
									<header class="major">
										<h2>Ante interdum</h2>
									</header>
									<div class="mini-posts">
										<article>
											<a href="#" class="image"><img src="images/pic07.jpg" alt="" /></a>
											<p>Aenean ornare velit lacus, ac varius enim lorem ullamcorper dolore aliquam.</p>
										</article>
										<article>
											<a href="#" class="image"><img src="images/pic08.jpg" alt="" /></a>
											<p>Aenean ornare velit lacus, ac varius enim lorem ullamcorper dolore aliquam.</p>
										</article>
										<article>
											<a href="#" class="image"><img src="images/pic09.jpg" alt="" /></a>
											<p>Aenean ornare velit lacus, ac varius enim lorem ullamcorper dolore aliquam.</p>
										</article>
									</div>
									<ul class="actions">
										<li><a href="#" class="button">More</a></li>
									</ul>
								</section>
					
							<!-- Section -->
								<section>
									<header class="major">
										<h2>Get in touch</h2>
									</header>
									<p>Sed varius enim lorem ullamcorper dolore aliquam aenean ornare velit lacus, ac varius enim lorem ullamcorper dolore. Proin sed aliquam facilisis ante interdum. Sed nulla amet lorem feugiat tempus aliquam.</p>
									<ul class="contact">
										<li class="fa-envelope-o"><a href="#">information@untitled.tld</a></li>
										<li class="fa-phone">(000) 000-0000</li>
										<li class="fa-home">1234 Somewhere Road #8254<br />
										Nashville, TN 00000-0000</li>
									</ul>
								</section>
					
							<!-- Footer -->
								<footer id="footer">
									<p class="copyright">&copy; Untitled. All rights reserved. Demo Images: <a href="https://unsplash.com">Unsplash</a>. Design: <a href="https://html5up.net">HTML5 UP</a>.</p>
								</footer>
					
						</div>
					</div>

			</div>

		<!-- Scripts -->
			<script src="assets/js/jquery.min.js"></script>
			<script src="assets/js/skel.min.js"></script>
			<script src="assets/js/util.js"></script>
			<!--[if lte IE 8]><script src="assets/js/ie/respond.min.js"></script><![endif]-->
			<script src="assets/js/main.js"></script>
	</form>
	</body>
</html>
