<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="s" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Publish Blog Here</title>
<link href="style2.css" rel="stylesheet" media="all" type="text/css" />
</head>
<body>
	<div id="wrapper">
	    <div id="header">
	
	        <div id="logo">
	        	<h1 style="text-decoration:underline;">
	        		<i>BloggerSpot</i>
	        	</h1>
	        </div>
	        <%-- <div id="updates">
	        <span>Updates:&nbsp;&nbsp; Put any text up here :)</span>
	        </div> --%>
	        
	        <div id="afterlogin">
	        <p>
	        	<!-- <div id="loginwelcome">Welcome Guest Login Here</div> -->            
	        </p>
	        </div>
	        <p>
				<div>
		            <ul id="navigation">
		                <li class="on"><a href="home">Home</a></li>
		                <li><a href="Home.jsp">User Login</a></li>
					    <li><a href="category.jsp">Categories</a></li>
		                <li><a href="index.jsp">Admin</a></li>
		                <li><a href="contact.jsp">Contact</a></li>
		                <li><a href="aboutus.jsp">About Us</a></li>
		
		            </ul>
				</div>
			</p>
			<p>&nbsp;</p>
			
			<div align="center">
				<h2 align="center">Admin Login Page</h2>
				<s:form modelAttribute="userLogin" action="login">
					<table  align="center">
						<tr>
							<s:input path="userId" label="UserName"/>
						</tr>
						<tr>
							<s:password path="password" label="Password"/>
						</tr>
						<tr>
							<input type="submit" value="Sign In"/>
						</tr>
					</table>
				</s:form>
			</div>
		</div>
	</div>
</body>
</html>