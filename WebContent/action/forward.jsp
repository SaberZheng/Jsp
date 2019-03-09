<%@ page language="java" pageEncoding="UTF-8" %>
<%@ page contentType="text/html; charset=UTF-8" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>标准动作 : forward </title>
</head>
<body>

	<jsp:forward page="/WEB-INF/main.jsp" >
		<jsp:param name="username" value="Amy" />
	</jsp:forward>

</body>
</html>