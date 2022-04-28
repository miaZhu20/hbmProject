<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="com.demo.service.*, com.demo.model.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String firstName = request.getParameter("firstname");
	String lastName = request.getParameter("lastname");
	int age = Integer.parseInt(request.getParameter("age"));
	
	Customer customer = new Customer(firstName, lastName, age);
	CustomerService customerService = new CustomerService();
	boolean flag = customerService.insertCustomer(customer);
	
	if(flag)
		out.println("New Customer Inserted!");
%>
</body>
</html>