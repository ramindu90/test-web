<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://www.springframework.org/tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%--
  Created by IntelliJ IDEA.
  User: Ramindu
  Date: 6/18/16
  Time: 3:14 PM
  To change this template use File | Settings | File Templates.
--%>
<html>
<head>
        <link href="<c:url value="/resources/css/bootstrap.css" />" rel="stylesheet">
        <link href="<c:url value="/resources/css/login.css" />" rel="stylesheet">

        <!-- fb api access -->
        <%--<script src="http://connect.facebook.net/en_US/all.js"></script>--%>

        <!-- google api access -->
        <%--<script src="https://apis.google.com/js/platform.js?onload=renderButton" async defer></script>--%>
        <%--<meta name="google-signin-scope" content="profile email">--%>
        <%--<meta name="google-signin-client_id" content="316491504403-saip8l3vlltl7sc8m8jjo8qmo28qpct2.apps.googleusercontent.com">--%>
        <script src="https://apis.google.com/js/api:client.js"></script>

        <!-- linkedin api access -->
        <%--<script type="in/Login"> </script>--%>

        <script type="text/javascript" src="http://platform.linkedin.com/in.js">
            api_key: 751os35apk8hvv
//            onLoad: onLinkedInLoad
            authorize: true
        </script>

        <script src="<c:url value="/resources/js/socialLogin.js" />"></script>
        <script src="<c:url value="/resources/js/jquery-3.0.0.min.js" />"></script>
    <title>Login</title>
</head>
<body>
    <div>
        <h3 class="login-font login-button-vertical">Login with</h3>
        <button id='facebook' class="login-button-vertical" onclick="fbLogin()"><img src="<c:url value="/resources/img/facebookN.png"/>" /></button>
        <button id="google" class="customGPlusSignIn login-button-vertical"><img src="<c:url value="/resources/img/gmailN.png"/>" /></button>
        <button id="twitter" class="login-button-vertical" ><img src="<c:url value="/resources/img/twitterN.png"/>" /></button>
        <button id="linkedin" class="login-button-vertical" onclick="liAuth()"><img src="<c:url value="/resources/img/linkedInN.png"/>" /></button>
        <button id="logout" class="login-button-vertical" onclick="logoutFacebook()">Logout</button>
        <button id="logout2" class="login-button-vertical" onclick="signOutGmail()">LogoutGmail</button>
        <button id="logout3" class="login-button-vertical" onclick="linkedInSignout()">LogoutLinkedIn</button>
    </div>

    <script>gmailLogin();</script>
    <script>fbLogin();</script>
</body>
</html>
