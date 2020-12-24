<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="security"
	uri="http://www.springframework.org/security/tags"%>

<html>

<head>
</head>

<body>
	<h2>Company Home Page</h2>

	<hr>

	<security:authentication property="principal.username" />
	<br>
	<br>
	<security:authentication property="principal.authorities" />
	<hr>

	<security:authorize access="hasRole('MANAGER')">
		<p>
			<a href="${pageContext.request.contextPath}/leaders">Leadership
				Meeting</a> (Only for manager)
		</p>
	</security:authorize>


	<security:authorize access="hasRole('ADMIN')">
		<p>
			<a href="${pageContext.request.contextPath}/systems">IT Systems
				Meeting</a> (Only for admin peeps)
		</p>
	</security:authorize>



	<form:form method="POST"
		action="${pageContext.request.contextPath}/logout">

		<input type="submit" value="logout" />

	</form:form>


</body>

</html>