package ecut.tags;

import java.io.IOException;
import java.lang.reflect.Array;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

import javax.servlet.jsp.JspContext;
import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.SimpleTagSupport;

public class IteratorTag extends SimpleTagSupport {
	// getXxx()方法要和标签的属性名一致
	private Object items;

	@Override
	public void doTag() throws JspException, IOException {

		JspContext jspContext = this.getJspContext();
		JspWriter out = jspContext.getOut();
		if (items instanceof Map) {
			Map<String, String> map = (Map<String, String>) items;
			Set<String> keys = map.keySet(); // 所有的 key 组成的 Set 集合
			out.println("<h4>map遍历<h4>");
			for (String key : keys) {
				String value = map.get(key);
				out.print(key + " : " + value + "，");
			}

		}
		if (items.getClass().isArray()) {
			out.println("<h4>数组遍历<h4>");
			// 用反射方式遍历数组
			for (int i = 0; i < Array.getLength(items); i++) {
				Object v = Array.get(items, i);
				out.print( v+ "，" );
			}
		}
		if (items instanceof Set) {
			out.println("<h4>Set遍历<h4>");
			Set<String> s = (Set) items;
			for (String value : s) {
				out.print(value+ "，");
			}
		}
		if (items instanceof List) {
			out.println("<h4>List遍历<h4>");
			List<String> list = (List<String>)items;
			Iterator it = list.iterator();
			while (it.hasNext()) {
				out.print(it.next()+ "，");

			}
		}
	}

	public Object getItems() {
		return items;
	}

	public void setItems(Object items) {
		this.items = items;
	}

}
