package com.erp.dao;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.erp.pojo.Employees;

import java.util.List;

/**
 * @Description: TODO(这里用一句话描述这个类的作用)
 * @author JS
 * 2018年10月5日 下午3:49:27
 */
@Repository
public interface UserDao {
	/**
	 * @Title: findByName
	 * @Description: TODO(根据用户名查找用户)
	 * @param loginName
	 * @return
	 */
	Employees findByName(String loginName);
	
	/**
	 * @Title: saveUser
	 * @Description: TODO(保存用户)
	 * @param employees
	 * @return
	 */
	Integer saveUser(Employees employees);

	/**
	 * @param employees
	 * @return
	 */
	List<Employees> findByUserRole(Employees employees);
}
