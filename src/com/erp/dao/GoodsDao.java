package com.erp.dao;

import org.springframework.stereotype.Repository;

import com.erp.pojo.Goods;

/**
* @Description: TODO(商品的Dao)
* @author JS
* 2018年10月4日 上午11:21:01
 */
@Repository
public interface GoodsDao {
	/**
	 * @Title: findBySupperId
	 * @Description: TODO(根据供应商id查询商品信息)
	 * @param id
	 * @return
	 */
	Goods findBySupperId(Integer id);
}
