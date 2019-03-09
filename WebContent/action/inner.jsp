<%@ page language="java" pageEncoding="UTF-8" %>
<%@ page contentType="text/html; charset=UTF-8" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>inner</title>
</head>
<body>

	<%
		for( int i = 0 ; i < 10 ; i++ )  {
			out.println( i ) ; // 这个 out 是 JSP 内置对象
		}
	%>
	
	<div>${ param.username }</div>

</body>
</html>