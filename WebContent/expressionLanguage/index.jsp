<%@ page language="java" pageEncoding="UTF-8" %>
<%@ page contentType="text/html; charset=UTF-8" %>

<%@ page import="java.util.*" %>
<%@ page import="ecut.entity.*" %>
<%@ page import="org.malajava.util.*" %>

<%-- 通过 page 指令的  isELIgnored 可以告知容器是否忽略页面上的 EL 表达式 --%>
<%@ page isELIgnored="false" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Expression Language , EL</title>
<style type="text/css">
	h4 { font-weight : normal ; font-size: 20px ; height: 50px ; line-height: 50px ; margin:  0px 0px ;}
</style>
</head>
<body>

	<h2>Expression Language , EL</h2>
	
	<h3> ${ 1 + 1 } </h3>
	
	<h4> pageContext : ${ pageContext } </h4>
	
	<%-- 但凡是 某个对象中有 getAbc() 形式的方法，那么都可以将 getAbc() 写作abc 直接访问  --%>
	<%-- 比如 pageContext.getRequest() --- pageContext.request --%>
	<h4> request : ${ pageContext.request } </h4>
	
	<%-- 比如 pageContext.getResponse() --- pageContext.response --%>
	<h4> response : ${ pageContext.response } </h4>
	
	<%-- pageContext.getSession() --- pageContext.session --%>
	<h4> session : ${ pageContext.session } </h4>
	
	<%-- pageContext.getServletContext() --- pageContext.servletContext --%>
	<h4> application : ${ pageContext.servletContext } </h4>
	
	<%-- pageContext.getServletConfig() --- pageContext.servletConfig --%>
	<h4> config : ${ pageContext.servletConfig } </h4>
	
	<%-- pageContext.getOut() --- pageContext.out --%>
	<h4> out : ${ pageContext.out } </h4>
	
	<%-- pageContext.getPage() --- pageContext.page --%>
	<h4> page : ${ pageContext.page } </h4>
	
	<%-- pageContext.getException() --- pageContext.exception --%>
	<h4> exception : ${ pageContext.exception } </h4>
	
	<hr>
	
	<%
		Student s = new Student();
		s.setId( 1001 );
		s.setName( "华安" );
		s.setGender( '男' );
		Date birthdate = DateHelper.getDate( 1996 , 10 , 11 );
		s.setBirthdate( birthdate );
		
		pageContext.setAttribute( "student" , s ); //==> Expression Language Context : pageScope
		// request.setAttribute( "student" , s );  ==> Expression Language Context : requestScope
		// session.setAttribute(  "student" , s );  ==> Expression Language Context : sessionScope
		// application.setAttribute( "student" , s ); ==> Expression Language Context : applicationScope
	%>
	
	<h4>
		name : <%= s.getName() %>
	</h4>
	
	<h4>
		name : ${ student.name }
	</h4>
	
	<hr>
	
	<a href="<%= request.getContextPath() %>/builtin.jsp?username=zhangsanfeng"> Expression Language 内置对象</a>
	
	<a href="${ pageContext.request.contextPath }/builtin.jsp?username=zhangsanfeng"> Expression Language 内置对象</a>
	
	
</body>
</html>