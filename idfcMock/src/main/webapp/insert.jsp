<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<body>
	<form:form action="insertjsp" modelAttribute="formKey">
		<h1>INSERT</h1>
		<table>
			<tr>
				<td><label for="b">EMAIL :</label></td>
				<td><form:input type="text" path="user_mail" id="b"
						placeholder="abc@gmail.com" /></td>
			</tr>
			
			<tr>
				<td><label for="a">NAME :</label></td>
				<td><form:input type="text" path="user_name" id="a"
						placeholder="name" /></td>
			</tr>

			<tr>
				<td><form:button value="">INSERT
					</form:button></td>
			</tr>
		</table>
	</form:form>
</body>
</body>

</html>