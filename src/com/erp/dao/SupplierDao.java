package com.erp.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.erp.pojo.Paging;
import com.erp.pojo.Supplier;

/**
* @Description: TODO(供应商的Dao)
* @author JS
* 2018年10月4日 上午11:21:52
 */
@Repository
public interface SupplierDao {
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
	 * @return 为了减少代码 所以此处返回list  取值的时直接get(0)
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
	List<Supplier> findByName(@Param("supplierName")String supplierName);
	
	/**
	 * @Title: findByPeople
	 * @Description: TODO(根据联系人姓名分页模糊查询供应商信息)
	 * @param supplierPeople 联系人姓名
	 * @param paging
	 * @return
	 */
	List<Supplier> findByPeople(@Param("supplierPeople")String supplierPeople);
	
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
