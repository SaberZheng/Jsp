<%@ page language="java" pageEncoding="UTF-8" %>
<%@ page contentType="text/html; charset=UTF-8" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Java Server Pages</title>

<style type="text/css">

	* { font-style: normal ; font-family: "微软雅黑" ; }
	
	h4 { font-weight: normal ; color: red ; }
	
	.wrapper { width : 90% ; margin : 0px auto ; box-shadow: 0px 0px 5px 4px #dedede ; padding: 5px 5px ;}
	
	.wrapper .box { border: 1px solid green ; padding: 5px 5px ; }

	.container { border: 1px solid #dedede ; height: auto ; overflow: hidden ; }
	.container span { float: left ; height: 50px ; line-height: 50px ; text-align: center ; }
	.container .jsp { width : 20% ; color: #ff8040 ; }
	
	.container .jsp-block { display: block ; color: #ff8040 ; }
	
	.container .name { width : 30% ; color : #008080 ; }
	.container .attribute { width : 30% ; }
	.container .attribute .attr-name { color : #800040 ;}
	.container .attribute .attr-value { color : #1e30d7 ;}
	
	.container .expression { width: 60% ; color: #000 ; }
	
	.tab { margin-left: 10px ; clear: both ; }
	
</style>

</head>
<body>

	<h3>JSP , Java Server Pages </h3>
	
	<h4>凡事把 Java Server Pages 翻译成 Java 服务器页面的 都是傻X. </h4>
	
	<h3>JSP 是一种运行在 WEB 服务器的脚本语言，它的本质就是 Servlet .</h3>
	
	<h3>JSP文件中可以出现的 JSP "元素":</h3>
	
	<div class="wrapper">
		
		<h4>指令: 程序通过 JSP 源码 向 JSP 容器 ( Tomcat ) 下达的命令</h4>
		
		<div class="box">
		
			<div class="container" style="width: 400px;">
				<span class="jsp">&lt;%@</span>
				<span class="name">指令名称</span>
				<span class="attribute">
					<i class="attr-name">属性名称</i>=<i class="attr-value" >"属性值"</i>
				</span>
				<span class="jsp">%&gt;</span>
			</div>
			
			<h5>比如</h5>
			
			<div class="container" style="width: 400px;">
				<span class="jsp">&lt;%@</span>
				<span class="name">page</span>
				<span class="attribute">
					<i class="attr-name">language</i>=<i class="attr-value" >"java"</i>
				</span>
				<span class="jsp">%&gt;</span>
			</div>
		
		</div>
		
		<h4>表达式:</h4>
		
		<div class="box">
			<div class="container" style="width: 400px;">
				<span class="jsp" >&lt;%=</span>
				<span class="expression" >表达式</span>
				<span class="jsp" >%&gt;</span>
			</div>
			
			<h5>比如</h5>
			
			<div class="container" style="width: 400px;">
				<span class="jsp">&lt;%=</span>
				<span class="expression">reqeust.getContextPath()</span>
				<span class="jsp">%&gt;</span>
			</div>
		</div>
		
		<h4>声明:</h4>
		
		<div class="box">
			<div class="container" style="width: 400px;">
				<span class="jsp" >&lt;%!</span>
				<span class="expression" >声明属性或方法</span>
				<span class="jsp" >%&gt;</span>
			</div>
			
			<h5>比如</h5>
			
			<div class="container" style="width: 60%;">
				<span class="jsp">&lt;%!</span>
				<span class="expression">public  String  name = "Java Server Pages" ;</span>
				<span class="jsp">%&gt;</span>
			</div>
		</div>
		
		<h4>脚本:</h4>
		
		<div class="box">
			<div class="container" style="width: 400px;">
				<span class="jsp" >&lt;%</span>
				<span class="expression" > 直接书写 Java 代码块</span>
				<span class="jsp" >%&gt;</span>
			</div>
			
			<h5>比如</h5>
			
			<div class="container" style="width: 60%;">
				<span class="jsp-block">&lt;%</span>
				<div class="tab">for( int i = 0 ; i &lt; 10 ; i ++ ) {</div>
				<div class="tab">
					<i class="tab">System.out.println( i ) ; </i>
				</div>
				<div class="tab">}</div>
				<span class="jsp-block">%&gt;</span>
			</div>
		</div>
		
		<h4>JSP注释: 只存在于 JSP 文件中，相应的 .java 文件和 .class 文件中都不存在</h4>
		
		<div class="box">
			&lt;%-- JSP注释的内容 --%&gt;
		</div>
		
	</div>
	
</body>
</html>