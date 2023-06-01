<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="com.example.User_Bean"%>
<%@page import="crud.Read_Values"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>company details </h1>

		<%	
		Read_Values	obj_Read_Values = new Read_Values();
		
		List<User_Bean> list = obj_Read_Values.get_values();
		
		Iterator<User_Bean> it_list = list.iterator();
	%>
		
	<table border="1">
	<%
		while(it_list.hasNext()){
			
			User_Bean obj_User_Bean = new User_Bean();
			obj_User_Bean=it_list.next();
    %>	
		<tr>
			<td><%=obj_User_Bean.getEmp_id() %></td>
			<td><%=obj_User_Bean.getEmp_name() %></td>
			<td><%=obj_User_Bean.getDepartment() %></td>
			<td><%=obj_User_Bean.getSalary() %></td>
			<td><%=obj_User_Bean.getExp() %></td>
			<td><%=obj_User_Bean.getAdress() %></td>
		</tr>
			
	<%
			
		}
	%>
	</table>



			     	
			     	
			     	
			     	
			     	




</body>
</html>