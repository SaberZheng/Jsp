<%@ page language="java" pageEncoding="UTF-8" %>
<%@ page contentType="text/html; charset=UTF-8" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EL表达式的常用内置对象</title>
</head>
<body>

	<h4>
		JSP内置对象: <%= pageContext %>
	</h4>
	
	<hr>
	
	<h4>
		pageContext : ${ pageContext }
	</h4>
	<%
		pageContext.setAttribute( "name" , "韩小昭" ); //==> Expression Language Context : pageScope
		request.setAttribute( "name" , "张无忌" );  //==> Expression Language Context : requestScope
		session.setAttribute(  "name" , "张翠山");  //==> Expression Language Context : sessionScope
		application.setAttribute( "name" , "张三丰" ); //==> Expression Language Context : applicationScope
	%>
	
	<h4>
		JSP表达式: <%= pageContext.getAttribute( "name" ) %>
	</h4>
	
	<h4> EL表达式 ( P - R - S - A ): ${ name }</h4>
	<!-- 通过xxxScope.属性名的方式 获得作用域中的属性值-->	
	<h4>
		EL表达式: ${ pageScope.name }
	</h4>
	
	<h4>
		EL表达式: ${ requestScope.name }
	</h4>
	
	<h4>
		EL表达式: ${ sessionScope.name }
	</h4>
	
	<h4>
		EL表达式: ${ applicationScope.name }
	</h4>
	
	<hr>
	
	<h4>
		param : ${ param }
	</h4>
	
	<h4>
		username : ${ param.username }
	</h4>
	
	<h4>
		password : ${ param.password }
	</h4>
	
	<hr>
	
	
	<h2>Scope</h2>
	
	<h4>
		pageScope : ${ pageScope }
	</h4>
	
	<h4>
		requestScope : ${ requestScope }
	</h4>
	
	<h4>
		sessionScope : ${ sessionScope }
	</h4>
	
	<h4>
		applicationScope : ${ applicationScope }
	</h4>

</body>
</html>