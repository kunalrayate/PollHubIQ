<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Page</title>
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

						<form class="form-horizontal" method="Post"
							action="update-Candidate">

							<input type="number" name="c_id" value="${p.c_id}" hidden />
							<div class="form-group">
								<label for="name" class="cols-sm-2 control-label">Name</label>
								<div class="cols-sm-10">
									<div class="input-group">
										<span class="input-group-addon"><i
											class="fa fa-user fa" aria-hidden="true"></i></span> <input
											type="text" class="form-control" name="name" id="name"
											placeholder="Enter your Name " value="${p.name}" />
									</div>
								</div>
							</div>
							<div class="form-group">
								<label for="name" class="cols-sm-2 control-label">Party
									Name</label>
								<div class="cols-sm-10">
									<div class="input-group">
										<span class="input-group-addon"><i
											class="fa fa-envelope fa" aria-hidden="true"></i></span> <input
											type="text" class="form-control" name="partyname"
											id="partyname" placeholder="Enter your Party Name"
											value="${p.partyname}" />
									</div>
								</div>
							</div>
							<div class="form-group">
								<label for="assembly" class="cols-sm-2 control-label">Assembly
									Name</label>
								<div class="cols-sm-10">
									<div class="input-group">
										<span class="input-group-addon"><i
											class="fa fa-users fa" aria-hidden="true"></i></span> <input
											type="text" class="form-control" name="assembly"
											id="assembly" placeholder="Enter your Assembly Name"
											value="${p.assembly}" />
									</div>
								</div>
							</div>
							<div class="form-group">
								<label for="statename" class="cols-sm-2 control-label">State
									Name</label>
								<div class="cols-sm-10">
									<div class="input-group">
										<span class="input-group-addon"><i
											class="fa fa-users fa" aria-hidden="true"></i></span> <input
											type="text" class="form-control" name="statename"
											id="assembly" placeholder="Enter your State Name"
											value="${p.statename}" />
									</div>
								</div>
							</div>
							<div class="form-group">
								<label for="gender" class="cols-sm-2 control-label">Gender</label>
								<div class="cols-sm-10">
									<div class="input-group">
										<span class="input-group-addon"><i
											class="fa fa-users fa" aria-hidden="true"></i></span> <input
											type="text" class="form-control" name="gender" id="gender"
											placeholder="Enter your Gender" value="${p.gender}" />
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
											placeholder="Enter your Age" value="${p.age}" />
									</div>
								</div>
							</div>

							<div class="form-group"
								style="display: flex; justify-content: center; align-items: center;">
								<button type="submit" class="btn btn-primary">Update</button>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>