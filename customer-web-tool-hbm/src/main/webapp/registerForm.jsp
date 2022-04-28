

<html>
<head>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet" />
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js"></script>
</head>
<body>
	<form action="registerCustomer.jsp" method="post">
		<table class="table table-bordered table-striped">
			<tr>
				<td>First Name</td>
				<td><input type="text" name="firstname" /></td>
			</tr>
			<tr>
				<td>Last Name</td>
				<td><input type="text" name="lastname" /></td>
			</tr>
			<tr>
				<td>Age</td>
				<td><input type="text" name="age" /></td>
			</tr>
			<tr>
				<td><input type="submit" name="Insert" /></td>
			</tr>
		</table>
	</form>
</body>
</html>
