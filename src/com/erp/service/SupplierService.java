package com.erp.service;

import java.util.List;



import com.erp.pojo.Paging;
import com.erp.pojo.Supplier;

/**
* @Description: TODO(供应商的Service)
* @author JS
* 2018年10月4日 上午11:34:31
 */
public interface SupplierService {
	/**
	 * @Title: getCount
	 * @Description: TODO(获得供应商的总记录数)
	 * @return
	 */
	Integer getCount();
	
	/**
	 * @Title: findById
	 * @Description: TODO(根据供应商id 查询供应商信息)
	 * @param id
	 * @return
	 */
	List<Supplier> findById(Integer id);
	
	/**
	 * @Title: findAll
	 * @Description: TODO(分页查询供应商信息)
	 * @param paging 分页参数
	 * @return
	 */
	List<Supplier> findAll(Paging paging);
	
	/**
	 * @Title: findByName
	 * @Description: TODO(根据单位名称分页模糊查询供应商信息)
	 * @param supplierName 单位名
	 * @param paging
	 * @return
	 */
	List<Supplier> findByName(String supplierName);
	
	/**
	 * @Title: findByPeople
	 * @Description: TODO(根据联系人姓名分页模糊查询供应商信息)
	 * @param supplierPeople 联系人姓名
	 * @param paging
	 * @return
	 */
	List<Supplier> findByPeople(String supplierPeople);
	
	/**
	 * @Title: saveSupplier
	 * @Description: TODO(保存供应商信息)
	 * @param supplier
	 * @return
	 */
	Integer saveSupplier(Supplier supplier);
	
	/**
	 * @Title: deleteSupplier
	 * @Description: TODO(根据供应商id 删除供应商信息)
	 * @param id
	 * @return
	 */
	Integer deleteSupplier(Integer id);
	
	
	/**
	 * @Title: updateSupplier
	 * @Description: TODO(修改供应商信息)
	 * @param supplier
	 * @return
	 */
	Integer updateSupplier(Supplier supplier);
	
}
