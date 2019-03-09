<%@ page language="java" pageEncoding="UTF-8" %>
<%@ page contentType="text/html; charset=UTF-8" %>

<%@ page import="java.io.IOException" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>声明</title>
</head>
<body>

	<%-- 声明属性 加到类里面直接作为成员，全局--%>
	<%! public String name = "Java Server Pages" ; %>
	
	<%-- 声明方法 --%>
	<%!
		public void hello( JspWriter out ) throws IOException {
			System.out.println( name );
			out.print( name );
		}
	%>
	
	<%-- 通过脚本来调用方法 --%>
	<% hello( out ); %>

</body>
</html>