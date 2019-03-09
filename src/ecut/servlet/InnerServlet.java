package ecut.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.malajava.util.StringHelper;

@WebServlet( "/inner.do" )
public class InnerServlet extends HttpServlet {

	private static final long serialVersionUID = 8241829948239427285L;

	@Override
	protected void service( HttpServletRequest request , HttpServletResponse response ) 
			throws ServletException, IOException {
		PrintWriter w = response.getWriter();
		w.println( "我是内部的Servlet" );
		String username = request.getParameter( "username" );
		if( StringHelper.notEmpty( username ) ) {
			w.println( "<p>" + username +"</p>" ) ;
		}
	}
	
	

}
