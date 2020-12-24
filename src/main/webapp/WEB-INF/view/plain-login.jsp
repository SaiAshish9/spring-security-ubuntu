<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!DOCTYPE html>

<html>
<head>
<meta charset="UTF-8">
<title>Login</title>

<style>
.failed {
	color: red;
}
</style>

</head>



<body>

	<form:form
		action="${pageContext.request.contextPath}/authenticateTheUser"
		method="POST">

		<c:if test="${param.error != null}">
			<i class="failed"> Invalid Credentials </i>
		</c:if>


		<p>
			User name : <input type="text" name="username" />
		</p>
		<p>
			Password : <input type="password" name="password" />
		</p>

		<input type="submit" value="Login" />

	</form:form>

</body>
</html>