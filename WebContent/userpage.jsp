
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="s" uri="/struts-tags" %>
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
       <h1 style="text-decoration:underline;"><i>BloggerSpot</i></h1>
        </div>
        <%-- <div id="updates">
        <span>Updates:&nbsp;&nbsp; Put any text up here :)</span>
        </div> --%>
        <div id="afterlogin">
       
        </div>
        
        <p>
		<div>
			 <ul id="navigation">
                <li class="on"><s:a href="userpage.jsp">Home</s:a></li>
                <li><s:a href="ChangePassword.jsp">Change Password</s:a></li>
                <li><s:a href="EditProfile.jsp">Edit profile</s:a></li>
                <li><s:a href="editblog.jsp">Edit Blog</s:a></li>
                <li><s:a href="newblog.jsp">Create Blog</s:a></li>
                <li><s:a href="logout">Log Out</s:a></li>
            </ul>
            
		</div>
		</p>
		<p>&nbsp;</p>
		<div>
			<h2 align = "center"><b>WelCome <s:property value="#session.FirstName"/>&nbsp;</b></h2>
		</div>
		<!-- <div id="content"> -->
	    
	    <!-- <div align="center"> -->
		<table  align="center" border="0"> 
				<tr><h2 align="center"><s:property value="#session.Message"/></h2></tr>
				<tr><h2 align="center"><s:property value="#session.Message1"/></h2></tr>
				<s:iterator value="userblog" >
					<tr><td><b>Category:</b></td><td><s:property value="blogcatagory"/></td><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td><td><h3><b><s:property value="blogtitle"/></b></h3></td></tr>
					<tr><td><b>Id:</b></td><td><s:property value="blogid"/></td><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td><td rowspan="3" colspan="2" align="justify"><s:property value="blogcontent"/></td></tr>
					<tr><td><b>Date:</b></td><td><s:property value="blogdate"/></td><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td></tr>
					<tr><td>&nbsp;&nbsp;</td></tr>
					<tr><td></td><td></td><td><a href="editBlog?blogid=<s:property value="blogid"/>">Edit</a></td><td><a href="deleteBlog?blogid=<s:property value="blogid"/>">Delete</a></td></tr>
					<tr><td>&nbsp;&nbsp;</td></tr>
					<tr><td>&nbsp;&nbsp;</td></tr>
				</s:iterator>
		</table>
		
	    <div id="footer">
	    <div id="copyright">&copy; 2015 All Rights Reserved. Designed by Dinesh & Harshal</a>.
	    </div>
</div>
</body>
</html>