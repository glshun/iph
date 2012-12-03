package cn.fam1452.action.filter;

import java.lang.reflect.Method;

import javax.servlet.http.HttpServletRequest;

import org.nutz.json.JsonFormat;
import org.nutz.mvc.ActionContext;
import org.nutz.mvc.ActionFilter;
import org.nutz.mvc.View;
import org.nutz.mvc.filter.CheckSession;
import org.nutz.mvc.view.ServerRedirectView;
import org.nutz.mvc.view.UTF8JsonView;

import cn.fam1452.Constant;

/**
 * 前台用户权限过滤器
 * Class UserFilter
 *
 * @author <a href="mailto:zhagndingding@cyanway.com">Derek</a>
 * @version $Revision:1.0.0, $Date:Aug 12, 2012 11:16:47 AM $
 */
public class UserFilter extends CheckSession implements ActionFilter {
	 public View match(HttpServletRequest request, Method method) {  
	 // 可用，直接加入HttpServletRequest参数，nutz能传值给它  
	 //      return new View() {  
	 //          @Override  
	 //          public void render(HttpServletRequest req, HttpServletResponse resp, Object obj)  
	 //                  throws Exception {  
	 //              resp.sendRedirect("index.jsp");  
	 //              resp.flushBuffer();  
	 //          }  
	 //      };  
	             ServerRedirectView v1=new ServerRedirectView("/index.jsp");  
	   
	             String go=request.getParameter("go");  
	             if (go==null) return v1;  
	             if (go.equals("no")) {  
	                 UTF8JsonView v=new   org.nutz.mvc.view.UTF8JsonView(new JsonFormat() );  
	                 v.setData("dd");//json 格式  
	                 return v;  
	             }  
	             return null;  
	     }  

	/**
	 * 
	 * @param path : seesion检查失败的跳转路径
	 */
	public UserFilter(String path) {
		super(Constant.QT_USER_SESSION , Constant.INDEXPAGE);
		// TODO Auto-generated constructor stub
	}


}
