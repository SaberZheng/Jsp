<%@ page language="java" pageEncoding="UTF-8" %>
<%@ page contentType="text/html; charset=UTF-8" %>

<%@ page isErrorPage="true" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>exception</title>
</head>
<body>

	<h3>对于要负责处理异常的页面，首先需要通过指令声明这是一个错误处理页面</h3>
	
	<h3>只有声明了 &lt;%@ page isErrorPage="true" %&gt; 的页面才会有 exception 对象存在</h3>
	
	<h3> exception : <%= exception %></h3>
	
	<h3> exception message : <%= exception.getMessage() %></h3>

</body>
</html>