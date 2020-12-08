<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html> 
<html lang="en">
	<head>
		<meta charset="utf-8">
		<title>결제 상세 내역 - Dr.Link</title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0">
		
		<!-- Favicons -->
		<link href="${pageContext.request.contextPath}/resources/img/favicon.png" rel="icon">
		
		<!-- Bootstrap CSS -->
		<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css">
		
		<!-- Fontawesome CSS -->
		<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/plugins/fontawesome/css/fontawesome.min.css">
		<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/plugins/fontawesome/css/all.min.css">
		
		<!-- Main CSS -->
		<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css">
		
		<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
		<!--[if lt IE 9]>
			<script src="${pageContext.request.contextPath}/resources/js/html5shiv.min.js"></script>
			<script src="${pageContext.request.contextPath}/resources/js/respond.min.js"></script>
		<![endif]-->
	
	<!-- dr.link 폰트 설정 -->
	<!-- 구글폰트 -->
	<link href="https://fonts.googleapis.com/css?family=Nanum+Gothic:400,700,800&amp;subset=korean" rel="stylesheet">
	<link rel="preconnect" href="https://fonts.gstatic.com">
	<link href="https://fonts.googleapis.com/css2?family=Major+Mono+Display&display=swap" rel="stylesheet">
	<style>
	#drlink{
		font-family: 'Major Mono Display', monospace; 
		margin-right: 20px;
		font-size: 2.25rem;
		
	}
	</style>
	
	
	
	</head>
	<body>

		<!-- Main Wrapper -->
		<div class="main-wrapper">
		
			<!-- Header -->
			<header class="header">
				<nav class="navbar navbar-expand-lg header-nav">
					<div class="navbar-header">
						<a id="mobile_btn" href="javascript:void(0);">
							<span class="bar-icon">
								<span></span>
								<span></span>
								<span></span>
							</span>
						</a>
						<a href="index" class="navbar-brand logo">
							<img src="${pageContext.request.contextPath}/resources/img/logo.png" class="img-fluid" alt="Logo">
						</a>
					</div>
					<div class="main-menu-wrapper">
						<div class="menu-header">
							<a href="index" class="menu-logo">
								<img src="${pageContext.request.contextPath}/resources/img/logo.png" class="img-fluid" alt="Logo">
							</a>
							<a id="menu_close" class="menu-close" href="javascript:void(0);">
								<i class="fas fa-times"></i>
							</a>
						</div>
						<ul class="main-nav">
							<li>
								<a href="index">Home</a>
							</li>
							<li class="has-submenu">
								<a href="">Doctors <i class="fas fa-chevron-down"></i></a>
								<ul class="submenu">
									<li><a href="doctor-dashboard">Doctor Dashboard</a></li>
									<li><a href="appointments">Appointments</a></li>
									<li><a href="schedule-timings">Schedule Timing</a></li>
									<li><a href="my-patients">Patients List</a></li>
									<li><a href="patient-profile">Patients Profile</a></li>
									<li><a href="chat-doctor">Chat</a></li>
									<li><a href="invoices">Invoices</a></li>
									<li><a href="doctor-profile-settings">Profile Settings</a></li>
									<li><a href="reviews">Reviews</a></li>
									<li><a href="doctor-register">Doctor Register</a></li>
									<li class="has-submenu">
										<a href="doctor-blog">Blog</a>
										<ul class="submenu">
											<li><a href="doctor-blog">Blog</a></li>
											<li><a href="blog-details">Blog view</a></li>
											<li><a href="doctor-add-blog">Add Blog</a></li>
										</ul>
									</li>
								</ul>
							</li>	
							<li class="has-submenu">
								<a href="">Patients <i class="fas fa-chevron-down"></i></a>
								<ul class="submenu">
									<li class="has-submenu">
										<a href="#">Doctors</a>
										<ul class="submenu">
											<li><a href="map-grid">Map Grid</a></li>
											<li><a href="map-list">Map List</a></li>
										</ul>
									</li>
									<li><a href="search">Search Doctor</a></li>
									<li><a href="doctor-profile">Doctor Profile</a></li>
									<li><a href="booking">Booking</a></li>
									<li><a href="checkout">Checkout</a></li>
									<li><a href="booking-success">Booking Success</a></li>
									<li><a href="patient-dashboard">Patient Dashboard</a></li>
									<li><a href="favourites">Favourites</a></li>
									<li><a href="chat">Chat</a></li>
									<li><a href="profile-settings">Profile Settings</a></li>
									<li><a href="change-password">Change Password</a></li>
								</ul>
							</li>	
							<li class="has-submenu">
								<a href="">Pharmacy <i class="fas fa-chevron-down"></i></a>
								<ul class="submenu">
									<li><a href="pharmacy-index">Pharmacy</a></li>
									<li><a href="pharmacy-details">Pharmacy Details</a></li>
									<li><a href="pharmacy-search">Pharmacy Search</a></li>
									<li><a href="product-all">Product</a></li>
									<li><a href="product-description">Product Description</a></li>
									<li><a href="cart">Cart</a></li>
									<li><a href="product-checkout">Product Checkout</a></li>
									<li><a href="payment-success">Payment Success</a></li>
								</ul>
							</li>
							<li class="has-submenu active">
								<a href="">Pages <i class="fas fa-chevron-down"></i></a>
								<ul class="submenu">
									<li><a href="voice-call">Voice Call</a></li>
									<li><a href="video-call">Video Call</a></li>
									<li><a href="search">Search Doctors</a></li>
									<li><a href="calendar">Calendar</a></li>
									<li><a href="components">Components</a></li>
									<li class="has-submenu active">
										<a href="invoices">Invoices</a>
										<ul class="submenu">
											<li><a href="invoices">Invoices</a></li>
											<li class="active"><a href="invoice-view">Invoice View</a></li>
										</ul>
									</li>
									<li><a href="blank-page">Starter Page</a></li>
									<li><a href="login">Login</a></li>
									<li><a href="register">Register</a></li>
									<li><a href="forgot-password">Forgot Password</a></li>
								</ul>
							</li>
							<li class="has-submenu">
								<a href="">Blog <i class="fas fa-chevron-down"></i></a>
								<ul class="submenu">
									<li><a href="blog-list">Blog List</a></li>
									<li><a href="blog-grid">Blog Grid</a></li>
									<li><a href="blog-details">Blog Details</a></li>
								</ul>
							</li>
							<li class="has-submenu">
								<a href="#" target="_blank">Admin <i class="fas fa-chevron-down"></i></a>
								<ul class="submenu">
									<li><a href="admin/index" target="_blank">Admin</a></li>
									<li><a href="pharmacy/index" target="_blank">Pharmacy Admin</a></li>
								</ul>
							</li>
							<li class="login-link">
								<a href="login">Login / Signup</a>
							</li>
						</ul>
					</div>		 
					<ul class="nav header-navbar-rht">
						<li class="nav-item contact-item">
							<div class="header-contact-img">
								<i class="far fa-hospital"></i>							
							</div>
							<div class="header-contact-detail">
								<p class="contact-header">Contact</p>
								<p class="contact-info-header"> +1 315 369 5943</p>
							</div>
						</li>
						<li class="nav-item">
							<a class="nav-link header-login" href="login">login / Signup </a>
						</li>
					</ul>
				</nav>
			</header>
			<!-- /Header -->
			
			<!-- Breadcrumb -->
			<div class="breadcrumb-bar">
				<div class="container-fluid">
					<div class="row align-items-center">
						<div class="col-md-12 col-12">
							<nav aria-label="breadcrumb" class="page-breadcrumb">
								<ol class="breadcrumb">
									<li class="breadcrumb-item"><a href="index">Home</a></li>
									<li class="breadcrumb-item active" aria-current="page">Invoice View</li>
								</ol>
							</nav>
							<h2 class="breadcrumb-title">Invoice View</h2>
						</div>
					</div>
				</div>
			</div>
			<!-- /Breadcrumb -->
			
			<!-- Page Content -->
			<div class="content">
				<div class="container-fluid">

					<div class="row">
						<div class="col-lg-8 offset-lg-2">
							<div class="invoice-content">
								<div class="invoice-item">
									<div class="row">
										<div class="col-md-6">
											<div class="invoice-logo">
												<h1><a id="drlink" href="#" >Dr.Link</a></h1>
											</div>
										</div>
										<div class="col-md-6">
											<p class="invoice-details">
												<strong>영수증 번호:</strong> #00124 <br>
												<strong>결제일:</strong> 2019년 10월 10일
											</p>
										</div>
									</div>
								</div>
								
								<!-- Invoice Item -->
								<div class="invoice-item">
									<div class="row">
										<div class="col-md-6">
											<div class="invoice-info">
												<strong class="customer-text">발행 기관</strong>
												<p class="invoice-details invoice-details-two">
													Dr.Link <br>
													금천구 가산동 426-5 월드 메르디앙 벤처 센터 2 차 410 호 <br>
													서울특별시, 대한민국 <br>
												</p>
											</div>
										</div>
										<div class="col-md-6">
											<div class="invoice-info invoice-info2">
												<strong class="customer-text">고객 정보</strong>
												<p class="invoice-details">
													환자이름 <br>
													환자주소 <br>
													주소 시이름, 주소 국가이름 <br>
												</p>
											</div>
										</div>
									</div>
								</div>
								<!-- /Invoice Item -->
								
								<!-- Invoice Item -->
								<div class="invoice-item">
									<div class="row">
										<div class="col-md-12">
											<div class="invoice-info">
												<strong class="customer-text">결제정보</strong>
												<p class="invoice-details invoice-details-two">
													신용카드 <br>
													XXXXXXXXXXXX-2541 <br>
													KB국민은행<br>
												</p>
											</div>
										</div>
									</div>
								</div>
								<!-- /Invoice Item -->
								
								<!-- Invoice Item -->
								<div class="invoice-item invoice-table-wrap">
									<div class="row">
										<div class="col-md-12">
											<div class="table-responsive">
												<table class="invoice-table table table-bordered">
													<thead>
														<tr>
															<th>처방의약품의 코드</th>
															<th>처방의약품의 명칭</th>
															<th class="text-center">1회 투약량</th>
															<th class="text-center">1일 투약횟수</th>
															<th class="text-center">총 투약일수</th>
															<th class="text-center">개당 가격</th>
															<th class="text-right">총 금액</th>
														</tr>
													</thead>
													<tbody>
														<tr>
															<td>22485100</td>
															<td>유시락스시럽</td>
															<td class="text-center">1</td>
															<td class="text-center">2</td>
															<td class="text-center">1</td>
															<td class="text-center">1,200 <span>원</span></td>
															<td class="text-right">2,400 <span>원</span></td>
														</tr>
														<tr>
															<td>10000001</td>
															<td>원격 화상 진료</td>
															<td class="text-center">1</td>
															<td class="text-center">1</td>
															<td class="text-center">1</td>
															<td class="text-center">21,000 <span>원</span></td>
															<td class="text-right">21,000 <span>원</span></td>
														</tr>
													</tbody>
												</table>
											</div>
										</div>
										<div class="col-md-6 col-xl-4 ml-auto">
											<div class="table-responsive">
												<table class="invoice-table-two table">
													<tbody>
													<tr>
														<th>합 금액:</th>
														<td><span>23,400 <span>원</span></span></td>
													</tr>
													<tr>
														<th>보험적용:</th>
														<td><span>-10%</span></td>
													</tr>
													<tr>
														<th>최종금액:</th>
														<td><span>21,060<span>원</span></span></td>
													</tr>
													</tbody>
												</table>
											</div>
										</div>
									</div>
								</div>
								<!-- /Invoice Item -->
								
								<!-- Invoice Information -->
								<div class="other-info">
									<h4>사용기간</h4>
									<p class="text-muted mb-0">교부일로부터 3일간 내에 약국에 제출하여야 합니다.</p>
								</div>
								<!-- /Invoice Information -->
								
							</div>
						</div>
					</div>

				</div>

			</div>		
			<!-- /Page Content -->
   
			<!-- Footer -->
			<footer class="footer">
				
				<!-- Footer Top -->
				<div class="footer-top">
					<div class="container-fluid">
						<div class="row">
							<div class="col-lg-3 col-md-6">
							
								<!-- Footer Widget -->
								<div class="footer-widget footer-about">
									<div class="footer-logo">
										<img src="${pageContext.request.contextPath}/resources/img/footer-logo.png" alt="logo">
									</div>
									<div class="footer-about-content">
										<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. </p>
										<div class="social-icon">
											<ul>
												<li>
													<a href="#" target="_blank"><i class="fab fa-facebook-f"></i> </a>
												</li>
												<li>
													<a href="#" target="_blank"><i class="fab fa-twitter"></i> </a>
												</li>
												<li>
													<a href="#" target="_blank"><i class="fab fa-linkedin-in"></i></a>
												</li>
												<li>
													<a href="#" target="_blank"><i class="fab fa-instagram"></i></a>
												</li>
												<li>
													<a href="#" target="_blank"><i class="fab fa-dribbble"></i> </a>
												</li>
											</ul>
										</div>
									</div>
								</div>
								<!-- /Footer Widget -->
								
							</div>
							
							<div class="col-lg-3 col-md-6">
							
								<!-- Footer Widget -->
								<div class="footer-widget footer-menu">
									<h2 class="footer-title">For Patients</h2>
									<ul>
										<li><a href="search">Search for Doctors</a></li>
										<li><a href="login">Login</a></li>
										<li><a href="register">Register</a></li>
										<li><a href="booking">Booking</a></li>
										<li><a href="patient-dashboard">Patient Dashboard</a></li>
									</ul>
								</div>
								<!-- /Footer Widget -->
								
							</div>
							
							<div class="col-lg-3 col-md-6">
							
								<!-- Footer Widget -->
								<div class="footer-widget footer-menu">
									<h2 class="footer-title">For Doctors</h2>
									<ul>
										<li><a href="appointments">Appointments</a></li>
										<li><a href="chat">Chat</a></li>
										<li><a href="login">Login</a></li>
										<li><a href="doctor-register">Register</a></li>
										<li><a href="doctor-dashboard">Doctor Dashboard</a></li>
									</ul>
								</div>
								<!-- /Footer Widget -->
								
							</div>
							
							<div class="col-lg-3 col-md-6">
							
								<!-- Footer Widget -->
								<div class="footer-widget footer-contact">
									<h2 class="footer-title">Contact Us</h2>
									<div class="footer-contact-info">
										<div class="footer-address">
											<span><i class="fas fa-map-marker-alt"></i></span>
											<p> 3556  Beech Street, San Francisco,<br> California, CA 94108 </p>
										</div>
										<p>
											<i class="fas fa-phone-alt"></i>
											+1 315 369 5943
										</p>
										<p class="mb-0">
											<i class="fas fa-envelope"></i>
											doccure@example.com
										</p>
									</div>
								</div>
								<!-- /Footer Widget -->
								
							</div>
							
						</div>
					</div>
				</div>
				<!-- /Footer Top -->
				
				<!-- Footer Bottom -->
                <div class="footer-bottom">
					<div class="container-fluid">
					
						<!-- Copyright -->
						<div class="copyright">
							<div class="row">
								<div class="col-md-6 col-lg-6">
									<div class="copyright-text">
										<p class="mb-0">&copy; 2020 Doccure. All rights reserved.</p>
									</div>
								</div>
								<div class="col-md-6 col-lg-6">
								
									<!-- Copyright Menu -->
									<div class="copyright-menu">
										<ul class="policy-menu">
											<li><a href="term-condition">Terms and Conditions</a></li>
											<li><a href="privacy-policy">Policy</a></li>
										</ul>
									</div>
									<!-- /Copyright Menu -->
									
								</div>
							</div>
						</div>
						<!-- /Copyright -->
						
					</div>
				</div>
				<!-- /Footer Bottom -->
				
			</footer>
			<!-- /Footer -->
		   
		</div>
		<!-- /Main Wrapper -->
	  
		<!-- jQuery -->
		<script src="${pageContext.request.contextPath}/resources/js/jquery.min.js"></script>
		
		<!-- Bootstrap Core JS -->
		<script src="${pageContext.request.contextPath}/resources/js/popper.min.js"></script>
		<script src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
		
		<!-- Custom JS -->
		<script src="${pageContext.request.contextPath}/resources/js/script.js"></script>
		
	</body>
</html>