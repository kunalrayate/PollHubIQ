<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>About Us</title>
<jsp:include page="navbar.jsp"></jsp:include>
<br>
<br>
<style>
body {
	font-family: Arial, sans-serif;
	line-height: 1.6;
	margin: 0;
	padding: 0;
	background-color: #f4f4f4;
}

header {
	background-color: #333;
	color: #fff;
	padding: 1rem 0;
	text-align: center;
}

header nav ul {
	list-style-type: none;
	padding: 0;
}

header nav ul li {
	display: inline;
	margin: 0 15px;
}

header nav ul li a {
	color: white;
	text-decoration: none;
	font-weight: bold;
}

.container {
	width: 80%;
	margin: auto;
	overflow: hidden;
}

.content {
	padding: 20px;
	background-color: white;
	box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.1);
	margin-top: 20px;
	border-radius: 8px;
}

h2 {
	text-align: center;
	color: #333;
}

.mission, .vision {
	background-color: #e8f4f8;
	padding: 15px;
	margin-top: 20px;
	border-radius: 8px;
}

.mission h3, .vision h3 {
	color: #0056b3;
}

.mission p, .vision p {
	color: #555;
}

ul {
	margin-top: 10px;
}

ul li {
	margin-bottom: 8px;
}
</style>
</head>

<div class="container">
	<div class="content">
		<h2>About Us Page</h2>
		<p>The ECI Candidate Management System is designed to manage the
			details of candidates participating in an election process or
			recruitment. The system allows administrators or authorized users to
			perform basic operations on candidate records, such as adding new
			candidates, updating existing candidates, deleting candidates, and
			viewing all candidates in the system.</p>

		<h3>Project Technologies:</h3>
		<ul>
			<li>MySQL Database</li>
			<li>Spring MVC</li>
			<li>HTML/CSS</li>
			<li>JavaScript</li>
		</ul>

		<!-- Mission Section -->
		<div class="mission">
			<h3>Our Mission</h3>
			<p>Our mission is to provide an efficient and scalable system to
				manage candidate data for election and recruitment processes. We aim
				to streamline the process, reduce administrative overhead, and
				ensure the integrity of the data.</p>
		</div>

		<!-- Vision Section -->
		<div class="vision">
			<h3>Our Vision</h3>
			<p>Our vision is to be a leader in developing innovative and
				reliable systems for managing data in various sectors. We aim to
				simplify complex tasks, provide transparency, and improve
				decision-making through technology.</p>
		</div>
	</div>
</div>
</body>
</html>
