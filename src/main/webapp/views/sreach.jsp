<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Search Candidates by Name</title>
</head>
<body>

	<h2>Search Candidates by Name</h2>
	<form action="/search-Candidate" method="get">
		<input type="text" name="name" placeholder="Enter candidate name"
			required />
		<button type="submit">Search</button>
	</form>
	<h2>Search Results</h2>
	<table border="1">
		<thead>
			<tr>
				<th>Candidate ID</th>
				<th>Name</th>
				<th>Details</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="candidate" items="${Candidates}">
				<tr>
					<td>${candidate.id}</td>
					<td>${candidate.name}</td>
					<td><a href="/view-Candidate?c_id=${candidate.id}">View
							Details</a></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>

	<c:if test="${empty Candidates}">
		<p>No candidates found for the given name.</p>
	</c:if>

</body>
</html>
