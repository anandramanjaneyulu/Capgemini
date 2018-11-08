<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
<head>
<title>Open Account</title>
<style>
.error {
	color: red;
	font-weight: bold;
}
</style>
</head>
<body align=center>
	<h1>Welcome to Pulihora Bank</h1>
	<div align=center>
		<h1>Enter Your Account Details</h1>
		<table border=1>
			<form:form action="saveAccount" method="post" modelAttribute="account">
				<tr>
					<td>Account Type:</td>
					<td><form:input path="accountType" size="25" /></td>
					<td><form:errors path="accountType" cssClass="error" /></td>
				</tr>
				<tr>
					<td>Initial Amount:</td>
					<td><form:input path="accountBalance" size="25" /></td>
					<td><form:errors path="accountBalance" cssClass="error" /></td>
				</tr>
				<tr>
					<td>Pin Number:</td>
					<td><form:input path="pinNumber" size="25" /></td>
					<td><form:errors path="pinNumber" cssClass="error" /></td>
				</tr>
				<tr>
					<td colspan="2" align="center">
						<input type="Submit" name="submit" value="Submit">
					</td>
				</tr>
			</form:form>
		</table>
	</div>
</body>
</html>