<%@ page language="java" pageEncoding="UTF-8" %>
<%@ page contentType="text/html; charset=UTF-8" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Java Server Pages</title>
</head>
<body>

	<a href="<%= request.getContextPath() %>/jsp/base.jsp">指令、表达式、声明、脚本</a>
	
	<h2>指令</h2>
	<ul>
		<li>
			<a href="<%= request.getContextPath() %>/jsp/page.jsp"> page 指令</a>
		</li>
		<li>
			<a href="<%= request.getContextPath() %>/jsp/include.jsp"> include 指令</a>
		</li>
		<li>
			<a href="<%= request.getContextPath() %>/jsp/taglib.jsp"> taglib 指令</a>
		</li>
	</ul>
	
	<h2>表达式</h2>
	
	<ul>
		<li> 表达式可以是 1 + 1 ，或者是 request ， 或者是 request.getContextPath() </li>
		<li> 表达式都会有自己的 "运算" 结果 </li>
		<li> 表达式被用来用作 输出 或 赋值 </li>
		<li> <a href="<%= request.getContextPath() %>/jsp/expression.jsp">表达式</a> </li>
	</ul>
	
	<h2>声明</h2>
	
	<ul>
		<li> 在JSP中可以通过声明来声明属性和方法 </li>
		<li> 被声明的属性和方法都被包含在 jsp 对应的那个 servlet 类中 </li>
		<li> <a href="<%= request.getContextPath() %>/jsp/declare.jsp">声明</a> </li>
	</ul>
	
	<h2>脚本</h2>
	
	<ul>
		<li> 在JSP中可以嵌入Java代码 </li>
		<li> <a href="<%= request.getContextPath() %>/jsp/script.jsp">脚本</a> </li>
	</ul>
	

</body>
</html>