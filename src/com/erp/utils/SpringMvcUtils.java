package com.erp.utils;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

/**6
 * @Description: TODO()
 * @author JS
 * 2018年10月5日 下午4:23:41
 */
public class SpringMvcUtils {
	/**
	 * @Title: getRequest
	 * @Description: TODO(获得request)
	 * @return
	 */
	public static HttpServletRequest getRequest(){
		return ((ServletRequestAttributes) RequestContextHolder.getRequestAttributes()).getRequest();
	}
	
	/**
	 * @Title: getSession
	 * @Description: TODO(获得session)
	 * @return
	 */
	public static HttpSession getSession(){
		return getRequest().getSession();
	}
	
	/***
     * 获取URI的路径,如路径为http://www.newture.net/action/post.htm?method=add, 得到的值为"/action/post.htm"
     * @param request
     * @return
     */
    public static String getRequestURI(){     
        return getRequest().getRequestURI();
    }
}
