<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<%@page import="java.util.*"%>
<%@page import="com.jm.model.*"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Student Enquiries</title>
<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="images/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/select2/select2.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/perfect-scrollbar/perfect-scrollbar.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="css/util.css">
	<link rel="stylesheet" type="text/css" href="css/main.css">
<!--===============================================================================================-->
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
<a href="admin.jsp">Home Page</a>
<div class="limiter">
		<div class="container-table100">
			<div class="wrap-table100">
				<div class="table100 ver2 m-b-110">
					<div class="table100-head">
						<table>
							<thead>
								<tr class="row100 head">
									<th class="cell100 column1">Enquiry_Id</th>
									<th class="cell100 column2">Name</th>
									<th class="cell100 column3">Mobile No</th>
									<th class="cell100 column4">STD</th>
									<th class="cell100 column5">EmailID</th>
									<th class="cell100 column6">School</th>
									<th class="cell100 column7">Referred By</th>
								</tr>
							</thead>
						</table>
					</div>

					<div class="table100-body js-pscroll">
						<table>
						 <c:forEach var="enquiry" items="${enquirieslist}">
							<tbody>
								<tr class="row100 body">
									<td class="cell100 column1">${enquiry.enquiryId}</td>
									<td class="cell100 column2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${enquiry.studentName}</td>
									<td class="cell100 column3">${enquiry.mobileNo}</td>
									<td class="cell100 column4">${enquiry.std}</td>
									<td class="cell100 column5">${enquiry.emailId}</td>
									<td class="cell100 column6">${enquiry.schoolName}</td>
									<td class="cell100 column7">${enquiry.referredBy}</td>
								</tr>
							</tbody>
							</c:forEach>
						</table>
					</div>
				</div>
				
				</div>
				</div>
				</div>

<br>
<br>
<br>
<br>

<footer>
  <p>CopyRight @jmpvttutorials</p>
</footer>
</body>