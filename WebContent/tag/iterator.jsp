<%@ page language="java" pageEncoding="UTF-8"%>
<%@ page contentType="text/html; charset=UTF-8"%>

<%@ page import="java.util.*"%>

<%@ taglib prefix="m" uri="http://www.ecut/tags"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>使用自定义标签遍历数组、迭代集合</title>
</head>
<body>

	<h1>使用自定义标签遍历数组、迭代集合</h1>

	<%
		String[] array = { "唐三藏", "宋江", "贾宝玉", "司马懿" };
		pageContext.setAttribute("array", array);
	%>

	<m:iterator items="${ array }" />
	<%-- <m:forEach items="${ array }" /> --%>
	<m:forEach var="index" items="${ array }">  
    	${index}  
   	</m:forEach>

	<%
		Set<String> set = new HashSet<>();
		set.add("唐三藏");
		set.add("孙悟空");
		set.add("猪悟能");
		pageContext.setAttribute("set", set);
	%>

	<m:iterator items="${ set }" />
	<%-- <m:forEach items="${ set }" /> --%>
	<m:forEach var="index" items="${ set }">  
    	${index}  
   	</m:forEach>
	<%
		List<String> list = new ArrayList<>();
		list.add("宋江");
		list.add("武大郎");
		pageContext.setAttribute("list", list);
	%>
	<m:iterator items="${ list }" />
	<%-- <m:forEach items="${ list }" /> --%>
	<m:forEach var="index" items="${ list }">  
    	${index}  
   	</m:forEach>
	<%
		Map<String, String> map = new HashMap<>();
		map.put("魏国", "曹丕");
		map.put("蜀国", "刘备");
		map.put("吴国", "孙权");
		pageContext.setAttribute("map", map);
	%>
	<m:iterator items="${ map }" />
	<%-- <m:forEach items="${ map }" /> --%>
	<m:forEach var="index" items="${ map }">  
    	${index}  
   	</m:forEach>
</body>
</html>