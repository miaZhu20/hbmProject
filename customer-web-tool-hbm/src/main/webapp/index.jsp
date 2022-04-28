<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ page import="com.project.service.*, com.project.model.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet" />
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js"></script>
</head>

<body>
	<jsp:useBean id="service" class="com.project.service.CustomerService" />
	<%
	List<Customer> list = service.viewAll();
	%>
	<table class="table table-bordered table-striped table-hover">
		<tr>
			<th>ID</th>
			<th>FisrtName</th>
			<th>LastName</th>
			<th>Age</th>
		</tr>
		<%
		for (Customer customer : list) {
		%>
		<tr>
			<td><%=customer.getId()%></td>
			<td><%=customer.getFirstname()%></td>
			<td><%=customer.getLastname()%></td>
			<td><%=customer.getAge()%></td>
			<td><a class="btn btn-primary"
				href="update.jsp?id=<%=customer.getId()%>"><img
					src="images/add-new (1).png" /></a></td>
			<td><a class="btn btn-warning"
				href="delete.jsp?id=<%=customer.getId()%>">Delete</a></td>
		</tr>
		<%
		}
		%>
	</table>
	<a href="registerForm.jsp"><img src="images/add-new (1).png" /></a>
</body>
</html>
