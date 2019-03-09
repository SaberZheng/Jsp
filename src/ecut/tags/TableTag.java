package ecut.tags;

import java.io.IOException;

import javax.servlet.jsp.JspContext;
import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.SimpleTagSupport;

public class TableTag extends SimpleTagSupport {
	//getXxx()方法要和标签的属性名一致
	private int rows ;
	private int columns ;
	
	private String className ;

	@Override
	public void doTag() throws JspException, IOException {
		System.out.println( "rows : " + rows  );
		System.out.println( "columns : " + columns  );
		System.out.println( "className : " + className  );
		
		JspContext jspContext = this.getJspContext();
		
		JspWriter out = jspContext.getOut();
		
		out.println( "<table class='" + className + "'>" );
		
		for( int i = 0 ; i < rows ; i++ ){
			out.println( "<tr>" );
			
			for( int j = 0 ; j < columns ; j++){
				out.println( "<td>" );
				out.println( i + " , " + j );
				out.println( "</td>" );
			}
			
			out.println( "</tr>" );
		}
		
		out.println( "</table>" );
		
	}

	public int getRows() {
		return rows;
	}

	public void setRows(int rows) {
		this.rows = rows;
	}

	public int getColumns() {
		return columns;
	}

	public void setColumns(int columns) {
		this.columns = columns;
	}

	public String getClassName() {
		return className;
	}

	public void setClassName(String className) {
		this.className = className;
	}

}
