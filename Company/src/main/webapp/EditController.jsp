<%@page import="crud.EditValues"%>
<%@page import="crud.InsertValues"%>
<%@page import="com.example.User_Bean"%>
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
	String emp_id = request.getParameter("empid");
	String emp_name = request.getParameter("empname");
	String department = request.getParameter("dept");
	String salary = request.getParameter("salary");
	String exp = request.getParameter("exp");
	String address = request.getParameter("address");

	User_Bean obj_User_Bean = new User_Bean();
	obj_User_Bean.setEmp_id(emp_id);
	obj_User_Bean.setEmp_name(emp_name);
	obj_User_Bean.setDepartment(department);
	obj_User_Bean.setSalary(salary);
	obj_User_Bean.setExp(exp);
	obj_User_Bean.setAdress(address);

	EditValues editV = new EditValues();
	editV.update_employee(obj_User_Bean);
	%>

	<script type="text/javascript">

window.location.href="http://localhost:8080/Company/Com_Details.jsp"
</script>


</body>
</html>