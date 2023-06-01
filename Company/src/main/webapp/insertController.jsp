<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="crud.InsertValues"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
	String emp_id = request.getParameter("empid");
	String emp_name = request.getParameter("empname");
	String department = request.getParameter("dept");
	String salary = request.getParameter("salary");
	String exp = request.getParameter("exp");
	String address = request.getParameter("address");

	InsertValues objIV = new InsertValues();
	objIV.insertValues(emp_id, emp_name, department, salary, exp, address);
	%>

	<h2>Registration done successfully</h2>
	<a href="Insert_Emp.jsp">Register again</a>
	<a href="Index.jsp">Go to home page</a>
</body>
</html>