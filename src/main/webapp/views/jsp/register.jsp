<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html lang="en">
<head>

	<!-- Access the bootstrap Css like this,
		Spring boot will handle the resource mapping automcatically -->
	<link rel="stylesheet" type="text/css" href="webjars/bootstrap/3.3.7/css/bootstrap.min.css" />

	<!--
	<spring:url value="/css/main.css" var="springCss" />
	<link href="${springCss}" rel="stylesheet" />
	 -->
	<c:url value="/css/main.css" var="jstlCss" />
	<link href="${jstlCss}" rel="stylesheet" />

</head>
<body>

	<nav class="navbar navbar-inverse">
		    <div class="container">
			<div class="navbar-header">
				<a class="navbar-brand" href="/sup">Admin Login</a>
			</div>
			<div id="navbar" class="collapse navbar-collapse">
				<ul class="nav navbar-nav">
				    <li class="active"><a href="/home">Home</a></li>
					<li class="active"><a href="/login">Username Login</a></li>
					<li class="active"><a href="/login2">Email Login</a></li>
					<li><a href="/reg">Register</a></li>
				</ul>
			</div>
		</div>
	</nav>
	<script> 
	window.onsubmit = function()
	{
	    var username = document.getElementById("username").value;
	    var email = document.getElementById("email").value;
	    var password = document.getElementById("password").value;

	    if(username == "") 
	    {
	        alert("Please provide an username");
	        return false;
	    }
	    if(email=="")
	    {
	        alert("Please provide an email");
	        return false;
	    }
	    if(password=="")
	    {
	        alert("Please provide a password");
	        return false;
	    }
	    else
	    {
	        //document.forms["report"].submit();
	        document.form["users"].method = "POST";
	        document.form["users"].action = "/reg";
	        //document.location = "reportbeanservlet";
	        return true;
	    }
	}
	</script> 

<h3>register information</h3>
<form:form method="POST"
           action="/reg" modelAttribute="users">
    <table width="240">
        <tr>
            <td width="66"><form:label path="username">UserName</form:label></td>
            <td width="164"><form:input path="username"/></td>
        </tr>
        <tr>
            <td><form:label path="email">Email</form:label></td>
            <td><form:input path="email"/></td>
        </tr>
        <tr>
            <td><form:label path="password">
                password</form:label></td>
            <td><form:input path="password"/></td>
        </tr>
        <tr>
            <td><input type="submit" value="Submit"/></td>
        </tr>
    </table>
</form:form>
</body>
</html>