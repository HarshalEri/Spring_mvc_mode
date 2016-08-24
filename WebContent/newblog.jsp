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
    <div id="header">

        <div id="logo">
        	<h1 style="text-decoration:underline;">
        		<i>BloggerSpot</i>
        	</h1>
        </div>
        
        <div id="afterlogin">
	        <p>
	          
	        </p>
        </div>
     </div>
       <p>
		<div>
            <ul id="navigation">
                <li class="on"><a href="userpage.jsp">Home</a></li>
                <li><a href="ChangePassword.jsp">Change password</a></li>
                <li><a href="editprofile.jsp">Edit profile</a></li>
                <li><a href="editblog.jsp">Edit Blog</a></li>
                <li><a href="insertblog">Create Blog</a></li>
                <li><a href="logout">Log Out</a></li>
            </ul>
		</div>
	</p>
	<p>&nbsp;</p>
	<p>
		<div>
			<h2 align = "center"><b>WelCome ${userName} &nbsp;</b></h2>
		</div>
	</p>
	<p>
	<div align="center">
		<h3 align="center"><b>Create New Blog</b></h3>	
			<table align="center">
				<s:form modelAttribute="newblog" action="newblog">
						<tr>
							<s:input path="blogtitle" label="Title"/>
						</tr>
						<%-- <tr><s:textfield name="blogcatagory" label="Catagory"/></tr> --%>
						<tr>
							<s:select path="blogcatagory">
							 	<s:options items="${categoryList}"/>
							</s:select>				 
						 </tr>
						<tr>
							<s:textarea path="blogcontent" rows="5" cols="30" />
						</tr>
						<tr align="center">
							<input type="submit" value="Submit"/>
						</tr>
				</s:form>
			</table>	
		</div>
	</p>
	
</div>
</body>
</html>
