<%@ page language="java" pageEncoding="UTF-8" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>pageContext</title>
</head>
<body>
	<h4>
		application:<%=pageContext.getServletContext() %>
	</h4>
	
	<h4>
		request:<%=pageContext.getRequest() %>
	</h4>
	
	<h4>
		response:<%=pageContext.getResponse() %>
	</h4>
	
	<h4>
		session:<%=pageContext.getSession() %>
	</h4>
	
	<h4>
		config:<%=pageContext.getServletConfig() %>
	</h4>
	
	<h4>
		page:<%=pageContext.getPage() %>
	</h4>
	
	<h4>
		out:<%=pageContext.getOut()%>
	</h4>
	
	<h4>
		exception:<%=pageContext.getException()%>
	</h4>
	
	<hr>
	
	<h4>
		Eexpresssion Language:<%=pageContext.getExpressionEvaluator() %>
	</h4>
	
	
	
	
</body>
</html>