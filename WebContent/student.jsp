<jsp:include page="header.jsp"></jsp:include>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<script type="text/javascript">
	
</script>
<div class="container">


	<form class="well form-horizontal" style="background-color: #87CEEB"
		action="StudentServlet" method="post">
		<input type="hidden" name="action" value="createStudent" />
		<fieldset>
			<div class="form-group">
				<label class="col-md-4 control-label">Student Name</label>
				<div class="col-md-8 inputGroupContainer">
					<div class="input-group">
						<span class="input-group-addon"><i
							class="glyphicon glyphicon-user"></i></span><input id="studentName"
							name="studentName" placeholder="Student Name"
							class="form-control" required="true" value="" type="text">
					</div>
				</div>
			</div>
			<div class="form-group">
				<label class="col-md-4 control-label">Date Of Birth</label>
				<div class="col-md-8 inputGroupContainer">
					<div class="input-group">
						<span class="input-group-addon"><i
							class="glyphicon glyphicon-home"></i></span><input id="dateOfBirth"
							name="dateOfBirth" placeholder="dateOfBirth"
							class="form-control" required="true" value="" type="text">
					</div>
				</div>
			</div>
			<div class="form-group">
				<label class="col-md-4 control-label">Mobile No</label>
				<div class="col-md-8 inputGroupContainer">
					<div class="input-group">
						<span class="input-group-addon"><i
							class="glyphicon glyphicon-home"></i></span><input id="mobileNo"
							name="mobileNo" placeholder="mobileNo" class="form-control"
							required="true" value="" type="text">
					</div>
				</div>
			</div>
			<div class="form-group">
				<label class="col-md-4 control-label">Std</label>
				<div class="col-md-8 inputGroupContainer">
					<div class="input-group">
						<span class="input-group-addon"><i
							class="glyphicon glyphicon-home"></i></span><input id="std"
							name="std" placeholder="std" class="form-control"
							required="true" value="" type="text">
					</div>
				</div>
			</div>
			<div class="form-group">
				<label class="col-md-4 control-label">Email ID</label>
				<div class="col-md-8 inputGroupContainer">
					<div class="input-group">
						<span class="input-group-addon"><i
							class="glyphicon glyphicon-home"></i></span><input id="emailId" name="emailId"
							placeholder="emailId" class="form-control" required="true" value=""
							type="text">
					</div>
				</div>
			</div>
			<div class="form-group">
				<label class="col-md-4 control-label">Address</label>
				<div class="col-md-8 inputGroupContainer">
					<div class="input-group">
						<span class="input-group-addon"><i
							class="glyphicon glyphicon-home"></i></span><input id="address"
							name="address" placeholder="address" class="form-control"
							required="true" value="" type="text">
					</div>
				</div>
			</div>
			<div class="form-group">
				<label class="col-md-4 control-label">School Name</label>
				<div class="col-md-8 inputGroupContainer">
					<div class="input-group">
						<span class="input-group-addon"><i
							class="glyphicon glyphicon-envelope"></i></span><input id="schoolName"
							name="schoolName" placeholder="schoolName" class="form-control"
							required="true" value="" type="text">
					</div>
				</div>
			</div>
			<div class="form-group">
				<label class="col-md-4 control-label">Parent Name</label>
				<div class="col-md-8 inputGroupContainer">
					<div class="input-group">
						<span class="input-group-addon"><i
							class="glyphicon glyphicon-earphone"></i></span><input id="parentName"
							name="parentName" placeholder="parentName" class="form-control"
							required="true" value="" type="text">
					</div>
				</div>
			</div>
			<div class="form-group">
				<label class="col-md-4 control-label">Reffered By</label>
				<div class="col-md-8 inputGroupContainer">
					<div class="input-group">
						<span class="input-group-addon"><i
							class="glyphicon glyphicon-earphone"></i></span><input id="referredBy"
							name="referredBy" placeholder="referredBy" class="form-control"
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
<jsp:include page="footer.html"></jsp:include>