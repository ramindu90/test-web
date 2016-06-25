<%@ taglib prefix="c" uri="http://www.springframework.org/tags" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<!--[if IE 8 ]><html class="ie ie8" lang="en"> <![endif]-->
<!--[if (gte IE 9)|!(IE)]><!--><html lang="en"> <!--<![endif]-->
<head>

<!-- Basic Page Needs
================================================== -->
    <meta charset="utf-8">
    <title>Work Scout</title>

<!-- Mobile Specific Metas
================================================== -->
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">

<!-- CSS
================================================== -->
    <link href="<c:url value="/resources/css/style.css" />" rel="stylesheet">
    <link href="<c:url value="/resources/css/colors/green.css" />" rel="stylesheet">
	<link href="<c:url value="/resources/css/custom/custom.css" />" rel="stylesheet">
	<!-- custom -->
	<link href="<c:url value="/resources/css/custom/bootstrap.css" />" rel="stylesheet">

<!--[if lt IE 9]>
<![endif]-->
	<script src="<c:url value="/resources/scripts/html5shiv.js" />"></script>
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

    <!-- WYSIWYG Editor -->
    <script type="text/javascript" src="<c:url value="/resources/scripts/jquery.sceditor.bbcode.min.js" />"></script>
    <script type="text/javascript" src="<c:url value="/resources/scripts/jquery.sceditor.js" />"></script>
	<!-- custom -->
	<script src="<c:url value="/resources/scripts/custom/jobFinderInfoAdd.js" />"></script>
	<script src="<c:url value="/resources/scripts/custom/bootstrap.min.js" />"></script>


	<!-- Images -->
	<c:url value="/resources/images/login/defaultProfileImg.jpeg" var="profileImage"/>
	<c:url value="/resources/images/common/remove_icon.png" var="removeIconImage"/>
	<%--<c:url value="/resources/images/common/remove_icon.png"/>--%>


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
			<h1><a href="index.html"><img src="images/logo.png" alt="Work Scout" /></a></h1>
		</div>

		<!-- Menu -->
		<nav id="navigation" class="menu">
			<ul id="responsive">

				<li><a href="index.html">Home</a>
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

				<li><a href="#" id="current">For Candidates</a>
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


			<ul class="responsive float-right">
				<li><a href="my-account.html#tab2"><i class="fa fa-user"></i> Sign Up</a></li>
				<li><a href="my-account.html"><i class="fa fa-lock"></i> Log In</a></li>
			</ul>

		</nav>

		<!-- Navigation -->
		<div id="mobile-navigation">
			<a href="#menu" class="menu-trigger"><i class="fa fa-reorder"></i> Menu</a>
		</div>

	</div>
</div>
</header>
<div class="clearfix"></div>


<!-- Titlebar
================================================== -->
<div id="titlebar" class="single submit-page">
	<div class="container">

		<div class="sixteen columns">
			<h2><i class="fa fa-plus-circle"></i> Add Your Information</h2>
		</div>

	</div>
</div>


<!-- Content
================================================== -->
<div class="container">
	
	<!-- Submit Page -->
	<div class="sixteen columns">
		<div class="submit-page">
			<div class="sixteen columns">
				<h3>Tabs</h3>
				<div class="margin-bottom-20"></div>

				<!-- Tabs Navigation -->
				<ul class="tabs-nav">
					<li class=""><a href="#personalInformationDiv" onclick="changeFinderInformationAddView('toPersonalInfoDiv')">1. Personal Info</a></li>
					<li><a href="#educationalInfoDiv" onclick="changeFinderInformationAddView('educationalInfoDiv')">2. Educational Info</a></li>
					<li><a href="#tab3" onclick="changeFinderInformationAddView('toRegister')">3. Register</a></li>
				</ul>

				<!-- Tabs Content -->
				<div class="tabs-container">
					<div id="personalInformationDiv" class="tab-content"  style="display: none; overflow-x:auto;">
						<table style="width:100%"  class="nine columns">
							<tr>
								<td class="three columns"><h5 style="text-align:left;float:left;">First Name</h5></td>
								<td class="six columns"><input class="search-field" type="text" placeholder="Your First name" value=""/></td>
							</tr>
							<tr>
								<td class="three columns"><h5 style="text-align:left;float:left;">Last Name</h5></td>
								<td class="six columns"><input class="search-field" type="text" placeholder="Your Last name" value=""/></td>
							</tr>
							<tr>
								<td class="three columns"><h5 style="clear:both;">Email Address</h5></td>
								<td class="six columns"><input class="search-field" type="text" placeholder="mail@example.com" value=""/></td>
							</tr>
							<tr>
								<td class="three columns"><h5 style="clear:both;">Phone Number</h5></td>
								<td class="six columns"><input class="search-field" type="text" placeholder="Phone e.g. +94112824625" value=""/></td>
							</tr>
							<tr>
								<td class="three columns"><h5>Location</h5></td>
								<td class="six columns"><input class="search-field" type="text" placeholder="e.g. London, UK" value=""/></td>
							</tr>
							<tr>
								<td class="three columns">
									<h5 style="float:left">Photo <span>(optional)</span></h5>
									<label class="upload-btn gray">
										<input type="file" multiple />
										<i class="fa fa-upload"></i> Browse
									</label>
								</td>
								<td class="six columns">
									<img src="${profileImage}" alt="profile view" style="width:150px;height:150px;float: left;">
								</td>
							</tr>
							<%--<tr>--%>
								<%--<td>--%>
									<%--<h5>URL(s) <span>(optional)</span></h5>--%>
								<%--</td>--%>
								<%--<td>--%>
									<%--<div class="form boxed box-to-clone url-box">--%>
										<%--<a href="#" class="close-form remove-box button"><i class="fa fa-close"></i></a>--%>
										<%--<input class="search-field" type="text" placeholder="Name" value=""/>--%>
										<%--<input class="search-field" type="text" placeholder="http://" value=""/>--%>
									<%--</div>--%>

									<%--<a href="#" class="button gray add-url add-box"><i class="fa fa-plus-circle"></i> Add URL</a>--%>
									<%--<p class="note">Optionally provide links to any of your websites or social network profiles.</p>--%>
								<%--</td>--%>
							<%--</tr>--%>
						</table>
					</div>

					<div class="tab-content nine columns" id="educationalInfoDiv" style="display: none; overflow-x:auto;">
						<table id="educationInfoTable" style="width:100%"   class="manage-table resumes responsive-table stacktable large-only">
						</table>
						<a data-toggle="modal" href="#educationalModal" class="button gray add-education add-box"><i class="fa fa-plus-circle"></i> Add Education</a>
					</div>
				</div>

				<br>
			</div>
			<div class="divider margin-top-0 padding-reset"></div>
			<a href="#" class="button big margin-top-5">Preview <i class="fa fa-arrow-circle-right"></i></a>

		</div>
	</div>

</div>


<!-- Footer
================================================== -->
<div class="margin-top-60"></div>

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


<!-- Educational Modal -->
<div class="modal registerModals" id="educationalModal" role="dialog">
	<div class="modal-dialog">
		<!-- Modal content-->
		<div class="modal-content">
			<div class="modal-body">
				<table style="width:100%">
					<tr>
						<td><h5 style="text-align:left;float:left;">School/ University</h5></td>
						<td><input id="schoolOrUniversityName" class="search-field" type="text" placeholder="Name of the school or University" value=""/></td>
					</tr>
					<tr>
						<td><h5 style="text-align:left;float:left;">Year</h5></td>
						<td><input id="year" class="search-field" type="text" placeholder="la la la" value=""/></td>
					</tr>
					<tr>
						<td><h5 style="text-align:left;float:left;">Degree Level</h5></td>
						<td>
							<select id="degreeLevel" data-placeholder="Choose Category" class="chosen-select-no-single" >
								<option value="" disabled selected>Select your degree level</option>
								<option value="oldest">Oldest</option>
								<option value="expiry">Expiring Soon</option>
								<option value="ratehigh">Hourly Rate – Highest First</option>
								<option value="ratelow">Hourly Rate – Lowest First</option>
							</select>
						</td>
					</tr>
					<tr>
						<td><h5 style="text-align:left;float:left;">Field of Study</h5></td>
						<td><input id="fieldOfStudy" class="search-field" type="text" placeholder="e.g: Computer Science" value=""/></td>
					</tr>
					<tr>
						<td><h5 style="text-align:left;float:left;">Grade/ Grades</h5></td>
						<td><input id="grade" class="search-field" type="text" placeholder="e.g: 2nd Upper" value=""/></td>
					</tr>
					<tr>
						<td><h5 style="text-align:left;float:left;">Country</h5></td>
						<td><input id="country" class="search-field" type="text" placeholder="e.g: Sri Lanka" value=""/></td>
					</tr>
					<tr>
						<td></td>
						<td>
							<a href="#" class="button cancelButton" data-dismiss="modal" style="float:left"><i class="fa fa-plus-circle"></i> Cancel</a>
							<a data-toggle="modal" href="#" class="button saveButton" style="float:right" onclick="addEducationalInfo()"><i class="fa fa-plus-circle"></i> Save</a>
						</td>
					</tr>
				</table>
			</div>
		</div>

	</div>
</div>

</body>
</html>