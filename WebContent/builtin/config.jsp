<%@ page language="java" pageEncoding="UTF-8" %>
<%@ page contentType="text/html; charset=UTF-8" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>config</title>
</head>
<body>

	<h3>
		InitParameter : <%= config.getInitParameter( "name" ) %>
	</h3>

</body>
</html>