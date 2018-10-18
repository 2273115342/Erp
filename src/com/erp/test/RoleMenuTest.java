package com.erp.test;

import java.util.ArrayList;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.erp.dao.RoleMenuDao;

/**
* @Description: TODO(供应商的测试类)
* @author JS
* 2018年10月4日 上午11:36:33
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:applicationContext.xml")
public class RoleMenuTest {
	
	@Autowired
	private RoleMenuDao roleMenuDao;
	
	@Test
	public void deleteRoleHavaMenuTest(){
		ArrayList<Integer> menuIds = new ArrayList<Integer>();
		menuIds.add(1);
		menuIds.add(2);
		menuIds.add(3);
		String sOrF = roleMenuDao.deleteRoleHavaMenu(1, menuIds)?"成功":"失败";
		System.out.println(sOrF);
	}
	
	@Test
	public void addRoleHavaMenuTest(){
		ArrayList<Integer> menuIds = new ArrayList<Integer>();
		menuIds.add(1);
		menuIds.add(2);
		menuIds.add(3);
		Integer sOrF = roleMenuDao.addRoleHavaMenu(1, menuIds);
		System.out.println(sOrF);
	}
}
