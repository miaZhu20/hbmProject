<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.project.service.*, com.project.model.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:useBean id="customer" class="com.project.model.Customer">
		<jsp:setProperty name="customer" property="*" />
	</jsp:useBean>
	<jsp:useBean id="customerService" class="com.project.service.CustomerService" />
<%
	boolean flag = customerService.deleteCustomer(customer);

	if (flag)
		response.sendRedirect("index.jsp");
%>
</body>
</html>