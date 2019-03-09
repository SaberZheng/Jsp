package ecut.tags;

import java.io.IOException;

import javax.servlet.jsp.JspContext;
import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.SimpleTagSupport;
/*创建一个类，用来对标签的行为进行控制
这个类 继承 javax.servlet.jsp.tagext.SimpleTagSupport 并重写 doTag() 方法*/
public class HelloTag extends SimpleTagSupport {

	@Override
	public void doTag() throws JspException, IOException {
		
		JspContext jspContext = this.getJspContext();
		
		JspWriter out = jspContext.getOut();
		// 这个方法由容器调用。 所有标签逻辑，迭代，标签体的处理等都放在这个方法中。
		out.println( "<div style='border:1px solid blue;text-align:center;padding:5px 5px ;'>" );
		out.println( "hello" );
		out.println( "</div>" );
		
	}

}
