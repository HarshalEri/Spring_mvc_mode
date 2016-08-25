<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
   pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
 </div>
    <div id="header">
        <div id="logo">
      		<h1 style="text-decoration:underline;"><i>BloggerSpot</i></h1>
        </div>
        <%-- <div id="updates">
        <span>Updates:&nbsp;&nbsp; Put any text up here :)</span>
        </div> --%>
        <div id="afterlogin">
       
        </div>
  	</div>      
  	<p>
		<div>
			<ul id="navigation">
            	<li class="on"><a href="userpage.jsp">Home</a></li>
                <li><a href="ChangePassword.jsp">Change Password</a></li>
                <li><a href="EditProfile.jsp">Edit profile</a></li>
                <li><a href="editblog.jsp">Edit Blog</a></li>
                <li><a href="insertBlog">Create Blog</a></li>
                <li><a href="logout">Log Out</a></li>
            </ul>
            
		</div>
	
		<p>&nbsp;</p>
		<div>
			<h2 align = "center"><b>WelCome ${userName} &nbsp;</b></h2>
		</div>
		<!-- <div id="content"> -->
	    
	   <div align="center">
			<h3 align="center">Test</h3>
			<table align="center" border="0">
				 <c:forEach var="blog" items="${userBlogList}">
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
		
	    <div id="footer">
	    <div id="copyright">&copy; 2015 All Rights Reserved. Designed by Harshal</a>.
	    </div>
</div>
</body>
</html>