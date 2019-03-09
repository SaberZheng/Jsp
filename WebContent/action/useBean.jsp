<%@ page language="java" pageEncoding="UTF-8" %>
<%@ page contentType="text/html; charset=UTF-8" %>

<%@ page import="java.util.*" %>
<%@ page import="org.malajava.util.*" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>标准动作: useBean</title>
</head>
<body>

	<%-- Student student = null ; --%>
	<%-- student = (Student) pageContext.getAttribute( "student" ); --%>
	<%-- if( student == null ) { 
				student = new Student();
				pageContext.setAttribute( "student" , student );
			} else {
				// 如果 指定的 scope 中已经有某个类型的对象就不再创建
			}
	--%>

	<jsp:useBean id="student" class="ecut.entity.Student" scope="page" />
	
	<%-- student.setId( 10001 ) ;  //  student.id = 10001 ; --%>
	<jsp:setProperty  name="student" property="id" value="10001" />
	<jsp:setProperty  name="student" property="name" value="张三丰" />
	<jsp:setProperty  name="student" property="gender" value="男" />
	
	<% Date birthdate = DateHelper.getDate( 1995 , 10 , 10 ) ; %>
	<jsp:setProperty  name="student" property="birthdate" value="<%= birthdate %>"/>
	
	<p>
		JSP表达式: <%= student %>
	</p>
	
	<p>
		EL表达式:${ student }
	</p>
	
	<hr>
	
	<div> id : ${ student.id } </div>
	<div> name : ${ student.name } </div>
	<div> gender : ${ student.gender } </div>
	<div> birthdate : ${ student.birthdate } </div>
	
		<hr>
	
	<div> id : <jsp:getProperty name="student" property="id" /> </div>
	<div> name : <jsp:getProperty name="student" property="name" />  </div>
	

</body>
</html>