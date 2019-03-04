<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="com.jm.model.*"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Student Created Successfully</title>
<style>
* {
  box-sizing: border-box;
}

body {
  font-family: Arial, Helvetica, sans-serif;
}

/* Style the header */
header {
  background-color: #007b9d;
  padding: 15px;
  text-align: center;
  font-size: 30px;
  color: white;
}


/* Style the footer */
footer {
  background-color: #007b9d;
  padding: 15px;
  text-align: center;
  color: white;
}

/* Responsive layout - makes the two columns/boxes stack on top of each other instead of next to each other, on small screens */
@media (max-width: 600px) {
  nav, article {
    width: 100%;
    height: auto;
  }
}
</style>

</head>
<body>
<header>
  <h2>J.M. Tutorials</h2>
</header>
<%
   Student student =(Student)request.getAttribute("updatedStudent");

%>
<br>
<br>
<h2 align="center" > 
    Student with Name : <%=student.getStudentName()%>
     and Student Id : <%=student.getStudentID() %> has been enrolled for Std : <%=student.getStd()%> 
</h2>
<h3 align="center" ><a  href="admin.jsp">Home Page</a></h3>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<footer>
  <p>CopyRight @jmpvttutorials</p>
</footer>
</body>
