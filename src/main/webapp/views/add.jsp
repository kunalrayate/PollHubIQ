<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Page</title>
</head>
<body>
	<jsp:include page="navbar.jsp"></jsp:include>
	<br>
	<br>
	<div class="container">
		<div class="row justify-content-center">
			<div class="col-md-8">
				<div class="card">
					<div class="card-header">ECI Candidate Register Form</div>
					<div class="card-body">

						<form class="form-horizontal" method="post"
							action="/insert-Candidate">

							<div class="form-group">
								<label for="name" class="cols-sm-2 control-label">Name</label>
								<div class="cols-sm-10">
									<div class="input-group">
										<span class="input-group-addon"><i
											class="fa fa-user fa" aria-hidden="true"></i></span> <input
											type="text" class="form-control" name="name" id="name"
											placeholder="Enter your Name" />
									</div>
								</div>
							</div>
							<div class="form-group">
								<label for="name" class="cols-sm-2 control-label">Party Name</label>
								<div class="cols-sm-10">
									<div class="input-group">
										<span class="input-group-addon"><i
											class="fa fa-envelope fa" aria-hidden="true"></i></span> <input
											type="text" class="form-control" name="partyname"
											id="partyname" placeholder="Enter your party Name" />
									</div>
								</div>
							</div>
							<div class="form-group">
								<label for="assembly" class="cols-sm-2 control-label">Assembly Name</label>
								<div class="cols-sm-10">
									<div class="input-group">
										<span class="input-group-addon"><i
											class="fa fa-users fa" aria-hidden="true"></i></span> <input
											type="text" class="form-control" name="assembly"
											id="assembly" placeholder="Enter your Assembly Name" />
									</div>
								</div>
							</div>
							<div class="form-group">
								<label for="statename" class="cols-sm-2 control-label">State Name</label>
								<div class="cols-sm-10">
									<div class="input-group">
										<span class="input-group-addon"><i
											class="fa fa-users fa" aria-hidden="true"></i></span> <input
											type="text" class="form-control" name="statename"
											id="assembly" placeholder="Enter your State Name" />
									</div>
								</div>
							</div>
							<div class="form-group">
								<label for="gender" class="cols-sm-2 control-label">Gender</label>
								<div class="cols-sm-10">
									<div class="input-group">
										<span class="input-group-addon"><i
											class="fa fa-users fa" aria-hidden="true"></i></span> <input
											type="text" class="form-control" name="gender" id="assembly"
											placeholder="Enter your Gender" />
									</div>
								</div>
							</div>
							<div class="form-group">
								<label for="age" class="cols-sm-2 control-label">Age</label>
								<div class="cols-sm-10">
									<div class="input-group">
										<span class="input-group-addon"><i
											class="fa fa-lock fa-lg" aria-hidden="true"></i></span> <input
											type="number" class="form-control" name="age" id="age"
											placeholder="Enter your Age" />
									</div>
								</div>
							</div>

							<div class="form-group"
								style="display: flex; justify-content: center; align-items: center;">
								<button type="submit" class="btn btn-primary">Save</button>
							</div>

						</form>
					</div>

				</div>
			</div>
		</div>
	</div>
</body>
</html>