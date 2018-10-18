package com.erp.test;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.erp.dao.MenuDao;
import com.erp.pojo.Menu;
import com.erp.service.MenuService;

/**
* @Description: TODO(供应商的测试类)
* @author JS
* 2018年10月4日 上午11:36:33
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:applicationContext.xml")
public class MenuTest {
	
	@Autowired
	private MenuDao menuDao;
	@Autowired
	private MenuService menuService;
	
	@Test
	public void test(){
		menuService.getUserMenu(3);
	}
	
	@Test
	public void RoleHaveMenuTest(){
		for(Menu menu : menuService.getRoleHaveMenu(3)){
			System.out.println(menu.getMenuName()+"  是否拥有:"+menu.getIsHave());
			if(menu.getChildMenu()!=null){
				for(Menu menu2 : menu.getChildMenu()){
					System.out.println(menu2.getMenuName()+"  是否拥有:"+menu2.getIsHave());
				}
			}
		}
	}
	
	@Test
	/**
	 * @Title: queryRoleMenuTest
	 * @Description: TODO(查看用户所拥有的菜单)
	 */
	public void queryRoleMenuTest(){
		Long long1 = System.currentTimeMillis();
		List<Menu> allMenu = menuDao.findAll();
		List<Menu> haveMenu = menuDao.findByRoleId(3);
		List<Menu> newMenu = new ArrayList<Menu>();
		for (int i = 0; i < allMenu.size(); i++) {  //设置好一级菜单
			if(allMenu.get(i).getParentId()==null){
				for (int j = 0; j < haveMenu.size(); j++) {
					if(haveMenu.get(j).getMenuId()==allMenu.get(i).getMenuId()){ //判断是否拥有这个一级菜单
						allMenu.get(i).setIsHave(1);
					}
				}
				newMenu.add(allMenu.get(i)); //添加所有的一级菜单到新的菜单列表
			}
		}
		
		for (int i = 0; i < newMenu.size(); i++) {
			newMenu.get(i).setChildMenu(getChildMenu(newMenu.get(i).getMenuId(), allMenu, haveMenu));
		}
		
		/*for(Menu menu : newMenu){
			
		}*/
		for(Menu menu : newMenu){
			System.out.println(menu.getMenuName()+"  是否拥有:"+menu.getIsHave());
			if(menu.getChildMenu()!=null){
				for(Menu menu2 : menu.getChildMenu()){
					System.out.println(menu2.getMenuName()+"  是否拥有:"+menu2.getIsHave());
				}
			}
		}
		Long long2 = System.currentTimeMillis();
		System.out.println("总用时：" + (long2 - long1));
	}
	
	/**
	 * @Title: getChildMenu 
	 * @Description: TODO(获得子菜单)
	 * @param id  要获得子菜单 的菜单id
	 * @param allMenus 所有菜单
	 * @param haveMenus 拥有的菜单
	 * @return
	 */
	public List<Menu> getChildMenu(Integer id, List<Menu> allMenus,List<Menu> haveMenus){
		// 子菜单
	    List<Menu> childList = new ArrayList<Menu>();
		for(Menu menu : allMenus){ //遍历所有菜单
			if(menu.getParentId() == id){ //找到传过来id的所有子菜单
				for (int i = 0; i < haveMenus.size(); i++) {  //遍历子菜单
					if(menu.getMenuId()==haveMenus.get(i).getMenuId()){ //判断用户是否拥有此菜单
						menu.setIsHave(1);  //把是否拥有 设为拥有
					}
				}
                childList.add(menu);  //添加到子菜单
			}
		}
		return childList;
	}
	
	@Test
	public void getHaveAccesslink0(){
		long time = 0;
		for (int i = 0; i < 1000; i++) {
			List<String> list = menuDao.getHaveAccessLinks(1);
			Long long1 = System.currentTimeMillis();
			String link = "cccc";
			System.out.println(Arrays.asList(list).contains(link));
			Long long2 = System.currentTimeMillis();
			time += long2-long1;
		}
		System.out.println("总用时："+time);
	}
	
	@Test
	//效率第一
	public void getHaveAccesslink1(){
		long time = 0;
		for (int i = 0; i < 1000; i++) {
			List<String> list = menuDao.getHaveAccessLinks(1);
			Long long1 = System.currentTimeMillis();
			String link = "cccc";
			for(String string : list){
				if(link.equals(string)){
					System.out.println("成功进入页面");
					break;
				}
			}
			Long long2 = System.currentTimeMillis();
			time += long2-long1;
		}
		System.out.println("总用时："+time);
	}
	
	@Test
	//效率第二
	public void getHaveAccesslink2(){
		long time = 0;
		for (int i = 0; i < 1000; i++) {
			List<String> list = menuDao.getHaveAccessLinks(1);
			Long long1 = System.currentTimeMillis();
			List<String> list2 = new ArrayList<String>(); 
			for(String string : list){
				if(string != null && string.trim() != "" && !list2.contains(string)) {    
					list2.add(string);    
		        } 
			}
			String link = "cccc";
			for(String string : list2){
				if(link.equals(string)){
					System.out.println("成功进入页面");
					break;
				}
			}
			Long long2 = System.currentTimeMillis();
			time+=long2-long1;
		}
		System.out.println("总用时："+time);
	}
	
	@Test
	//效率第三
	public void getHaveAccesslink3(){
		long time = 0;
		for (int i = 0; i < 1000; i++) {
			List<String> list = menuDao.getHaveAccessLinks(1);
			Long long1 = System.currentTimeMillis();
			StringBuffer stringBuffer = new StringBuffer();
			for(String string : list){
				if(string != null && string.trim() != "" && stringBuffer.indexOf(string)==-1) {    
					stringBuffer.append(string+"|");    
		        } 
			}
			String link = "cccc";
			stringBuffer.indexOf(link);
			Long long2 = System.currentTimeMillis();
			time+=long2-long1;
		}
		System.out.println("总用时："+time);
	}
}
