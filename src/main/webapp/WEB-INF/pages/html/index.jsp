<%@ taglib prefix="c" uri="http://www.springframework.org/tags" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<!--[if IE 8 ]><html class="ie ie8" lang="en"> <![endif]-->
<!--[if (gte IE 9)|!(IE)]><!--><html lang="en"> <!--<![endif]-->
<head>
    <!--Spring-->

	<!--CSS -->
	<link href="<c:url value="/resources/css/style.css" />" rel="stylesheet">
	<link href="<c:url value="/resources/css/colors/green.css" />" rel="stylesheet">
	<!-- custom -->
	<link href="<c:url value="/resources/css/custom/bootstrap.css" />" rel="stylesheet">
	<link href="<c:url value="/resources/css/custom/login.css" />" rel="stylesheet">

	<!--Images-->
	<c:url value="/resources/images/logo.png" var="logoImage"/>
    <c:url value="/resources/images/banner-home-01.jpg" var="bannerImage"/>
    <c:url value="/resources/images/job-list-logo-01.png" var="joblist1logoImage"/>
    <c:url value="/resources/images/job-list-logo-02.png" var="joblist2logoImage"/>
    <c:url value="/resources/images/job-list-logo-03.png" var="joblist3logoImage"/>
    <c:url value="/resources/images/job-list-logo-04.png" var="joblist4logoImage"/>
    <c:url value="/resources/images/job-list-logo-05.png" var="joblist5logoImage"/>
    <c:url value="/resources/images/recent-post-01.jpg" var="recent-post1Image"/>
    <c:url value="/resources/images/recent-post-02.jpg" var="recent-post2Image"/>
    <c:url value="/resources/images/recent-post-03.jpg" var="recent-post3Image"/>

	<!--Scripts-->
	<script src="<c:url value="/resources/scripts/jquery-2.1.3.min.js" />"></script>
	<script src="<c:url value="/resources/scripts/custom.js" />"></script>
	<script src="<c:url value="/resources/scripts/jquery.superfish.js" />"></script>
	<script src="<c:url value="/resources/scripts/jquery.themepunch.tools.min.js" />"></script>
	<script src="<c:url value="/resources/scripts/jquery.themepunch.revolution.min.js" />"></script>
	<script src="<c:url value="/resources/scripts/jquery.themepunch.showbizpro.min.js" />"></script>
	<script src="<c:url value="/resources/scripts/jquery.flexslider-min.js" />"></script>
	<script src="<c:url value="/resources/scripts/chosen.jquery.min.js" />"></script>
	<script src="<c:url value="/resources/scripts/jquery.magnific-popup.min.js" />"></script>
	<script src="<c:url value="/resources/scripts/waypoints.min.js" />"></script>
	<script src="<c:url value="/resources/scripts/jquery.counterup.min.js" />"></script>
	<script src="<c:url value="/resources/scripts/jquery.jpanelmenu.js" />"></script>
	<script src="<c:url value="/resources/scripts/stacktable.js" />"></script>
	<!-- custom -->
	<script src="<c:url value="/resources/scripts/custom/bootstrap.min.js" />"></script>
	<script src="<c:url value="/resources/scripts/custom/socialLogin.js" />"></script>
	<script src="https://apis.google.com/js/api:client.js"></script>
	<script type="text/javascript" src="http://platform.linkedin.com/in.js">
		api_key: 751os35apk8hvv
		//            onLoad: onLinkedInLoad
		authorize: true
	</script>


	<!--Links-->
	<script src="<c:url value="/resources/scripts/html5shiv.js" />"></script>

	<!-- Basic Page Needs
    ================================================== -->
<meta http-equiv="Content-Type" content="text/html; charset=utf-8";>
<title>Work Scout</title>

<!-- Mobile Specific Metas
================================================== -->
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">

<!-- CSS
================================================== -->

<!--[if lt IE 9]>
	<!--script src="${html5.js}"></script>
<![endif]-->

</head>

<body>
<div id="wrapper">


<!-- Header
================================================== -->
<header>
<div class="container">
	<div class="sixteen columns">
	
		<!-- Logo -->
		<div id="logo">
			<h1><a href="${pageContext.request.contextPath}/"><img src="${logoImage}" alt="Work Scout" /></a></h1>
		</div>

		<!-- Menu -->
		<nav id="navigation" class="menu">
			<ul id="responsive">

				<li><a href="${pageContext.request.contextPath}/" id="current">Home</a>
					<ul>
						<li><a href="index.html">Home #1</a></li>
						<li><a href="index-2.html">Home #2</a></li>
						<li><a href="index-3.html">Home #3</a></li>
						<li><a href="index-4.html">Home #4</a></li>
					</ul>
				</li>

				<li><a href="#">Pages</a>
					<ul>
						<li><a href="job-page.html">Job Page</a></li>
						<li><a href="job-page-alt.html">Job Page Alternative</a></li>
						<li><a href="resume-page.html">Resume Page</a></li>
						<li><a href="shortcodes.html">Shortcodes</a></li>
						<li><a href="pricing-tables.html">Pricing Tables</a></li>
						<li><a href="contact.html">Contact</a></li>
					</ul>
				</li>

				<li><a href="#">For Candidates</a>
					<ul>
						<li><a href="browse-jobs.html">Browse Jobs</a></li>
						<li><a href="browse-categories.html">Browse Categories</a></li>
						<li><a href="add-resume.html">Add Resume</a></li>
						<li><a href="manage-resumes.html">Manage Resumes</a></li>
						<li><a href="job-alerts.html">Job Alerts</a></li>
					</ul>
				</li>

				<li><a href="#">For Employers</a>
					<ul>
						<li><a href="add-job.html">Add Job</a></li>
						<li><a href="manage-jobs.html">Manage Jobs</a></li>
						<li><a href="manage-applications.html">Manage Applications</a></li>
						<li><a href="browse-resumes.html">Browse Resumes</a></li>
					</ul>
				</li>

				<li><a href="blog.html">Blog</a></li>
			</ul>


			<ul class="float-right">
				<li><a href="${pageContext.request.contextPath}/login#tab2"><i class="fa fa-user"></i> Sign Up</a></li>
				<%--<li><a href="${pageContext.request.contextPath}/login"><i class="fa fa-lock"></i> Log In</a></li>--%>
				<li><a data-toggle="modal" href="#myModal"><i class="fa fa-lock"></i> Log In</a></li>
			</ul>
			<%--<button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal">Open Modal</button>--%>

		</nav>

		<!-- Navigation -->
		<div id="mobile-navigation">
			<a href="#menu" class="menu-trigger"><i class="fa fa-reorder"></i> Menu</a>
		</div>

	</div>
</div>
</header>
<div class="clearfix"></div>


<!-- Banner
================================================== -->
<div id="banner" style="background: url(${bannerImage})">
	<div class="container">
		<div class="sixteen columns">
			
			<div class="search-container">

				<!-- Form -->
				<h2>Find job</h2>
				<input type="text" class="ico-01" placeholder="job title, keywords or company name" value=""/>
				<input type="text" class="ico-02" placeholder="city, province or region" value=""/>
				<button><i class="fa fa-search"></i></button>

				<!-- Browse Jobs -->
				<div class="browse-jobs">
					Browse job offers by <a href="browse-categories.html"> category</a> or <a href="#">location</a>
				</div>
				
				<!-- Announce -->
				<div class="announce">
					We’ve over <strong>15 000</strong> job offers for you!
				</div>

			</div>

		</div>
	</div>
</div>


<!-- Content
================================================== -->

<!-- Categories -->
<div class="container">
	<div class="sixteen columns">
		<h3 class="margin-bottom-25">Popular Categories</h3>
		<ul id="popular-categories">
			<li><a href="#"><i class="fa fa-line-chart"></i> Accounting / Finance</a></li>
			<li><a href="#"><i class="fa fa-wrench"></i> Automotive Jobs</a></li>
			<li><a href="#"><i class="fa fa-building-o"></i> Construction / Facilities</a></li>
			<li><a href="#"><i class="fa fa-graduation-cap"></i> Education Training</a></li>
			<li><a href="#"><i class="fa fa-medkit"></i> Healthcare</a></li>
			<li><a href="#"><i class="fa fa-cutlery"></i> Restaurant / Food Service</a></li>
			<li><a href="#"><i class="fa fa-globe"></i> Transportation / Logistics</a></li>
			<li><a href="#"><i class="fa fa-laptop"></i> Telecommunications</a></li>
		</ul>

		<div class="clearfix"></div>
		<div class="margin-top-30"></div>

		<a href="browse-categories.html" class="button centered">Browse All Categories</a>
		<div class="margin-bottom-50"></div>
	</div>
</div>


<div class="container">
	
	<!-- Recent Jobs -->
	<div class="eleven columns">
	<div class="padding-right">
		<h3 class="margin-bottom-25">Recent Jobs</h3>
		<ul class="job-list">

			<li class="highlighted"><a href="job-page.html">
				<img src="${joblist1logoImage}" alt="">
				<div class="job-list-content">
					<h4>Marketing Coordinator - SEO / SEM Experience <span class="full-time">Full-Time</span></h4>
					<div class="job-icons">
						<span><i class="fa fa-briefcase"></i> King</span>
						<span><i class="fa fa-map-marker"></i> Sydney</span>
						<span><i class="fa fa-money"></i> $100 / hour</span>
					</div>
				</div>
				</a>
				<div class="clearfix"></div>
			</li>

			<li><a href="job-page.html">
				<img src="${joblist2logoImage}" alt="">
				<div class="job-list-content">
					<h4>Core PHP Developer for Site Maintenance <span class="part-time">Part-Time</span></h4>
					<div class="job-icons">
						<span><i class="fa fa-briefcase"></i> Cubico</span>
						<span><i class="fa fa-map-marker"></i> London</span>
						<span><i class="fa fa-money"></i> $50 / hour</span>
					</div>
				</div>
				</a>
				<div class="clearfix"></div>
			</li>

			<li><a href="job-page.html">
				<img src="${joblist3logoImage}" alt="">
				<div class="job-list-content">
					<h4>Restaurant Team Member - Crew <span class="full-time">Full-Time</span></h4>
					<div class="job-icons">
						<span><i class="fa fa-briefcase"></i> King</span>
						<span><i class="fa fa-map-marker"></i> Sydney</span>
						<span><i class="fa fa-money"></i> $15 / hour</span>
					</div>
				</div>
				</a>
				<div class="clearfix"></div>
			</li>

			<li><a href="job-page.html">
				<img src="${joblist4logoImage}" alt="">
				<div class="job-list-content">
					<h4>Power Systems User Experience Designer  <span class="internship">Internship</span></h4>
					<div class="job-icons">
						<span><i class="fa fa-briefcase"></i> Hexagon</span>
						<span><i class="fa fa-map-marker"></i> London</span>
						<span><i class="fa fa-money"></i> $75 / hour</span>
					</div>
				</div>
				</a>
				<div class="clearfix"></div>
			</li>

			<li><a href="job-page.html">
				<img src="${joblist5logoImage}" alt="">
				<div class="job-list-content">
					<h4>iPhone / Android Music App Development <span class="temporary">Temporary</span></h4>
					<div class="job-icons">
						<span><i class="fa fa-briefcase"></i> Mates</span>
						<span><i class="fa fa-map-marker"></i> New York</span>
						<span><i class="fa fa-money"></i> $115 / hour</span>
					</div>
				</div>
				</a>
				<div class="clearfix"></div>
			</li>
		</ul>

		<a href="browse-jobs.html" class="button centered"><i class="fa fa-plus-circle"></i> Show More Jobs</a>
		<div class="margin-bottom-55"></div>
	</div>
	</div>

	<!-- Job Spotlight -->
	<div class="five columns">
		<h3 class="margin-bottom-5">Job Spotlight</h3>

		<!-- Navigation -->
		<div class="showbiz-navigation">
			<div id="showbiz_left_1" class="sb-navigation-left"><i class="fa fa-angle-left"></i></div>
			<div id="showbiz_right_1" class="sb-navigation-right"><i class="fa fa-angle-right"></i></div>
		</div>
		<div class="clearfix"></div>
		
		<!-- Showbiz Container -->
		<div id="job-spotlight" class="showbiz-container">
			<div class="showbiz" data-left="#showbiz_left_1" data-right="#showbiz_right_1" data-play="#showbiz_play_1" >
				<div class="overflowholder">

					<ul>

						<li>
							<div class="job-spotlight">
								<a href="#"><h4>Social Media: Advertising Coordinator <span class="part-time">Part-Time</span></h4></a>
								<span><i class="fa fa-briefcase"></i> Mates</span>
								<span><i class="fa fa-map-marker"></i> New York</span>
								<span><i class="fa fa-money"></i> $20 / hour</span>
								<p>As advertising & content coordinator, you will support our social media team in producing high quality social content for a range of media channels.</p>
								<a href="job-page.html" class="button">Apply For This Job</a>
							</div>
						</li>

						<li>
							<div class="job-spotlight">
								<a href="#"><h4>Prestashop / WooCommerce Product Listing <span class="freelance">Freelance</span></h4></a>
								<span><i class="fa fa-briefcase"></i> King</span>
								<span><i class="fa fa-map-marker"></i> London</span>
								<span><i class="fa fa-money"></i> $25 / hour</span>
								<p>Etiam suscipit tellus ante, sit amet hendrerit magna varius in. Pellentesque lorem quis enim venenatis pellentesque.</p>
								<a href="job-page.html" class="button">Apply For This Job</a>
							</div>
						</li>

						<li>
							<div class="job-spotlight">
								<a href="#"><h4>Logo Design <span class="freelance">Freelance</span></h4></a>
								<span><i class="fa fa-briefcase"></i> Hexagon</span>
								<span><i class="fa fa-map-marker"></i> Sydney</span>
								<span><i class="fa fa-money"></i> $10 / hour</span>
								<p>Proin ligula neque, pretium et ipsum eget, mattis commodo dolor. Etiam tincidunt libero quis commodo.</p>
								<a href="job-page.html" class="button">Apply For This Job</a>
							</div>
						</li>


					</ul>
					<div class="clearfix"></div>

				</div>
				<div class="clearfix"></div>
			</div>
		</div>

	</div>
</div>


<!-- Testimonials -->
<div id="testimonials">
	<!-- Slider -->
	<div class="container">
		<div class="sixteen columns">
			<div class="testimonials-slider">
				  <ul class="slides">
				    <li>
				      <p>I have already heard back about the internship I applied through Job Finder, that's the fastest job reply I've ever gotten and it's so much better than waiting weeks to hear back.
				      <span>Collis Ta’eed, Envato</span></p>
				    </li>

				    <li>
				      <p>Nam eu eleifend nulla. Duis consectetur sit amet risus sit amet venenatis. Pellentesque pulvinar ante a tincidunt placerat. Donec dapibus efficitur arcu, a rhoncus lectus egestas elementum.
				      <span>John Doe</span></p>
				    </li>
				    
				    <li>
				      <p>Maecenas congue sed massa et porttitor. Duis placerat commodo ex, ut faucibus est facilisis ac. Donec eleifend arcu sed sem posuere aliquet. Etiam lorem metus, suscipit vel tortor vitae.
				      <span>Tom Smith</span></p>
				    </li>

				  </ul>
			</div>
		</div>
	</div>
</div>


<!-- Infobox -->
<div class="infobox">
	<div class="container">
		<div class="sixteen columns">Start Building Your Own Job Board Now <a href="${pageContext.request.contextPath}/login">Get Started</a></div>
	</div>
</div>


<!-- Recent Posts -->
<div class="container">
	<div class="sixteen columns">
		<h3 class="margin-bottom-25">Recent Posts</h3>
	</div>


	<div class="one-third column">

		<!-- Post #1 -->
		<div class="recent-post">
			<div class="recent-post-img"><a href="blog-single-post.html"><img src="${recent-post1Image}" alt=""></a><div class="hover-icon"></div></div>
			<a href="blog-single-post.html"><h4>Hey Job Seeker, It’s Time To Get Up And Get Hired</h4></a>
			<div class="meta-tags">
				<span>October 10, 2015</span>
				<span><a href="#">0 Comments</a></span>
			</div>
			<p>The world of job seeking can be all consuming. From secretly stalking the open reqs page of your dream company to sending endless applications.</p>
			<a href="blog-single-post.html" class="button">Read More</a>
		</div>

	</div>


	<div class="one-third column">

		<!-- Post #2 -->
		<div class="recent-post">
			<div class="recent-post-img"><a href="blog-single-post.html"><img src="${recent-post2Image}" alt=""></a><div class="hover-icon"></div></div>
			<a href="blog-single-post.html"><h4>How to "Woo" a Recruiter and Land Your Dream Job</h4></a>
			<div class="meta-tags">
				<span>September 12, 2015</span>
				<span><a href="#">0 Comments</a></span>
			</div>
			<p>Struggling to find your significant other the perfect Valentine’s Day gift? If I may make a suggestion: woo a recruiter. </p>
			<a href="blog-single-post.html" class="button">Read More</a>
		</div>

	</div>

	<div class="one-third column">

		<!-- Post #3 -->
		<div class="recent-post">
			<div class="recent-post-img"><a href="blog-single-post.html"><img src="${recent-post3Image}" alt=""></a><div class="hover-icon"></div></div>
			<a href="blog-single-post.html"><h4>11 Tips to Help You Get New Clients Through Cold Calling</h4></a>
			<div class="meta-tags">
				<span>August 27, 2015</span>
				<span><a href="#">0 Comments</a></span>
			</div>
			<p>If your dream employer appears on this list, you’re certainly in good company. But it also means you’re up for some intense competition.</p>
			<a href="blog-single-post.html" class="button">Read More</a>
		</div>
	</div>

</div>


<!-- Footer
================================================== -->
<div class="margin-top-15"></div>

<div id="footer">
	<!-- Main -->
	<div class="container">

		<div class="seven columns">
			<h4>About</h4>
			<p>Morbi convallis bibendum urna ut viverra. Maecenas quis consequat libero, a feugiat eros. Nunc ut lacinia tortor morbi ultricies laoreet ullamcorper phasellus semper.</p>
			<a href="#" class="button">Get Started</a>
		</div>

		<div class="three columns">
			<h4>Company</h4>
			<ul class="footer-links">
				<li><a href="#">About Us</a></li>
				<li><a href="#">Careers</a></li>
				<li><a href="#">Our Blog</a></li>
				<li><a href="#">Terms of Service</a></li>
				<li><a href="#">Privacy Policy</a></li>
				<li><a href="#">Hiring Hub</a></li>
			</ul>
		</div>
		
		<div class="three columns">
			<h4>Press</h4>
			<ul class="footer-links">
				<li><a href="#">In the News</a></li>
				<li><a href="#">Press Releases</a></li>
				<li><a href="#">Awards</a></li>
				<li><a href="#">Testimonials</a></li>
				<li><a href="#">Timeline</a></li>
			</ul>
		</div>		

		<div class="three columns">
			<h4>Browse</h4>
			<ul class="footer-links">
				<li><a href="#">Freelancers by Category</a></li>
				<li><a href="#">Freelancers in USA</a></li>
				<li><a href="#">Freelancers in UK</a></li>
				<li><a href="#">Freelancers in Canada</a></li>
				<li><a href="#">Freelancers in Australia</a></li>
				<li><a href="#">Find Jobs</a></li>

			</ul>
		</div>

	</div>

	<!-- Bottom -->
	<div class="container">
		<div class="footer-bottom">
			<div class="sixteen columns">
				<h4>Follow Us</h4>
				<ul class="social-icons">
					<li><a class="facebook" href="#"><i class="icon-facebook"></i></a></li>
					<li><a class="twitter" href="#"><i class="icon-twitter"></i></a></li>
					<li><a class="gplus" href="#"><i class="icon-gplus"></i></a></li>
					<li><a class="linkedin" href="#"><i class="icon-linkedin"></i></a></li>
				</ul>
				<div class="copyrights">©  Copyright 2015 by <a href="#">Work Scout</a>. All Rights Reserved.</div>
			</div>
		</div>
	</div>

</div>

<!-- Back To Top Button -->
<div id="backtotop"><a href="#"></a></div>

</div>
<!-- Wrapper / End -->

<!-- Login Modal -->
<div class="modal fade" id="myModal" role="dialog">
	<div class="modal-dialog">
		<!-- Modal content-->
		<div class="modal-content">
			<div class="modal-header">
				<ul class="tabs-nav">
					<li class="" ><a href="#registerTab" onclick="changeLoginView('toLogin')">Login</a></li>
					<li><a href="#loginTab" onclick="changeLoginView('toRegister')">Register</a></li>
					<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
				</ul>
			</div>
			<div class="modal-body">
				<div class="tabs-container">
					<!-- Login -->
					<div class="tab-content" id="loginTab" style="display: none;">
						<form method="post" class="login">
							<p class="form-row form-row-wide">
								<input type="text" class="input-text" name="username" id="username" placeholder="Username or Email Address" value="" />
							</p>
							<p class="form-row form-row-wide">
								<input class="input-text" type="password" name="password" id="password" placeholder="Password"/>
							</p>
							<p class="form-row form-row-wide">
								<input type="submit" class="button" name="login" value="Login" />
								<label for="rememberme" class="rememberme login-font">
									<input name="rememberme" type="checkbox" id="rememberme" value="forever" /> Remember Me</label>
							</p>
							<p class="lost_password login-font">
								<a href="#" >Lost Your Password?</a>
							</p>
						</form>
					</div>

					<!-- Register -->
					<div class="tab-content" id="registerTab" style="display: none;">
						<form method="post" class="register">
							<p class="form-row form-row-wide">
								<input type="email" class="input-text" name="reg_email" id="reg_email" value="" placeholder="Email Address"/>
							</p>
							<p class="form-row form-row-wide">
								<input type="text" class="input-text" name="reg_username" id="reg_username" value="" placeholder="Username"/>
							</p>
							<p class="form-row form-row-wide">
								<input type="password" class="input-text" name="password" id="reg_password" placeholder="Password"/>
							</p>
							<p class="form-row form-row-wide">
								<input type="password" class="input-text" name="password" id="reg_password2" placeholder="Repeat Password"/>
							</p>
							<p class="form-row">
								<input type="submit" class="button" name="register" value="Register" />
							</p>

						</form>
					</div>
				</div>
			</div>
			<div class="modal-footer" style="text-align: center;">
				<div style="display: inline-block; margin: 0 auto;">
					<button id='facebook' class="login-button-vertical" onclick="fbLogin()"><img src="<c:url value="/resources/images/login/facebookN.png"/>" /></button>
					<button id="twitter" class="login-button-vertical" ><img src="<c:url value="/resources/images/login/twitterN.png"/>" /></button>
					<button id="google" class="customGPlusSignIn login-button-vertical"><img src="<c:url value="/resources/images/login/gmailN.png"/>" /></button>
					<button id="linkedin" class="login-button-vertical" onclick="liAuth()"><img src="<c:url value="/resources/images/login/linkedInN.png"/>" /></button>
				</div>
			</div>
		</div>

	</div>
</div>


</body>
</html>