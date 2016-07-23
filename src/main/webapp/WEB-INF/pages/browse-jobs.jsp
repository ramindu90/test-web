<%@ taglib prefix="c" uri="http://www.springframework.org/tags" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<!--[if lt IE 7]>
<html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>
<html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>
<html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!-->
<html class="no-js"> <!--<![endif]-->
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Job Find</title>
    <meta name="description" content="company is a free job board template">
    <meta name="author" content="Ohidul">
    <meta name="keyword" content="html, css, bootstrap, job-board">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,700,800' rel='stylesheet' type='text/css'>

    <!-- Place favicon.ico and apple-touch-icon.png in the root directory -->
    <link rel="shortcut icon" href="favicon.ico" type="image/x-icon">
    <link rel="icon" href="favicon.ico" type="image/x-icon">

    <!--CSS -->
    <link href="<c:url value="/resources/css/normalize.css" />" rel="stylesheet">
    <link href="<c:url value="/resources/css/font-awesome.min.css" />" rel="stylesheet">
    <link href="<c:url value="/resources/css/fontello.css" />" rel="stylesheet">
    <link href="<c:url value="/resources/css/animate.css" />" rel="stylesheet">
    <link href="<c:url value="/resources/css/bootstrap.css" />" rel="stylesheet">
    <link href="<c:url value="/resources/css/owl.theme.css" />" rel="stylesheet">
    <link href="<c:url value="/resources/css/owl.carousel.css" />" rel="stylesheet">
    <link href="<c:url value="/resources/css/owl.transitions.css" />" rel="stylesheet">
    <link href="<c:url value="/resources/css/style.css" />" rel="stylesheet">
    <link href="<c:url value="/resources/css/responsive.css" />" rel="stylesheet">
    <link href="<c:url value="/resources/css/bootstrap-select.css" />" rel="stylesheet">
    <link href="<c:url value="/resources/css/custom.css" />" rel="stylesheet">
    <link href="<c:url value="/resources/css/jasny-bootstrap.css" />" rel="stylesheet">
    <link href="<c:url value="/resources/css/normalize.css" />" rel="stylesheet">
    <link href="<c:url value="/resources/css/custom/browse-jobs.css" />" rel="stylesheet">
    <link href="<c:url value="/resources/css/nav-bar-side-menu.css" />" rel="stylesheet">

    <link href="<c:url value="/resources/css/leaflet/leaflet.css" />" rel="stylesheet">
    <link href="<c:url value="/resources/css/leaflet/leaflet.markercluster.css" />" rel="stylesheet">
    <link href="<c:url value="/resources/css/uikit/uikit.min.css" />" rel="stylesheet">
    <link href="<c:url value="/resources/css/uikit/addons/uikit.addons.min.css" />" rel="stylesheet">


    <!--Scripts-->
    <script src="<c:url value="/resources/js/vendor/modernizr-2.6.2.min.js" />"></script>
    <script src="<c:url value="/resources/js/vendor/jquery-1.10.2.min.js" />"></script>
    <script src="<c:url value="/resources/js/bootstrap.min.js" />"></script>
    <script src="<c:url value="/resources/js/bootstrap-select.js" />"></script>
    <script src="<c:url value="/resources/js/owl.carousel.min.js" />"></script>
    <script src="<c:url value="/resources/js/wow.js" />"></script>
    <script src="<c:url value="/resources/js/main.js" />"></script>
    <script src="<c:url value="/resources/js/jasny-bootstrap.js" />"></script>
    <script>window.jQuery || document.write('<script src="js/vendor/jquery-1.10.2.min.js"><\/script>')</script>

    <script src="<c:url value="/resources/js/leaflet/leaflet.js" />"></script>
    <script src="<c:url value="/resources/js/leaflet/leaflet.markercluster.js" />"></script>
    <script src="<c:url value="/resources/js/leaflet/marker.js" />"></script>
    <script src="<c:url value="/resources/js/leaflet/marker.rotate.js" />"></script>
    <script src="<c:url value="/resources/js/uikit/uikit.min.js" />"></script>
    <script src="<c:url value="/resources/js/uikit/addons/notify.min.js" />"></script>
    <script src="<c:url value="/resources/js/custom/browseJobs.js" />"></script>
    <script src="<c:url value="/resources/js/bootstrap-paginator.min.js" />"></script>
    <script src="<c:url value="/resources/js/jquery.bootpag.min.js" />"></script>

    <!--Images-->
    <c:url value="/resources/images/logo.png" var="logoImage"/>
    <c:url value="/resources/img/banners/subheader-image-jobline-1.jpg" var="subBannerImage1"/>
    <c:url value="/resources/img/footer-logo.png" var="footerLogo"/>
    <c:url value="/resources/img/login/facebookN.png" var="facebookN"/>
    <c:url value="/resources/img/login/twitterN.png" var="twitterN"/>
    <c:url value="/resources/img/login/gmailN.png" var="gmailN"/>
    <c:url value="/resources/img/login/linkedInN.png" var="linkedInN"/>

</head>
<body>

<div id="preloader">
    <div id="status">&nbsp;</div>
</div>
<!-- Body content -->

<nav class="navbar navbar-default">
    <div class="container">
        <!-- Brand and toggle get grouped for better mobile display -->
        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="main-navigation-bar">
            <div class="navbar-right">
                <button class="navbar-btn nav-button wow" data-wow-delay="0.6s"><i class="fa fa-lock"></i> Sign up
                </button>
                <button class="navbar-btn nav-button wow login" data-wow-delay="0.8s" data-toggle="modal"
                        href="#login-modal"><i class="fa fa-user"></i> Login
                </button>
                <button class="navbar-btn nav-button wow employer" data-wow-delay="0.2s">Employer Site</button>
            </div>
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse"
                        data-target="#main-navigation-bar">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="#"><img src="${logoImage}" alt=""></a>
            </div>
            <div class="navbar-nav">
                <button class="navbar-btn nav-button wow" data-wow-delay="0.6s">Home</button>
                <button class="navbar-btn nav-button wow" data-wow-delay="0.6s">Browse Jobs</button>
                <button class="navbar-btn nav-button wow" data-wow-delay="0.6s">Blog</button>
            </div>
        </div><!-- /.navbar-collapse -->

    </div><!-- /.container-fluid -->
</nav>

<div class="slider-area sub-slider-area-large">
    <div class="">
        <div id="sub-bg-slider" class="">
            <div class="item"><img src="${subBannerImage1}" alt="sub-header"></div>
        </div>
    </div>
    <div class="container slider-content">
        <div class="row">
            <div class="col-lg-12 col-md-12 col-sm-12">

                <h3><strong>EXPLORE THOUSAND OF JOBS WITH JUST SIMPLE SEARCH...</strong></h3>
                <div class="main-search-bar search-form wow pulse" data-wow-delay="0.8s">
                    <form action="" class=" form-inline">
                        <div class="form-group">
                            <input type="text" class="form-control main-search " placeholder="Job Key Word">
                        </div>
                        <div class="form-group">
                            <input type="text" class="form-control main-search" placeholder="Job Key Word">
                        </div>
                        <div class="form-group specialism-search">
                            <select class="form-control main-search selectpicker" data-show-subtext="true"
                                    data-live-search="true">
                                <option value="" disabled selected>Open this select menu</option>
                                <option value="1">One</option>
                                <option value="2">Two</option>
                                <option value="3">Three</option>
                            </select>
                        </div>
                        <div class="form-group">
                            <button class="search-button form-control main-search"><i class="fa fa-search"></i></button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="content-area">
    <div class="container jobs row">
        <div class="col-md-3 browse-jobs">
            <div class="nav-side-menu" id="dashboard-nav-side-menu-job-browse">
                <div class="brand">FILTERING CRITERIA</div>
                <i class="fa fa-bars fa-2x toggle-btn" data-toggle="collapse" data-target="#menu-content"></i>

                <div class="menu-list" style="clear: both;">

                    <ul id="menu-content" class="menu-content collapse out">

                        <li data-toggle="collapse" data-target="#vacancy-type" class="collapsed menu-list-item"
                            id="profile-section-collapse-id1">
                            <a class="clickable-anchor"><i class="fa fa-user fa-lg"></i> Vacancy Type <span
                                    class="arrow"></span></a>
                        </li>
                        <ul class="sub-menu collapse" id="vacancy-type">
                            <li id="#1ba"><label><input type="checkbox" value="" class="side-nav-menu">
                                Volunteer</label></li>
                            <li id="#2ba"><label><input type="checkbox" value="" class="side-nav-menu"> Part
                                time</label></li>
                            <li id="#3ba"><label><input type="checkbox" value="" class="side-nav-menu"> Full
                                time</label></li>
                            <li id="#4ba"><label><input type="checkbox" value="" class="side-nav-menu">
                                Internship</label></li>
                        </ul>

                        <li data-toggle="collapse" data-target="#specialism-type" class="collapsed menu-list-item"
                            id="profile-section-collapse-id2">
                            <a class="clickable-anchor"><i class="fa fa-user fa-lg"></i> Specialism<span
                                    class="arrow"></span></a>
                        </li>
                        <ul class="sub-menu collapse" id="specialism-type">
                            <li id="#1a"><label><input type="checkbox" value="" class="side-nav-menu">
                                Accountancy</label></li>
                            <li id="#2a"><label><input type="checkbox" value="" class="side-nav-menu"> Banking</label>
                            </li>
                            <li id="#3a"><label><input type="checkbox" value="" class="side-nav-menu"> Graduate</label>
                            </li>
                            <li id="#4a"><label><input type="checkbox" value="" class="side-nav-menu"> Finance</label>
                            </li>
                        </ul>

                        <li data-toggle="collapse" data-target="#salary" class="collapsed menu-list-item"
                            id="profile-section-collapse-id">
                            <a class="clickable-anchor"><i class="fa fa-user fa-lg"></i> Salary <span
                                    class="arrow"></span></a>
                        </li>
                        <ul class="sub-menu collapse" id="salary">
                            <li id="#1"><label><input type="checkbox" value="" class="side-nav-menu"> 0-$15000</label>
                            </li>
                            <li id="#2"><label><input type="checkbox" value="" class="side-nav-menu">
                                $15000-$30000</label></li>
                            <li id="#3"><label><input type="checkbox" value="" class="side-nav-menu">
                                $30000-$40000</label></li>
                        </ul>

                        <li data-toggle="collapse" data-target="#experience" class="collapsed menu-list-item"
                            id="resume-section-collapse-id3">
                            <a class="clickable-anchor"><i class="fa fa-file-text fa-lg"></i> Experience <span
                                    class="arrow"></span></a>
                        </li>
                        <ul class="sub-menu collapse" id="experience">
                            <li id="#11"><label><input type="checkbox" value="" class="side-nav-menu"/> Fresh</label>
                            </li>
                            <li id="#22"><label><input type="checkbox" value="" class="side-nav-menu"/> Less Than 1 Year</label>
                            </li>
                            <li id="#33"><label><input type="checkbox" value="" class="side-nav-menu"/> 2 Years</label>
                            </li>
                            <li id="#44"><label><input type="checkbox" value="" class="side-nav-menu"/> 3 Years</label>
                            </li>
                            <li id="#55"><label><input type="checkbox" value="" class="side-nav-menu"/> 4 Years</label>
                            </li>
                        </ul>


                        <li data-toggle="collapse" data-target="#qualifications" class="collapsed menu-list-item"
                            id="resume-section-collapse-id">
                            <a class="clickable-anchor"><i class="fa fa-file-text fa-lg"></i> Qualification <span
                                    class="arrow"></span></a>
                        </li>
                        <ul class="sub-menu collapse" id="qualifications">
                            <li id="#111"><label><input type="checkbox" value="" class="side-nav-menu"/>
                                Certificate</label></li>
                            <li id="#222"><label><input type="checkbox" value="" class="side-nav-menu"/> Diploma</label>
                            </li>
                            <li id="#333"><label><input type="checkbox" value="" class="side-nav-menu"/> Associate
                                Degree</label></li>
                            <li id="#444"><label><input type="checkbox" value="" class="side-nav-menu"/> Bachelor Degree</label>
                            </li>
                            <li id="#555"><label><input type="checkbox" value="" class="side-nav-menu"/> Masters Degree</label>
                            </li>
                            <li id="#666"><label><input type="checkbox" value="" class="side-nav-menu"/> Doctorate
                                Degree</label></li>
                        </ul>
                    </ul>
                </div>
            </div>
        </div>

        <div class="col-md-9" id="short-listed-jobs-section">
            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                <div class="main-heading">
                    <h3><strong>30+ JOBS & VACANCIES</strong></h3>
                </div>
            </div>
            <div class="col-md-12">
                <div class="table-responsive">
                    <table class="table main-page-jobs-table main-page-applied-shortlisted-jobs-table">
                        <tbody id="browse-jobs-tbody">
                        <%--<tr class="even col-md-12">--%>
                            <%--<td class="col-md-1"><img src="img/job-logo1.png" alt="" width="50px" height="50px"></td>--%>
                            <%--<td class="tbl-title col-md-8"><h4>Web Designer</h4>--%>
                                <%--<p><i class="fa fa-briefcase"></i>WSO2 Inc. &nbsp;&nbsp;&nbsp;<i--%>
                                        <%--class="fa fa-map-marker" aria-hidden="true"></i>San Franciso, USA &nbsp;&nbsp;&nbsp; &dollar;--%>
                                    <%--14000</p></td>--%>
                            <%--<td class="tbl-title col-md-2"><a class="job-type-btn job-type-green clickable-anchor">Volunteer</a>--%>
                            <%--</td>--%>
                            <%--<!--<td class="col-md-3"><p><i class="fa fa-briefcase"></i>WSO2 Inc.</p> <p><i class="fa fa-map-marker" aria-hidden="true"></i>San Franciso, USA</p> <p>&dollar; 14000</p></td>-->--%>
                        <%--</tr>--%>
                        <%--<tr class="even col-md-12">--%>
                            <%--<td class="col-md-1"><img src="img/job-logo1.png" alt="" width="50px" height="50px"></td>--%>
                            <%--<td class="tbl-title col-md-8"><h4>Web Designer</h4>--%>
                                <%--<p><i class="fa fa-briefcase"></i>WSO2 Inc. &nbsp;&nbsp;&nbsp;<i class="fa fa-map-marker" aria-hidden="true"></i>--%>
                                    <%--San Franciso, USA &nbsp;&nbsp;&nbsp; &dollar;14000</p></td>--%>
                            <%--<td class="tbl-title col-md-2"><a class="job-type-btn job-type-blue clickable-anchor">Part time</a></td>--%>
                        <%--</tr>--%>
                        <%--<tr class="odd col-md-12">--%>
                            <%--<td class="col-md-1"><img src="img/job-logo1.png" alt="" width="50px" height="50px"></td>--%>
                            <%--<td class="tbl-title col-md-8"><h4>Web Designer</h4>--%>
                                <%--<p><i class="fa fa-briefcase"></i>WSO2 Inc. &nbsp;&nbsp;&nbsp;<i--%>
                                        <%--class="fa fa-map-marker" aria-hidden="true"></i>San Franciso, USA &nbsp;&nbsp;&nbsp; &dollar;--%>
                                    <%--14000</p></td>--%>
                            <%--<td class="tbl-title col-md-2"><a class="job-type-btn job-type-red clickable-anchor">Full--%>
                                <%--time</a></td>--%>
                        <%--</tr>--%>
                        <%--<tr class="odd col-md-12">--%>
                            <%--<td class="col-md-1"><img src="img/job-logo1.png" alt="" width="50px" height="50px"></td>--%>
                            <%--<td class="tbl-title col-md-8"><h4>Web Designer</h4>--%>
                                <%--<p><i class="fa fa-briefcase"></i>WSO2 Inc. &nbsp;&nbsp;&nbsp;<i--%>
                                        <%--class="fa fa-map-marker" aria-hidden="true"></i>San Franciso, USA &nbsp;&nbsp;&nbsp; &dollar;--%>
                                    <%--14000</p></td>--%>
                            <%--<td class="tbl-title col-md-2"><a--%>
                                    <%--class="job-type-btn job-type-dark-yellow clickable-anchor">Internship</a></td>--%>
                        <%--</tr>--%>
                        <%--<tr class="even col-md-12">--%>
                            <%--<td class="col-md-1"><img src="img/job-logo1.png" alt="" width="50px" height="50px"></td>--%>
                            <%--<td class="tbl-title col-md-8"><h4>Web Designer</h4>--%>
                                <%--<p><i class="fa fa-briefcase"></i>WSO2 Inc. &nbsp;&nbsp;&nbsp;<i--%>
                                        <%--class="fa fa-map-marker" aria-hidden="true"></i>San Franciso, USA &nbsp;&nbsp;&nbsp; &dollar;--%>
                                    <%--14000</p></td>--%>
                            <%--<td class="tbl-title col-md-2"><a class="job-type-btn job-type-red clickable-anchor">Full--%>
                                <%--time</a></td>--%>
                        <%--</tr>--%>
                        <%--<tr class="even col-md-12">--%>
                            <%--<td class="col-md-1"><img src="img/job-logo1.png" alt="" width="50px" height="50px"></td>--%>
                            <%--<td class="tbl-title col-md-8"><h4>Web Designer</h4>--%>
                                <%--<p><i class="fa fa-briefcase"></i>WSO2 Inc. &nbsp;&nbsp;&nbsp;<i--%>
                                        <%--class="fa fa-map-marker" aria-hidden="true"></i>San Franciso, USA &nbsp;&nbsp;&nbsp; &dollar;--%>
                                    <%--14000</p></td>--%>
                            <%--<td class="tbl-title col-md-2"><a--%>
                                    <%--class="job-type-btn job-type-dark-yellow clickable-anchor">Internship</a></td>--%>
                        <%--</tr>--%>
                        <%--<tr class="odd col-md-12">--%>
                            <%--<td class="col-md-1"><img src="img/job-logo1.png" alt="" width="50px" height="50px"></td>--%>
                            <%--<td class="tbl-title col-md-8"><h4>Web Designer</h4>--%>
                                <%--<p><i class="fa fa-briefcase"></i>WSO2 Inc. &nbsp;&nbsp;&nbsp;<i--%>
                                        <%--class="fa fa-map-marker" aria-hidden="true"></i>San Franciso, USA &nbsp;&nbsp;&nbsp; &dollar;--%>
                                    <%--14000</p></td>--%>
                            <%--<td class="tbl-title col-md-2"><a class="job-type-btn job-type-blue clickable-anchor">Part--%>
                                <%--time</a></td>--%>
                        <%--</tr>--%>
                        <%--<tr class="odd col-md-12">--%>
                            <%--<td class="col-md-1"><img src="img/job-logo1.png" alt="" width="50px" height="50px"></td>--%>
                            <%--<td class="tbl-title col-md-8"><h4>Web Designer</h4>--%>
                                <%--<p><i class="fa fa-briefcase"></i>WSO2 Inc. &nbsp;&nbsp;&nbsp;<i--%>
                                        <%--class="fa fa-map-marker" aria-hidden="true"></i>San Franciso, USA &nbsp;&nbsp;&nbsp; &dollar;--%>
                                    <%--14000</p></td>--%>
                            <%--<td class="tbl-title col-md-2"><a--%>
                                    <%--class="job-type-btn job-type-dark-yellow clickable-anchor">Internship</a></td>--%>
                        <%--</tr>--%>
                        <%--<tr class="even col-md-12">--%>
                            <%--<td class="col-md-1"><img src="img/job-logo1.png" alt="" width="50px" height="50px"></td>--%>
                            <%--<td class="tbl-title col-md-8"><h4>Web Designer</h4>--%>
                                <%--<p><i class="fa fa-briefcase"></i>WSO2 Inc. &nbsp;&nbsp;&nbsp;<i--%>
                                        <%--class="fa fa-map-marker" aria-hidden="true"></i>San Franciso, USA &nbsp;&nbsp;&nbsp; &dollar;--%>
                                    <%--14000</p></td>--%>
                            <%--<td class="tbl-title col-md-2"><a class="job-type-btn job-type-blue clickable-anchor">Part--%>
                                <%--time</a></td>--%>
                        <%--</tr>--%>
                        <%--<tr class="even col-md-12">--%>
                            <%--<td class="col-md-1"><img src="img/job-logo1.png" alt="" width="50px" height="50px"></td>--%>
                            <%--<td class="tbl-title col-md-8"><h4>Web Designer</h4>--%>
                                <%--<p><i class="fa fa-briefcase"></i>WSO2 Inc. &nbsp;&nbsp;&nbsp;<i--%>
                                        <%--class="fa fa-map-marker" aria-hidden="true"></i>San Franciso, USA &nbsp;&nbsp;&nbsp; &dollar;--%>
                                    <%--14000</p></td>--%>
                            <%--<td class="tbl-title col-md-2"><a class="job-type-btn job-type-red clickable-anchor">Full--%>
                                <%--time</a></td>--%>
                        <%--</tr>--%>
                        </tbody>
                    </table>
                </div>
            </div>
            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 custom-notification" id="no-jobs-notification">
                <p><span>No short listed jobs!</span> Browse for jobs and save it for future references..</p>
            </div>

            <div class="pull-right pull-right-jobs">
                <div id="page-selection"></div>
                <script>
                    $('#page-selection').bootpag({
                        total: 50,
                        page: 2,
                        maxVisible: 5,
                        leaps: true,
                        firstLastUse: true,
                        first: '←',
                        last: '→',
                        wrapClass: 'pagination',
                        activeClass: 'active',
                        disabledClass: 'disabled',
                        nextClass: 'next',
                        prevClass: 'prev',
                        lastClass: 'last',
                        firstClass: 'first'
                    }).on("page", function(event, num){
                        console.log(num);
                    });
                </script>
            </div>
        </div>

    </div>
    <div class="footer-area" id="two">
        <div class="container">
            <div class="row footer">
                <div class="col-md-4">
                    <div class="single-footer">
                        <img src="${footerLogo}" alt="" class="wow pulse" data-wow-delay="1s">
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Obcaecati architecto quaerat facere
                            blanditiis tempora sequi nulla accusamus, possimus cum necessitatibus suscipit quia autem
                            mollitia, similique quisquam molestias. Vel unde, blanditiis.</p>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="single-footer">
                        <h4>Twitter update</h4>
                        <div class="twitter-updates">
                            <div class="single-tweets">
                                <h5>ABOUT 9 HOURS</h5>
                                <p><strong>AGOMeet Aldous</strong> - a Brave New World for #rails with more cohesion,
                                    less
                                    coupling and greater dev speed <a
                                            href="http://t.co/rsekglotzs">http://t.co/rsekglotzs</a></p>
                            </div>
                            <div class="single-tweets">
                                <h5>ABOUT 9 HOURS</h5>
                                <p><strong>AGOMeet Aldous</strong> - a Brave New World for #rails with more cohesion,
                                    less
                                    coupling and greater dev speed <a
                                            href="http://t.co/rsekglotzs">http://t.co/rsekglotzs</a></p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="single-footer">
                        <h4>Useful lnks</h4>
                        <div class="footer-links">
                            <ul class="list-unstyled">
                                <li><a href="">About Us</a></li>
                                <li><a href="" class="active">Services</a></li>
                                <li><a href="">Work</a></li>
                                <li><a href="">Our Blog</a></li>
                                <li><a href="">Customers Testimonials</a></li>
                                <li><a href="">Affliate</a></li>
                                <li><a href="">Contact Us</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row footer-copy">
                <p><span>(C) website, All rights reserved</span> | <span>Graphic Designed by <a
                        href="#">Job Find</a></span> | <span> Web Designed by <a
                        href="#">Job Find</a></span></p>
            </div>
        </div>
    </div>

    <!-- Login Modal -->
    <div class="modal fade" id="login-modal" role="dialog">
        <div class="modal-dialog">
            <!-- Modal content-->
            <div class="modal-content">
                <div class="modal-body">
                    <ul class="nav nav-tabs" data-tabs="tabs" id="login-nav-tabs">
                        <li class="active"><a href="#loginTab" data-toggle="tab">Login</a></li>
                        <li><a href="#registerTab" data-toggle="tab">Register</a></li>
                        <!--<button class="navbar-btn nav-button wow active" data-wow-delay="0.6s" href="#registerTab" onclick="changeLoginView('toLogin')" >Login</button>-->
                        <!--<button class="navbar-btn nav-button wow" data-wow-delay="0.6s" href="#loginTab" onclick="changeLoginView('toRegister')">Register</button>-->
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true" style="float:right">
                            ×
                        </button>
                    </ul>

                    <div class="tab-content">
                        <!-- Login -->
                        <div class="tab-pane active" id="loginTab">
                            <form action="" class="form-inline">
                                <div class="form-group">
                                    <input type="text" class="general-text-input form-control" name="username"
                                           id="login-username" placeholder="Username or Email Address" value=""/>
                                </div>
                                <div class="form-group">
                                    <input class="general-text-input form-control" type="password" name="password"
                                           id="password" placeholder="Password"/>
                                </div>
                                <div id="specialism-search1" class="form-group">
                                    <input type="submit" class="navbar-btn nav-button wow" name="login" value="Login"/>
                                </div>
                                <div class="form-group">
                                    <label for="rememberme" class="rememberme login-font">
                                        <input name="rememberme" type="checkbox" id="rememberme" value="forever"/>
                                        Remember
                                        Me</label>
                                </div>
                                <div class="form-group">
                                    <p class="lost_password login-font">
                                        <a href="#">Lost Your Password?</a>
                                    </p>
                                </div>
                            </form>
                        </div>
                        <!-- Register -->
                        <div class="tab-pane" id="registerTab">
                            <form action="" class="form-inline">
                                <div class="form-group">
                                    <input type="email" class="general-text-input form-control" name="reg_email"
                                           id="reg_email" value="" placeholder="Email Address"/>
                                </div>
                                <div class="form-group">
                                    <input type="text" class="general-text-input form-control" name="reg_username"
                                           id="reg_username" value="" placeholder="Username"/>
                                </div>
                                <div class="form-group">
                                    <input type="password" class="general-text-input form-control" name="password"
                                           id="reg_password" placeholder="Password"/>
                                </div>
                                <div class="form-group">
                                    <input type="password" class="general-text-input form-control" name="password"
                                           id="reg_password2" placeholder="Repeat Password"/>
                                </div>
                                <div class="form-group">
                                    <input type="submit" class="navbar-btn nav-button wow" name="register"
                                           value="Register"/>
                                </div>

                            </form>
                        </div>
                    </div>

                    <div style="display: inline-block; margin: 0 auto;">
                        <button id='facebook' class="login-button-vertical" onclick="fbLogin()"><img src="${facebookN}"/></button>
                        <button id="twitter" class="login-button-vertical" ><img src="${twitterN}"/></button>
                        <button id="google" class="customGPlusSignIn login-button-vertical"><img src="${gmailN}"/></button>
                        <button id="linkedin" class="login-button-vertical" onclick="liAuth()"><img src="${linkedInN}"/></button>
                    </div>

                    <!--<div class="tabs-container">-->
                    <!-- Login -->
                    <!--<div class="tab-content" id="loginTab" style="display: none;">-->
                    <!--<form action="" class= "form-inline">-->
                    <!--<div class="form-group">-->
                    <!--<input type="text" class="input-text" name="username" id="username" placeholder="Username or Email Address" value="" />-->
                    <!--</div>-->
                    <!--<div class="form-group">-->
                    <!--<input class="input-text" type="password" name="password" id="password" placeholder="Password"/>-->
                    <!--</div>-->
                    <!--<div id="specialism-search1" class="form-group">-->
                    <!--<input type="submit" class="navbar-btn nav-button wow" name="login" value="Login" />-->
                    <!--</div>-->
                    <!--<div class="form-group">-->
                    <!--<label for="rememberme" class="rememberme login-font">-->
                    <!--<input name="rememberme" type="checkbox" id="rememberme" value="forever" /> Remember Me</label>-->
                    <!--</div>-->
                    <!--<div class="form-group">-->
                    <!--<p class="lost_password login-font">-->
                    <!--<a href="#" >Lost Your Password?</a>-->
                    <!--</p>-->
                    <!--</div>-->
                    <!--</form>-->
                    <!--</div>-->

                    <!--&lt;!&ndash; Register &ndash;&gt;-->
                    <!--<div class="tab-content" id="registerTab" style="display: none;">-->
                    <!--<form method="post" class="register">-->
                    <!--<p class="form-row form-row-wide">-->
                    <!--<input type="email" class="input-text" name="reg_email" id="reg_email" value="" placeholder="Email Address"/>-->
                    <!--</p>-->
                    <!--<p class="form-row form-row-wide">-->
                    <!--<input type="text" class="input-text" name="reg_username" id="reg_username" value="" placeholder="Username"/>-->
                    <!--</p>-->
                    <!--<p class="form-row form-row-wide">-->
                    <!--<input type="password" class="input-text" name="password" id="reg_password" placeholder="Password"/>-->
                    <!--</p>-->
                    <!--<p class="form-row form-row-wide">-->
                    <!--<input type="password" class="input-text" name="password" id="reg_password2" placeholder="Repeat Password"/>-->
                    <!--</p>-->
                    <!--<p class="form-row">-->
                    <!--<input type="submit" class="button" name="register" value="Register" />-->
                    <!--</p>-->

                    <!--</form>-->
                    <!--</div>-->
                    <!--</div>-->
                </div>
                <!--<div class="modal-footer" style="text-align: center;">-->
                <!--<div style="display: inline-block; margin: 0 auto;">-->
                <!--<button id='facebook' class="login-button-vertical" onclick="fbLogin()"><img src="img/login/facebookN.png"/>"</button>-->
                <!--<button id="twitter" class="login-button-vertical" ><img src="img/login/twitterN.png"/>"</button>-->
                <!--<button id="google" class="customGPlusSignIn login-button-vertical"><img src="img/login/gmailN.png"/></button>-->
                <!--<button id="linkedin" class="login-button-vertical" onclick="liAuth()"><img src="img/login/linkedInN.png"/>"</button>-->
                <!--</div>-->
                <!--</div>-->
            </div>
        </div>
    </div>
</body>
</html>
