<%@ page language="java" pageEncoding="UTF-8" %>
<%@ page contentType="text/html; charset=UTF-8" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>标准动作 : setProperty</title>
</head>
<body>

	<jsp:useBean id="student" class="ecut.entity.Student" scope="page" />
	
	<jsp:setProperty  name="student" property="id" param="sid"/>
	
	<jsp:setProperty  name="student" property="name" param="sname"/>
	
	<jsp:setProperty  name="student" property="gender" param="sgender"/>
	
	<div>
			<div> id : ${ student.id } </div>
			<div> name : ${ student.name } </div>
			<div> gender : ${ student.gender } </div>
	</div>

</body>
</html>