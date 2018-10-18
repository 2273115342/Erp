package com.erp.test;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.erp.dao.RoleDao;
import com.erp.pojo.Role;

/**
* @Description: TODO(用户的测试类)
* @author JS
* 2018年10月4日 上午11:36:33
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:applicationContext.xml")
public class RoleTest {
	
	@Autowired
	private RoleDao roleDao;
	
	@Test
	public void findByNameTest(){
		for(Role role : roleDao.findAll()){
			System.out.println(role);
		}
	}
	
}
