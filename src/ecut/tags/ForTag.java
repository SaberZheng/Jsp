package ecut.tags;

import java.io.IOException;

import javax.servlet.jsp.JspContext;
import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.JspFragment;
import javax.servlet.jsp.tagext.SimpleTagSupport;

public class ForTag extends SimpleTagSupport {
	
	private int begin ;
	private int step ;
	private int end ;
	
	private String var ;

	@Override
	public void doTag() throws JspException, IOException {
		
		JspContext jspContext = this.getJspContext();
		
		//JspWriter out = jspContext.getOut();
		
		JspFragment fragment = this.getJspBody(); // 获得 标签体 对应的 对象
		
		for( int i = begin ; i <= end ; i += step ){
			// < var , i > 
			System.out.println( var + " , " + i );
			// 将每次循环中的 i 的值 放入到 page scope ( JspContext 是 PageContext 类的父类 )
			jspContext.setAttribute( var , i ) ; // jspContext.setAttribute( "counter" , i );
			// 执行 JSP 代码片段 ( 标签体 ),如果是null，则会自动将getOut()返回的值传入invoke方法中
			fragment.invoke( null ); 
		}
		
	}

	public int getBegin() {
		return begin;
	}

	public void setBegin(int begin) {
		this.begin = begin;
	}

	public int getStep() {
		return step;
	}

	public void setStep(int step) {
		this.step = step;
	}

	public int getEnd() {
		return end;
	}

	public void setEnd(int end) {
		this.end = end;
	}

	public String getVar() {
		return var;
	}

	public void setVar(String var) {
		this.var = var;
	}

}
