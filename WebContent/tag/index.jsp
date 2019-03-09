<%@ page language="java" pageEncoding="UTF-8"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<!-- 导入标签库 -->
<%@ taglib prefix="m" uri="http://www.ecut/tags"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>自定义标签</title>

<style type="text/css">
.tab {
	border: 1px solid blue;
	width: 100%;
	margin: 20px auto;
	border-spacing: 10px;
}

.tab td {
	border: 1px solid green;
	height: 30px;
	text-align: center;
	vertical-align: middle;
}
</style>

</head>
<body>
	<!--使用标签 -->
	<m:hello></m:hello>

	<m:table rows="3" columns="4" className="tab"></m:table>
	<%
		int r = 6 ;
		pageContext.setAttribute( "c" ,  3 ) ; // page scope 中存入一个名称是 c 的值
	%>

	<%-- 对于可以接受动态值的属性来说，
		  可以使用 JSP 表达式 指定属性的值，也可以使用 EL 表达式指定属性的值，建议使用 EL 表达式 --%>
	<m:table rows="<%= r %>" columns="${ c }" className="tab"></m:table>

	<a href="${ pageContext.request.contextPath }/tag/iterator.jsp"
		style="font-size: 30px;">任务: 使用自定义标签遍历数组、迭代集合</a>

	<m:for begin="10" step="10" end="100" var="counter">
		<div>${ counter }</div>
	</m:for>

</body>
</html>