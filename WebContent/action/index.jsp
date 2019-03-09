<%@ page language="java" pageEncoding="UTF-8" %>
<%@ page contentType="text/html; charset=UTF-8" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Standard Actions</title>

<style type="text/css">
	a { display: block ; margin: 20px 0px ; padding : 5px 5px ;  border: 1px solid blue ; border-radius : 3px ;  width: 60% ; text-decoration: none ; }
</style>

</head>
<body>

	<h2>Standard Actions</h2>
	
	<a href="${ pageContext.request.contextPath }/action/include.jsp">&lt;jsp:include&gt;</a>
	
	<a href="${ pageContext.request.contextPath }/action/forward.jsp">&lt;jsp:forward&gt;</a>
	
	<a href="${ pageContext.request.contextPath }/action/param.jsp">&lt;jsp:param&gt;</a>
	
	<a href="${ pageContext.request.contextPath }/action/useBean.jsp">&lt;jsp:useBean&gt; 、&lt;jsp:setProperty&gt;、&lt;jsp:getProperty&gt;</a>
	
	<hr>
	
	<form action="${ pageContext.request.contextPath }/action/setProperty1.jsp" method="post">
		<input type="text" name="id" placeholder="编号" >
		<input type="text" name="name" placeholder="姓名" >
		性别:
		<input type="radio" name="gender" value="女" >女
		<input type="radio" name="gender" value="男" >男
		<input type="submit" value="提交" >
	</form>
	
	<hr>
	
	<form action="${ pageContext.request.contextPath }/action/setProperty2.jsp" method="post">
		<input type="text" name="sid" placeholder="编号" >
		<input type="text" name="sname" placeholder="姓名" >
		性别:
		<input type="radio" name="sgender" value="女" >女
		<input type="radio" name="sgender" value="男" >男
		<input type="submit" value="提交" >
	</form>

</body>
</html>