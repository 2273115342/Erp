package com.erp.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import com.erp.utils.SpringMvcUtils;
import com.erp.utils.SystemUtils;

/**
 * @Description: TODO(拦截已登录的用户，判断用户是否有权限访问该地址)
 * @author JS
 * 2018年10月5日 下午5:20:27
 */
public class AccesslinkInterceptor implements HandlerInterceptor{

	
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response,
			Object object) throws Exception {
		if(SystemUtils.isLogin()){  //用户登录了才会进入
			String uri = SpringMvcUtils.getRequestURI();
			if( !uri.startsWith("/Erp/login") && !uri.startsWith("/Erp/loginCheck") &&
					!uri.startsWith("/Erp/resources") && !uri.startsWith("/Erp/quit")){
				//如果用户拥有的访问列表里 ,没有现在访问的路径,则抛出非法访问
				if(!SystemUtils.isHaveLink(uri)) throw new Exception("非法访问!");
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
