<%@ page language="java" pageEncoding="UTF-8" %>
<%@ page contentType="text/html; charset=UTF-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- prefix前缀 对应的uri-->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>taglib指令</title>
</head>
<body>

	<c:forEach begin="1" step="2" end="11" var="x">
	<!-- EI表达式 -->
		${ x }
	</c:forEach>

</body>
</html>