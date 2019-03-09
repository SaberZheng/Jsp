package ecut.tags;

import java.io.IOException;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.servlet.jsp.JspContext;
import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.SimpleTagSupport;

public class ForEachTag extends SimpleTagSupport {
	private Object items;
	private String var;
	private Collection collection;

	public Object getItems() {
		return items;
	}

	public void setItems(Object items) {
		this.items = items;
	}

	public String getVar() {
		return var;
	}

	public void setVar(String var) {
		this.var = var;
	}

	@Override
	public void doTag() throws JspException, IOException {
		JspContext jspContext = this.getJspContext();
		JspWriter out = jspContext.getOut();
		if (items instanceof Map) {
			Map map = (Map) items;
			collection = map.entrySet();
		} else if (items instanceof Collection) {
			collection = (Collection) items;
		} else if (items instanceof Object[]) {
			Object[] objs = (Object[]) items;
			collection = Arrays.asList(objs);
		} else if (items.getClass().isArray()) {
			int length = Array.getLength(items);
			collection = new ArrayList();
			for (int i = 0; i < length; ++i) {
				collection.add(Array.get(items, i));
			}
		}

		Iterator it = collection.iterator();
		while (it.hasNext()) {
			Object ob = it.next();
			jspContext.setAttribute(var, ob);
			//out.print(ob + ",");
			getJspBody().invoke(null);
		}
	}
}
