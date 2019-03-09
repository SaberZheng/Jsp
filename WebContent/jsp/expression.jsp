<%@ page language="java" pageEncoding="UTF-8" %>
<%@ page contentType="text/html; charset=UTF-8" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP表达式</title>
</head>
<body>

	<h4>
		<%= 1 + 1  %>
	</h4>

	<h4>
		<%= request %>
	</h4>
	
	<h4>
		<%= request.getContextPath() %>
	</h4>

</body>
</html>