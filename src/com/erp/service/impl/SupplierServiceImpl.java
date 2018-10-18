package com.erp.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.erp.dao.SupplierDao;
import com.erp.pojo.Paging;
import com.erp.pojo.Supplier;
import com.erp.service.SupplierService;

/**
* @Description: TODO(供应商的ServiceImpl)
* @author JS
* 2018年10月4日 上午11:36:06
 */
@Service
public class SupplierServiceImpl implements SupplierService {

	@Autowired
	private SupplierDao supplierDao;
	
	@Override
	public Integer getCount() {
		return supplierDao.getCount();
	}
	
	@Override
	@Transactional(isolation=Isolation.READ_COMMITTED, propagation = Propagation.REQUIRED)
	public List<Supplier> findById(Integer id) {
		return supplierDao.findById(id);
	}
	
	@Override
	@Transactional(isolation=Isolation.READ_COMMITTED, propagation = Propagation.REQUIRED)
	public List<Supplier> findAll(Paging paging) {
		return supplierDao.findAll(paging);
	}

	@Override
	@Transactional(isolation=Isolation.READ_COMMITTED, propagation = Propagation.REQUIRED)
	public List<Supplier> findByName(String supplierName) {
		return supplierDao.findByName(supplierName);
	}

	@Override
	@Transactional(isolation=Isolation.READ_COMMITTED, propagation = Propagation.REQUIRED)
	public List<Supplier> findByPeople(String supplierPeople) {
		return supplierDao.findByPeople(supplierPeople);
	}
	
	@Override
	@Transactional
	public Integer saveSupplier(Supplier supplier) {
		return supplierDao.saveSupplier(supplier);
	}

	@Override
	public Integer deleteSupplier(Integer id) {
		return supplierDao.deleteSupplier(id);
	}

	@Override
	public Integer updateSupplier(Supplier supplier) {
		return supplierDao.updateSupplier(supplier);
	}
}
