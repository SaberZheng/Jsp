<%@ page language="java" pageEncoding="UTF-8" %>
<%@ page contentType="text/html; charset=UTF-8" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>include 指令</title>
</head>
<body>

	<div> 使用 include 指令可以包含 一个 .html 、.jsp 、 .txt 文件(只能是字符文件，不能是图片(inner.jpg)等文件，也不能是 Servlet(InnerServlet.java) )</div>
	
	<div style="border: 1px solid blue ;">
		<%@ include file="inner.jsp" %>
	</div>
	
	<div style="border: 1px solid blue ;">
		<%@ include file="inner.html" %>
	</div>
	
	<div style="border: 1px solid blue ;">
		<%@ include file="inner.txt" %>
	</div>
	
	<div>使用 include 包含一个文件，包含操作发生在 .jsp 被翻译成  .java 阶段</div>
	
	<div><b>坑:</b> 怎么解决被包含的文件的 乱码问题 ( 在 .jsp 转换成 .java 文件阶段，怎么控制编码 ) ?</div>

</body>
</html>