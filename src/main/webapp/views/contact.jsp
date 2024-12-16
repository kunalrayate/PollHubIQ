<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Contact Us</title>
<link rel="stylesheet" href="styles.css">
<style>
header nav {
	display: flex;
	justify-content: flex-end;
	padding: 10px 20px;
	width: 100%;
}

.contact-container {
	width: 100%;
	max-width: 600px;
	background-color: white;
	box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
	padding: 40px;
	border-radius: 8px;
	margin: 0 auto;
	margin-top: 60px;
}

.contact-form h1 {
	font-size: 2rem;
	color: #333;
	margin-bottom: 10px;
}

.contact-form p {
	color: #777;
	margin-bottom: 20px;
}

.input-group {
	margin-bottom: 20px;
}

.input-group label {
	display: block;
	font-size: 1rem;
	color: #555;
	margin-bottom: 5px;
}

.input-group input, .input-group textarea {
	width: 100%;
	padding: 12px;
	border: 1px solid #ddd;
	border-radius: 5px;
	font-size: 1rem;
	color: #333;
}

.input-group input:focus, .input-group textarea:focus {
	border-color: #5c6bc0;
	outline: none;
}

.input-group textarea {
	resize: vertical;
	height: 150px;
}

.submit-btn {
	width: 100%;
	padding: 14px;
	background-color: #5c6bc0;
	color: white;
	border: none;
	border-radius: 5px;
	font-size: 1rem;
	cursor: pointer;
	transition: background-color 0.3s ease;
}

.submit-btn:hover {
	background-color: #3e4a89;
}

#form-result {
	margin-top: 20px;
	font-size: 1rem;
	text-align: center;
}

.success {
	color: green;
}

.error {
	color: red;
}

/* Mobile responsiveness */
@media ( max-width : 600px) {
	.contact-container {
		padding: 20px;
	}
	.contact-form h1 {
		font-size: 1.5rem;
	}
}
</style>
</head>

<body>

	<header>
		<jsp:include page="navbar.jsp"></jsp:include>
	</header>

	<div class="contact-container">
		<div class="contact-form">
			<h1>Contact Us</h1>
			<p>Please fill out the form below to send us a message.</p>
			<form id="contact-form" action="/contact/set-contact" method="POST">
				<div class="input-group">
					<label for="name">Full Name</label> <input type="text" id="name"
						name="name" placeholder="Enter Your Name" required>
				</div>
				<div class="input-group">
					<label for="email">Email Address</label> <input type="email"
						id="email" name="email" placeholder="Enter Your Email ID" required>
				</div>
				<div class="input-group">
					<label for="phone">Phone Number</label> <input type="tel"
						id="number" name="number" placeholder="Enter Your Phone Number"
						required>
				</div>
				<div class="input-group">
					<label for="message">Your Message</label>
					<textarea id="msg" name="msg"
						placeholder="Write your message here..." required></textarea>
				</div>
				<div class="input-group">
					<button type="submit" class="submit-btn">Send Message</button>
				</div>
			</form>
			<p id="form-result"></p>
		</div>
	</div>

</body>

</html>
