<%@ page language="java" pageEncoding="UTF-8" %>
<%@ page contentType="text/html; charset=UTF-8" %>

<%@ page buffer="10kb"  session="false" autoFlush="true" %>
<!-- 程序通过 JSP 源码 向 JSP 容器 ( Tomcat ) 下达的命令 buffer(为0时，autoFlush不能为0)设置缓冲区  autoFlush 是否自动刷出-->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>page指令</title>
</head>
<body>

	<div>通过 page 指令的属性可以命令 Tomcat 按照要求去处理 JSP </div>
	
	<div> page.jsp --"翻译"--> page_jsp.java --"编译"-->  page_jsp.class </div>

</body>
</html>