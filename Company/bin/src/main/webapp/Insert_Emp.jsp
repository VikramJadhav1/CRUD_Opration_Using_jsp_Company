<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>


<div align="center">
<h1>Employee Registration Form</h1>
<form action="insertController.jsp" method="post" >
<table style="with: 80%">
<tr>
<td>EMP ID</td>
<td><input type="text" name="empid" required></td>
</tr>
<tr>
<td>Employee name</td>
<td><input type="text" name="empname" required></td>
</tr>
<tr>
<td>Department</td>
<td><input type="text" name="dept" required></td>
</tr>
<tr>
<td>Salary</td>
<td><input type="text" name="salary" required></td>
</tr>
<tr>
<td>Experience</td>
<td><input type="text" name="exp" required></td>
</tr>
<tr>
<td>Address</td>
<td><input type="text" name="address" required></td>
</tr>
</table>
<input type="submit" value="submit">
<input type="reset" value="reset">
</form>
</div>
</body>
</html>