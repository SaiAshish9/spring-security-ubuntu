<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<html>

<head>
</head>

<body>
	<h2>Company Home Page</h2>

	<form:form method="POST"
		action="${pageContext.request.contextPath}/logout">

		<input type="submit"
			value="logout"
    /> 
 
  </form:form>	


</body>

</html>