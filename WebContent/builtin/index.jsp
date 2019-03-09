<%@ page language="java" pageEncoding="UTF-8" %>
<%@ page contentType="text/html; charset=UTF-8" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP的9个标准内置对象</title>
</head>
<body>

	<h3>JSP的9个标准内置对象</h3>
	
	<ul>
		<li><a href="">application</a>
			<ol>
				<li> <%out.println(application); %></li>
				<li> <%= application  %></li>
				<li> application 是否是 ServletContext 类型: <%= application instanceof ServletContext %></li>
			</ol>
		</li>
		<li><a href="">request</a>
			<ol>
				<li> <%= request  %></li>
				<li> request 是否是 HttpServletRequest 类型: <%= request instanceof HttpServletRequest %></li>
			</ol>
		</li>
		<li><a href="">response</a>
			<ol>
				<li> <%= response  %></li>
				<li> response 是否是 HttpServletResponse 类型: <%= response instanceof HttpServletResponse %></li>
			</ol>
		</li>
		<li><a href="">session</a>
			<ol>
				<li> <%= session  %></li>
				<li> session 是否是 HttpSession 类型: <%= session instanceof HttpSession %></li>
			</ol>
		</li>
		<li><a href="">pageContext</a>
			<ol>
				<li> <%= pageContext  %></li>
				<li> pageContext 是否是 PageContext 类型: <%= pageContext instanceof PageContext %></li>
			    <li><a href="<%= request.getContextPath() %>/builtin/pageContext.jsp">pageContext</a></li>
			</ol>
		</li>
		<li><a href="">out</a>
			<ol>
				<li> <%= out  %></li>
				<li> out 是否是 JspWriter 类型: <%= out instanceof JspWriter %></li>
			</ol>
		</li>
		<li><a href="javascript:;">config</a>
			<ol>
				<li> <%= config  %></li>
				<li> config 是否是 ServletConfig 类型: <%= config instanceof ServletConfig %></li>
				<li><a href="<%= request.getContextPath() %>/builtin/config.jsp">config ( jsp )</a></li>
				<li><a href="<%= request.getContextPath() %>/config.do">config ( servlet ) </a></li>
			</ol>
		</li>
		<li><a href="">exception</a>
			<ol>
				<li> <a href="<%= request.getContextPath() %>/builtin/throw.jsp">throw</a> </li>
			</ol>
		</li>
		<li><a href="">page</a>
			<ol>
				<li> <%= page  %></li>
				<li> page 和 this  是否是 同一个对象: <%= page == this %></li>
				<li> page 是否是 一个 Servlet : <%= page instanceof Servlet %></li>
			</ol>
		</li>
	</ul>
	
</body>
</html>