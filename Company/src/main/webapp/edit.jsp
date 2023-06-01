<%@page import="com.example.User_Bean"%>
<%@page import="crud.EditValues"%>
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
	String emp_id = (String) request.getParameter("emp_id");

	EditValues editValues = new EditValues();

	User_Bean bean = editValues.get_values_of_employee(emp_id);
	%>

	<div align="center">
		<h1>Edit registered employee</h1>
		<form action="EditController.jsp" method="post">
			<table style="with: 80%">
				<tr>
					<td>EMP ID</td>
					<td><input type="text" name="empid" value="<%=emp_id%>"
						required></td>
				</tr>
				<tr>
					<td>Employee name</td>
					<td><input type="text" name="empname"
						value="<%=bean.getEmp_name()%>"></td>
				</tr>
				<tr>
					<td>Department</td>
					<td><input type="text" name="dept"
						value="<%=bean.getDepartment()%>"></td>
				</tr>
				<tr>
					<td>Salary</td>
					<td><input type="text" name="salary"
						value="<%=bean.getSalary()%>" ></td>
				</tr>
				<tr>
					<td>Experience</td>
					<td><input type="text" name="exp" value="<%=bean.getExp()%>"></td>
						
				</tr>
				<tr>
					<td>Address</td>
					<td><input type="text" name="address"
						value="<%=bean.getAdress()%>"></td>
				</tr>
			</table>
			<input type="submit" value="Update">
		</form>
	</div>

</body>
</html>