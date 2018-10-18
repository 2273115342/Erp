package com.erp.service;

import com.erp.pojo.Employees;

/**
* @Description: TODO(用户的Service)
* @author JS
* 2018年10月4日 上午11:34:31
 */
public interface UserService {
	/**
	 * @Title: LoginCheck
	 * @Description: TODO(根据用户登录名查找用户)
	 * @param loginName
	 * @return
	 */
	Employees findByName(String loginName);
	/**
	 * @Title: loginCheck
	 * @Description: TODO(用户登录验证)
	 * @param loginName
	 * @return
	 */
	Integer loginCheck(String loginName,String password);
	/**
	 * @Title: saveUser
	 * @Description: TODO(保存用户)
	 * @param employees
	 * @return
	 */
	Integer saveUser(Employees employees);
}
