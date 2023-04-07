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
<form:form action="removejsp" modelAttribute="formKey">
		<h1>REMOVE</h1>
		<table>
			<tr>
				<td><label for="b">EMAIL :</label></td>
				<td><form:input type="text" path="user_mail" id="b"
						placeholder="abc@gmail.com" /></td>
			</tr>
			<tr>
				<td><form:button value="">REMOVE
					</form:button></td>
			</tr>
		</table>
	</form:form>
</body>
</html>