<%@page import="crud.DeleteValues"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<%
	String emp_id =request.getParameter("emp_id");

DeleteValues deleteValues= new DeleteValues();
deleteValues.delete_values(emp_id);
	%>

	<script type="text/javascript">

window.location.href="http://localhost:8080/Company/Com_Details.jsp"

</script>

</body>
</html>