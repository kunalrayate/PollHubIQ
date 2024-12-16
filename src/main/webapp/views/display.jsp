<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Display Page</title>

<link
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	rel="stylesheet">
<script>
	function filterTable() {
		var input, filter, table, tr, td, i, j, txtValue;
		input = document.getElementById("searchInput");
		filter = input.value.toUpperCase();
		table = document.getElementById("candidateTable");
		tr = table.getElementsByTagName("tr");

		for (i = 1; i < tr.length; i++) {
			td = tr[i].getElementsByTagName("td");
			let rowContainsSearchTerm = false;

			for (j = 0; j < td.length; j++) {
				if (td[j]) {
					txtValue = td[j].textContent || td[j].innerText;
					if (txtValue.toUpperCase().indexOf(filter) > -1) {
						rowContainsSearchTerm = true;
						break;
					}
				}
			}

			if (rowContainsSearchTerm) {
				tr[i].style.display = "";
			} else {
				tr[i].style.display = "none";
			}
		}
	}

	function confirmDelete(url) {

		var confirmAction = confirm("Are you sure you want to delete this candidate?");

		if (confirmAction) {

			window.location.href = url;
		} else {

			return false;
		}
	}
</script>
</head>
<body>
	<jsp:include page="navbar.jsp"></jsp:include>
	<br>
	<br>

	<h1 class="text-center pt-4">All Candidate Data</h1>
	<div class="container">
		<input type="text" id="searchInput" class="form-control"
			onkeyup="filterTable()" placeholder="Search for candidates...">
	</div>

	<div class="container table-responsive py-5">
		<table id="candidateTable" class="table table-bordered table-hover">
			<thead class="table-primary">
				<tr>
					<th scope="col">ID</th>
					<th scope="col">Name</th>
					<th scope="col">Party Name</th>
					<th scope="col">Assembly</th>
					<th scope="col">State Name</th>
					<th scope="col">Gender</th>
					<th scope="col">Age</th>
					<th scope="col">Action</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="p" items="${Candidates}">
					<tr>
						<th scope="row">${p.c_id}</th>
						<td>${p.name}</td>
						<td>${p.partyname}</td>
						<td>${p.assembly}</td>
						<td>${p.statename}</td>
						<td>${p.gender}</td>
						<td>${p.age}</td>
						<td><a href="view-Candidate?c_id=${p.c_id}"
							class="btn btn-warning">UPDATE</a> &nbsp; <a
							href="javascript:void(0);"
							onclick="confirmDelete('delete-Candidate?c_id=${p.c_id}')"
							class="btn btn-danger">DELETE</a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>
