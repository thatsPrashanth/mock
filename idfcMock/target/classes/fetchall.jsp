<%@page import="pgms.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.util.List"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<table border="1px">
		<tr>
			<th>USER MAIL</th>
			<th>USER NAME</th>
		</tr>

		<%
		List<User> data = (List<User>) request.getAttribute("requestKey");
		for (User user : data) {
		%>
		<tr>
			<td><%=user.getUser_mail()%></td>
			<td><%=user.getUser_name()%></td>
		</tr>
		<%
		}
		%>
	</table>
</body>
</html>