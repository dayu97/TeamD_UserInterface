<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html> 
<html lang="en">
	<head>
		<meta charset="utf-8">
		<title>회원가입-Dr.Link</title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0">
		
		<!-- Favicons -->
		<link href="../resources/img/favicon.png" rel="icon">
		
		<!-- Bootstrap CSS -->
		<link rel="stylesheet" href="resources/css/bootstrap.min.css">
		
		<!-- Fontawesome CSS -->
		<link rel="stylesheet" href="resources/plugins/fontawesome/css/fontawesome.min.css">
		<link rel="stylesheet" href="resources/plugins/fontawesome/css/all.min.css">
		
		<!-- Main CSS -->
		<link rel="stylesheet" href="resources/css/style.css">
		
		<!-- 우편번호 API -->
		<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
		
		<script>

		function execPostCode() {
			
			 new daum.Postcode({

		           oncomplete: function(data) {

		               // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

		               // 도로명 주소의 노출 규칙에 따라 주소를 조합한다.
		               // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
		               var fullRoadAddr = data.roadAddress; // 도로명 주소 변수
		               var extraRoadAddr = ''; // 도로명 조합형 주소 변수

		               // 법정동명이 있을 경우 추가한다. (법정리는 제외)
		               // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
		               if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
		                   extraRoadAddr += data.bname;
		               }
		               // 건물명이 있고, 공동주택일 경우 추가한다.
		               if(data.buildingName !== '' && data.apartment === 'Y'){
		                  extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
		               }
		               // 도로명, 지번 조합형 주소가 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
		               if(extraRoadAddr !== ''){
		                   extraRoadAddr = ' (' + extraRoadAddr + ')';
		               }
		               // 도로명, 지번 주소의 유무에 따라 해당 조합형 주소를 추가한다.
		               if(fullRoadAddr !== ''){
		                   fullRoadAddr += extraRoadAddr;
		               }

		               // 우편번호와 주소 정보를 해당 필드에 넣는다.

		               document.getElementById('zipcode').value = data.zonecode; //5자리 새우편번호 사용
		               document.getElementById('addr1').value = fullRoadAddr;
		               document.getElementById('addr2').focus();

		               console.log(data);

		           }

		       }).open();
			 
		};
		</script>
			
	</head>
	<body class="account-page">

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
						<a href="index.html" class="navbar-brand logo">
							<img src="resources/img/logo.png" class="img-fluid" alt="Logo">
						</a>
					</div>
					<div class="main-menu-wrapper">
						<div class="menu-header">
							<a href="index.html" class="menu-logo">
								<img src="resources/img/logo.png" class="img-fluid" alt="Logo">
							</a>
							<a id="menu_close" class="menu-close" href="javascript:void(0);">
								<i class="fas fa-times"></i>
							</a>
						</div>
						<ul class="main-nav">
							<li>
								<a href="index.html">Home</a>
							</li>
							<li class="has-submenu">
								<a href="">Doctors <i class="fas fa-chevron-down"></i></a>
								<ul class="submenu">
									<li><a href="doctor-dashboard.html">Doctor Dashboard</a></li>
									<li><a href="appointments.html">Appointments</a></li>
									<li><a href="schedule-timings.html">Schedule Timing</a></li>
									<li><a href="my-patients.html">Patients List</a></li>
									<li><a href="patient-profile.html">Patients Profile</a></li>
									<li><a href="chat-doctor.html">Chat</a></li>
									<li><a href="invoices.html">Invoices</a></li>
									<li><a href="doctor-profile-settings.html">Profile Settings</a></li>
									<li><a href="reviews.html">Reviews</a></li>
									<li><a href="doctor-register.html">Doctor Register</a></li>
									<li class="has-submenu">
										<a href="doctor-blog.html">Blog</a>
										<ul class="submenu">
											<li><a href="doctor-blog.html">Blog</a></li>
											<li><a href="blog-details.html">Blog view</a></li>
											<li><a href="doctor-add-blog.html">Add Blog</a></li>
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
											<li><a href="map-grid.html">Map Grid</a></li>
											<li><a href="map-list.html">Map List</a></li>
										</ul>
									</li>
									<li><a href="search.html">Search Doctor</a></li>
									<li><a href="doctor-profile.html">Doctor Profile</a></li>
									<li><a href="booking.html">Booking</a></li>
									<li><a href="checkout.html">Checkout</a></li>
									<li><a href="booking-success.html">Booking Success</a></li>
									<li><a href="patient-dashboard.html">Patient Dashboard</a></li>
									<li><a href="favourites.html">Favourites</a></li>
									<li><a href="chat.html">Chat</a></li>
									<li><a href="profile-settings.html">Profile Settings</a></li>
									<li><a href="change-password.html">Change Password</a></li>
								</ul>
							</li>	
							<li class="has-submenu">
								<a href="">Pharmacy <i class="fas fa-chevron-down"></i></a>
								<ul class="submenu">
									<li><a href="pharmacy-index.html">Pharmacy</a></li>
									<li><a href="pharmacy-details.html">Pharmacy Details</a></li>
									<li><a href="pharmacy-search.html">Pharmacy Search</a></li>
									<li><a href="product-all.html">Product</a></li>
									<li><a href="product-description.html">Product Description</a></li>
									<li><a href="cart.html">Cart</a></li>
									<li><a href="product-checkout.html">Product Checkout</a></li>
									<li><a href="payment-success.html">Payment Success</a></li>
								</ul>
							</li>
							<li class="has-submenu active">
								<a href="">Pages <i class="fas fa-chevron-down"></i></a>
								<ul class="submenu">
									<li><a href="voice-call.html">Voice Call</a></li>
									<li><a href="video-call.html">Video Call</a></li>
									<li><a href="search.html">Search Doctors</a></li>
									<li><a href="calendar.html">Calendar</a></li>
									<li><a href="components.html">Components</a></li>
									<li class="has-submenu">
										<a href="invoices.html">Invoices</a>
										<ul class="submenu">
											<li><a href="invoices.html">Invoices</a></li>
											<li><a href="invoice-view.html">Invoice View</a></li>
										</ul>
									</li>
									<li><a href="blank-page.html">Starter Page</a></li>
									<li><a href="login.html">Login</a></li>
									<li class="active"><a href="register.html">Register</a></li>
									<li><a href="forgot-password.html">Forgot Password</a></li>
								</ul>
							</li>
							<li class="has-submenu">
								<a href="">Blog <i class="fas fa-chevron-down"></i></a>
								<ul class="submenu">
									<li><a href="blog-list.html">Blog List</a></li>
									<li><a href="blog-grid.html">Blog Grid</a></li>
									<li><a href="blog-details.html">Blog Details</a></li>
								</ul>
							</li>
							<li class="has-submenu">
								<a href="#" target="_blank">Admin <i class="fas fa-chevron-down"></i></a>
								<ul class="submenu">
									<li><a href="admin/index.html" target="_blank">Admin</a></li>
									<li><a href="pharmacy/index.html" target="_blank">Pharmacy Admin</a></li>
								</ul>
							</li>
							<li class="login-link">
								<a href="login.html">Login / Signup</a>
							</li>
						</ul>
					</div>		 
					<ul class="nav header-navbar-rht">
						<li class="nav-item">
							<a class="nav-link header-login" href="${contextPath}login">로그인 / 회원가입</a>
						</li>
					</ul>
				</nav>
			</header>
			<!-- /Header -->
			
			<!-- Page Content -->
			<div class="content">
				<div class="container-fluid">
					
					<div class="row">
						<!-- /Profile Sidebar -->
						<div class="col-md-7 col-lg-8 col-xl-9" style="margin:auto;">
							<div class="card">
								<div class="card-body">
									
									<!-- Profile Settings Form -->
									<form>
										<div class="row form-row">
											<div class="col-12 col-md-12">
												<div class="form-group">
													<div class="change-avatar">
														<div class="profile-img">
															<img src="resources/img/patients/patient.jpg" alt="User Image">
														</div>
														<div class="upload-img">
															<div class="change-photo-btn">
																<span><i class="fa fa-upload"></i> Upload Photo</span>
																<input type="file" class="upload">
															</div>
															<small class="form-text text-muted">Allowed JPG, GIF or PNG. Max size of 2MB</small>
														</div>
													</div>
												</div>
											</div>
											<div class="col-12 col-md-6">
												<div class="form-group">
													<label>이름</label><span class="text-danger">*</span>
													<input type="text" class="form-control" value="">
												</div>
											</div>
											<div class="col-12 col-md-6">
												<div class="form-group">
													<label>생년월일</label><span class="text-danger">*</span>
													<input type="date" class="form-control datetimepicker" value="">
												</div>
											</div>
											<div class="col-6">
												<div class="form-group">
													<label>아이디</label><span class="text-danger">*</span>
													<input type="text" class="form-control" value="">
												</div>
											</div>
											<div class="col-12 col-md-6">
												<div class="form-group">
													<label>비밀번호</label><span class="text-danger">*</span>
													<input type="text" class="form-control" value="">
												</div>
											</div>
											<div class="col-12 col-md-6">
												<div class="form-group">
													<label>비밀번호 확인</label><span class="text-danger">*</span>
													<input type="text" class="form-control" value="">
												</div>
											</div>
											<div class="col-12 form-horizontal">
												<div class="form-group">
													<label>이메일</label>
													<input id="oemail1" name="oemail1" class="mailId form-control"  value="" type="text">@
														<select id="oemail2" class="form-control">
															<option value="" selected="selected">- 이메일 선택 -</option>
															<option value="naver.com">naver.com</option>
															<option value="daum.net">daum.net</option>
															<option value="nate.com">nate.com</option>
															<option value="hotmail.com">hotmail.com</option>
															<option value="yahoo.com">yahoo.com</option>
															<option value="empas.com">empas.com</option>
															<option value="korea.com">korea.com</option>
															<option value="dreamwiz.com">dreamwiz.com</option>
															<option value="gmail.com">gmail.com</option>
															<option value="etc">직접입력</option>
													</select>
												</div>
											</div>
											<div class="col-12 col-md-6">
												<div class="form-group">
													<label>혈액형</label>
													<select class="form-control select">
														<option value="" selected="selected">- 혈액형 선택 -</option>
														<option>A-</option>
														<option>A+</option>
														<option>B-</option>
														<option>B+</option>
														<option>AB-</option>
														<option>AB+</option>
														<option>O-</option>
														<option>O+</option>
													</select>
												</div>
											</div>
											<div class="col-12 ">
												<div class="form-inline">
												<label class="">우편번호</label><span class="text-danger">*</span>
													<input type="text" name="zipcode" id="zipcode" class="zipcode form-control" placeholder="우편번호" readonly>
													<input type="button" onclick="execPostCode()" id="zipcode_btn" class="form-control " value="우편번호 찾기">
												</div>
												<div class="form-group">
												<label>주소</label><span class="text-danger">*</span>
													<input type="text" id="addr1" name="addr1" class="addr1 form-control" size="40" placeholder="주소">
												</div>
												<div class="form-group">
												<label>상세주소</label><span class="text-danger">*</span>
													<input type="text" id="addr2" name="addr2" class="addr2 form-control" size="40" placeholder="상세주소">
												</div>
											</div>
											<div class="col-12">
												<div class="form-inline">
												<label class="">휴대전화</label><span class="text-danger">*</span>
												<select id="ophone2_1" name="ophone2_[]" class="form-control">
															<option value="010">010</option>
															<option value="011">011</option>
															<option value="016">016</option>
															<option value="017">017</option>
															<option value="018">018</option>
															<option value="019">019</option>
													</select>
													-
													<input id="ophone2_2" name="ophone2_[]" class="form-control" maxlength="4" size="4" value="" type="text" >
													-
													<input id="ophone2_3" name="ophone2_[]" class="form-control" maxlength="4" size="4" value="" type="text">
												</div>
											</div>
												
											</div>
											
										<div class="submit-section" style="margin-top:20px;">
											<button type="submit" class="btn btn-primary submit-btn" >회원가입</button>
										</div>
										</div>
									</form>
									<!-- /Profile Settings Form -->
									
								</div>
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
										<img src="resources/img/footer-logo.png" alt="logo">
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
										<li><a href="search.html">Search for Doctors</a></li>
										<li><a href="login.html">Login</a></li>
										<li><a href="register.html">Register</a></li>
										<li><a href="booking.html">Booking</a></li>
										<li><a href="patient-dashboard.html">Patient Dashboard</a></li>
									</ul>
								</div>
								<!-- /Footer Widget -->
								
							</div>
							
							<div class="col-lg-3 col-md-6">
							
								<!-- Footer Widget -->
								<div class="footer-widget footer-menu">
									<h2 class="footer-title">For Doctors</h2>
									<ul>
										<li><a href="appointments.html">Appointments</a></li>
										<li><a href="chat.html">Chat</a></li>
										<li><a href="login.html">Login</a></li>
										<li><a href="doctor-register.html">Register</a></li>
										<li><a href="doctor-dashboard.html">Doctor Dashboard</a></li>
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
											<li><a href="term-condition.html">Terms and Conditions</a></li>
											<li><a href="privacy-policy.html">Policy</a></li>
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
		<script src="resources/js/jquery.min.js"></script>
		
		<!-- Bootstrap Core JS -->
		<script src="resources/js/popper.min.js"></script>
		<script src="resources/js/bootstrap.min.js"></script>
		
		<!-- Custom JS -->
		<script src="resources/js/script.js"></script>
		
	</body>
</html>