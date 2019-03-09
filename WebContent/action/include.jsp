<%@ page language="java" pageEncoding="UTF-8" %>
<%@ page contentType="text/html; charset=UTF-8" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>标准动作 : include</title>
<style type="text/css">
	div { border:  1px solid blue ; margin: 10px 10px ; padding: 10px 10px ; }
</style>
</head>
<body>

	<div>
		<jsp:include page="inner.jsp"></jsp:include>
	</div>
	
	<div>
		<jsp:include page="inner.html"></jsp:include>
	</div>
	
	<div>
		<jsp:include page="inner.txt"></jsp:include>
	</div>
	
	<div>
		<jsp:include page="../inner.do"></jsp:include>
	</div>
</body>
</html>