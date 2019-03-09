package ecut.filter;

import java.io.IOException;

import javax.servlet.DispatcherType;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;

@WebFilter( urlPatterns = "/*" ,
					 dispatcherTypes = { DispatcherType.REQUEST , DispatcherType.FORWARD , DispatcherType.INCLUDE })
public class DispatchTypeFilter implements Filter {

	public void destroy() {
	}

	public void doFilter(ServletRequest req, ServletResponse resp, FilterChain chain) throws IOException, ServletException {
		// place your code here
		HttpServletRequest request = (HttpServletRequest) req ;
		String uri = request.getRequestURI();
		DispatcherType type = request.getDispatcherType();
		System.out.println( type + " : " + uri );
		// pass the request along the filter chain
		chain.doFilter(req, resp);
	}

	public void init(FilterConfig fConfig) throws ServletException {
	}

}
