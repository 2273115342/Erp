package com.erp.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.erp.pojo.Role;

/**
 * @Description: TODO(这里用一句话描述这个类的作用)
 * @author JS
 * 2018年10月6日 上午8:56:33
 */
@Repository
public interface RoleDao {
	List<Role> findAll();
}
