<%@ page language="java" pageEncoding="UTF-8" %>
<%@ page contentType="text/html; charset=UTF-8" %>

<%@ page errorPage="catch.jsp" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>throw</title>
</head>
<body>

	<h3>在可能发生异常的页面中使用 &lt;%@ page errorPage="catch.jsp" %&gt; 指定错误处理页面 </h3>

	<h3>
		<%= 100 / 0  %>
	</h3>
	
</body>
</html>