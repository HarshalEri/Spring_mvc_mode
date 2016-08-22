<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <%@ taglib prefix="s" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>bloggerspot.com</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<link href="style2.css" rel="stylesheet" media="all" type="text/css" />
<style>
  .carousel-inner > .item > img,
  .carousel-inner > .item > a > img {
      width: 50%;
      margin: auto;
  }
  </style>
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
				<s:input path="userId" label="UserName"/>
				<s:password path="password" label="Password"/>
				<input type="submit" value="Sign In"/>
			</s:form>
            <a href="ForgotPassword.jsp">	Forgot Password Click Here</a>
        </p>
        </div>
        
        <p>
		<div>
            <ul id="navigation">
				
                <li class="on"><s:a href="home">Home</s:a></li>
                <li><s:a href="Registration.jsp">Sign Up</s:a></li>
               <li><s:a href="category.jsp">Categories</s:a></li>
                <li><s:a href="index.jsp">Admin</s:a></li>
                <li><s:a href="contact.jsp">Contact</s:a></li>
                <li><s:a href="aboutus.jsp">About Us</s:a></li>


                </ul>
		</div>
	
		</p>
		<p>&nbsp;</p>
		<div class="container">
  <br>		
		<!-- <div id="content"> -->
	    <p>
	    <!-- <div align="center"> -->
		<s:form method="post"  >
			<h3 align="center"></h3>
			<table  align="center" border="0"> 
				<s:iterator value="blogList" >
					<tr><td><b>Category:</b></td><td><s:property value="blogcatagory"/></td><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td><td colspan="2"><h3><s:property value="blogtitle"/></h3></td></tr>
					<tr><td><b>Id:</b></td><td><s:property value="blogid"/></td><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td><td rowspan="3" colspan="2"><s:property value="blogcontent"/></td></tr>
					<tr><td><b>Posted on:</b></td><td><s:property value="blogdate"/></td><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td></tr>
					<tr><td>&nbsp;&nbsp;</td></tr>
					<tr><td>&nbsp;&nbsp;</td></tr>
					<s:iterator value = "commentsList">
							<tr><td colspan="3">View Comments	:</td></tr>
							<tr><td><b>Id:</b></td><td><s:property value="commentid"/></td><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td><td colspan="2"><h3><s:property value="commenttext"/></h3></td></tr>
						<%-- <tr><td><b>Id:</b></td><td><s:property value="top.blogid"/></td><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td><td rowspan="3" colspan="2"><s:property value="top.blogcontent"/></td></tr> --%>					
					</s:iterator>
					<tr><td colspan="3" align="center"><a href ="addcomment?cid=<s:property value="blogid"/>">Add Comment</a></td></tr>
				</s:iterator>
			</table>
				
		</s:form>
		</p>
	    <div id="footer">
	    <div id="copyright">&copy; 2015 All Rights Reserved. Designed by Dinesh & Harshal.</div>
</div>
</body>
</html>