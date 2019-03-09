<%@ page language="java" pageEncoding="UTF-8"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%-- Jsp注释--%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>脚本</title>
</head>
<style>
h1 {
	/*css 注释*/
	color: blue;
}
</style>

<script>
	//js单行注释
	var i = 0;
	/*js多行注释
	 function f1(){
	 alert(i);
	 }*/
</script>

<body>
	<!--HTML注释  -->
	<%
		for (int i = 1; i < 5; i++) { //java注释
	%>
	<h1>哈</h1>
	<%
		}
	%>
</body>
</html>