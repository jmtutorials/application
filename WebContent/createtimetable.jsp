<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
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
<h4><a href="admin.jsp">Home Page</a></h4>

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<script type="text/javascript">
	
</script>
<h3 align="center">Create TimeTable</h3>

<div class="container">


	<form class="well form-horizontal" style="background-color: #87CEEB"
		action="TimeTableServlet" method="post">
		<input type="hidden" name="action" value="createTimeTable" />
		<fieldset>
			<div class="form-group">
				<label class="col-md-4 control-label">Date</label>
				<div class="col-md-8 inputGroupContainer">
					<div class="input-group">
						<span class="input-group-addon"><i
							class="glyphicon glyphicon-home"></i></span><input id="timetabledate"
							name="timetabledate" placeholder="DD/MM/YYYY"
							class="form-control" required="true" value="" type="text">
					</div>
				</div>
			</div>
			<div class="form-group">
				<label class="col-md-4 control-label">Subject</label>
				<div class="col-md-8 inputGroupContainer">
					<div class="input-group">
						<span class="input-group-addon"><i
							class="glyphicon glyphicon-home"></i></span><input id="subject"
							name="subject" placeholder="subject" class="form-control"
							required="true" value="" type="text">
					</div>
				</div>
			</div>
			<div class="form-group">
				<label class="col-md-4 control-label">STD</label>
				<div class="col-md-8 inputGroupContainer">
					<div class="input-group">
						<span class="input-group-addon"><i
							class="glyphicon glyphicon-home"></i></span><input class="form-control" id="std" name="std"  type="number" required="true" min="7" max="10">
					</div>
				</div>
			</div>
			<div class="form-group">
				<label class="col-md-4 control-label">From Time</label>
				<div class="col-md-8 inputGroupContainer">
					<div class="input-group">
						<span class="input-group-addon"><i
							class="glyphicon glyphicon-home"></i></span><input class="form-control" id="fromtime" name="fromtime" type="number" required="true" min="00" max="24">
					</div>
				</div>
			</div>
			<div class="form-group">
				<label class="col-md-4 control-label">To Time</label>
				<div class="col-md-8 inputGroupContainer">
					<div class="input-group">
						<span class="input-group-addon"><i
							class="glyphicon glyphicon-home"></i></span><input class="form-control" id="totime" name="totime" placeholder="Standard" type="number" required="true" min="00" max="24">
					</div>
				</div>
			</div>
			<div class="form-group">
				<label class="col-md-4 control-label">Faculty</label>
				<div class="col-md-8 inputGroupContainer">
					<div class="input-group">
						<span class="input-group-addon"><i
							class="glyphicon glyphicon-envelope"></i></span><input id="faculty"
							name="faculty" placeholder="faculty" class="form-control"
							required="true" value="" type="text">
					</div>
				</div>
			</div>
			
			
			<div class="form-group">
				<label class="col-md-4 control-label"></label>
				<div class="col-md-4 inputGroupContainer">
					<div class="input-group">
						<button type="submit" class="btn btn-primary">Submit</button>
					</div>
				</div>
			</div>

		</fieldset>
	</form>

</div>
<footer>
  <p>CopyRight @jmpvttutorials</p>
</footer>
</body>
