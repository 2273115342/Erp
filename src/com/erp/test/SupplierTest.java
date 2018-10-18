package com.erp.test;


import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.erp.dao.SupplierDao;
import com.erp.pojo.Paging;
import com.erp.pojo.Supplier;
import com.erp.service.SupplierService;

/**
* @Description: TODO(供应商的测试类)
* @author JS
* 2018年10月4日 上午11:36:33
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:applicationContext.xml")
public class SupplierTest {
	
	@Autowired
	private SupplierService supplierService;
	
	@Autowired
	private SupplierDao supplierDao;
	
	@Test
	public void findBySupplierIdTest(){
		System.out.println(supplierService.findById(1));
	}
	
	@Test
	public void saveSupplierTest(){
		Supplier supplier = new Supplier();
		supplier.setSupplierAddress("山篡改刚刚村北海大道74号");
		supplier.setSupplierBusiness("运动鞋服");
		supplier.setSupplierDelivery("不送货");
		supplier.setSupplierIphone(123054564);
		supplier.setSupplierName("耐克有限公司");
		supplier.setSupplierPeople("乃小村");
		if(supplierService.saveSupplier(supplier)==1)
			System.out.println("新增成功");
		else
			System.out.println("新增失败");
	}
	
	@Test
	public void deleteSupplierTest(){
		if(supplierService.deleteSupplier(6)==1)
			System.out.println("删除成功");
		else
			System.out.println("删除失败");
	}
	
	@Test
	public void updateSupplierTest(){
		Supplier supplier = new Supplier();
		supplier.setSupplierId(5);
		supplier.setSupplierAddress("光子市笑话路51号");
		supplier.setSupplierBusiness("各类光源");
		supplier.setSupplierDelivery("送货");
		supplier.setSupplierIphone(123054564);
		supplier.setSupplierName("光明股份有限公司");
		supplier.setSupplierPeople("光消息");
		supplier.setSupplierNote("全国10强企业");
		if(supplierService.updateSupplier(supplier)==1)
			System.out.println("修改成功");
		else
			System.out.println("修改失败");
	}
	
	@Test
	public void pagingTest(){
		Paging paging = new Paging(2,2,supplierService.getCount());
		System.out.println(supplierService.findAll(paging).size());
		System.out.println(paging);
	}
	
	@Test
	public void findbyNameTest(){
		Paging paging = new Paging(2,2,supplierService.getCount());
		System.out.println(supplierService.findByName("中国").size());
		System.out.println(paging);
	}
	
	@Test
	public void findbyPeopleTest(){
		Paging paging = new Paging(2,2,supplierService.getCount());
		System.out.println(supplierService.findByPeople("李").size());
		System.out.println(paging);
	}
}
