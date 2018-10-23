package com.erp.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import com.erp.utils.SpringMvcUtils;
import com.erp.utils.SystemUtils;

/**
 * @Description: TODO(拦截未登录的用户)
 * @author JS
 * 2018年10月5日 下午5:20:27
 */
public class LoginInterceptor implements HandlerInterceptor{

	
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response,
			Object object) throws Exception {
		if(!SystemUtils.isLogin()){  //用户没有登录才会进入
			String uri = SpringMvcUtils.getRequestURI();
			if(!uri.startsWith("/Erp/login") && !uri.startsWith("/Erp/loginCheck") &&
					!uri.startsWith("/Erp/user/add") && !uri.startsWith("/Erp/resources") &&
					!uri.startsWith("/Erp/user/findByAccount") && !uri.startsWith("/Erp/quit")){
				System.out.println("拦截：" + uri);
				request.setAttribute("noLogin", 1);

				request.getRequestDispatcher("/login").forward(request, response);
				//重定向到登录页面
				/*response.sendRedirect(request.getSession().getServletContext().getContextPath()+"/login");*/
			}
		}
		return true;
	}

	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response,
			Object object, ModelAndView mv) throws Exception {
	}

	@Override
	public void afterCompletion(HttpServletRequest request,
			HttpServletResponse response, Object object, Exception ex)
			throws Exception {
	}
	
}
