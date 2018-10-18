package com.erp.utils;

import java.util.List;

import com.erp.pojo.Employees;

/**
 * @Description: TODO(这里用一句话描述这个类的作用)
 * @author JS
 * 2018年10月5日 下午4:23:41
 */
public class SystemUtils {
	
	/**
	 * @Title: getLoginUser
	 * @Description: TODO(获得登录用户)
	 * @return Employees
	 */
	public static Employees getLoginUser(){
		return (Employees) SpringMvcUtils.getSession().getAttribute("loginUser");
	}
	
	/**
	 * @Title: isLogin
	 * @Description: TODO(判断用户是否登录)
	 * @return 登录返回true   未登录返回false
	 */
	public static Boolean isLogin(){
		return getLoginUser()!=null;
	}
	
	/**
	 * @Title: isHaveLink
	 * @Description: TODO(判断登录的用户是否拥有访问该链接的权限)
	 * @param uri
	 * @return 拥有返回true 为拥有返回false
	 */
	public static Boolean isHaveLink(String uri){
		List<String> list = (List<String>) SpringMvcUtils.getSession().getAttribute("accesslink");
//		return Arrays.asList(list).contains(uri);  //效率貌似比较低
		for(String string : list ){
			if(string != null && string.equals(uri)){
				return true;
			}
		}
		return false;
	}
	
}
