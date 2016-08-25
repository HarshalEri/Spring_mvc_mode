<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <%@ taglib prefix="s" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>bloggerspot.com</title>
<link rel="stylesheet" href="mycss/style2.css"/>
</head>
<body> 
 <div id="wrapper">
    <div id="header">

        <div id="logo">
        
        <h1 style="text-decoration:underline;"><i>BloggerSpot</i></h1>
        </div>
        </div>
        <%-- <div id="updates">
        <span>Updates:&nbsp;&nbsp; Put any text up here :)</span>
        </div> --%>
        <div id="login">
        <p>
        	<div id="loginwelcome"></div>
             <s:form modelAttribute="userLogin" action="login">
				User Id :: <s:input path="userId" label="UserName"/><br/>
				Password ::<s:password path="password" label="Password"/>
				<input type="submit" value="Sign In"/>
			</s:form>
            <a href="ForgotPassword.jsp">Forgot Password Click Here</a>
        </p>
		<p>&nbsp;</p>
		<div class="container">
        </div>
        
        <p>
			<div>
	            <ul id="navigation">
	                <li class="on"><a href="home">Home</a></li>
	                <li><a href="Registration.jsp">Sign Up</a></li>
	              	<li><a href="category.jsp">Categories</a></li>
	                <li><a href="index.jsp">Admin</a></li>
	                <li><a href="contact.jsp">Contact</a></li>
	                <li><a href="aboutus.jsp">About Us</a></li>
	
	
	                </ul>
			</div>
		</p>
		<p>&nbsp;</p>
		<div class="container">
  		<br/>		
		<div id="content">
	    <p>
	   <div align="center">
			<h3 align="center">Test</h3>
			<table align="center" border="0">
				 <c:forEach var="blog" items="${blogList}">
					<tr>
						<td>Category:</td>
						<td>${blog.blogcategory}</td>
						<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
						<td colspan="2">
							<h3>${blog.blogtitle}</h3>
						</td>
					</tr>

					<tr>
						<td><b> Id: </b></td>
						<td>${blog.blogid}</td>
						<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
						<td rowspan="3" colspan="2">
							${blog.blogcontent}
						</td>
					</tr>
					<tr>
						<td><b> Posted on: </b></td>
						<td>${blog.blogdate}</td>
						<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
					</tr>
				</c:forEach>
			</table>
		</div>
		</p>
		</div>
	    <div id="footer">
	    <div id="copyright">&copy; 2015 All Rights Reserved. Designed by Dinesh & Harshal.</div>
</div>
</body>
</html>