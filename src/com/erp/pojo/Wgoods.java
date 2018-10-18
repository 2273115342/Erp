package com.erp.pojo;

/**
* @Description: TODO(仓库商品库存表的实体类)
* @author JS
* 2018年10月4日 上午11:33:35
 */
public class Wgoods {
	private Integer wgId;
	private Goods goods;  //商品
	private Warehouse warehouse;  //仓库
	private Integer stock;  //拥有的数量
	public Integer getWgId() {
		return wgId;
	}
	public void setWgId(Integer wgId) {
		this.wgId = wgId;
	}
	public Goods getGoods() {
		return goods;
	}
	public void setGoods(Goods goods) {
		this.goods = goods;
	}
	public Warehouse getWarehouse() {
		return warehouse;
	}
	public void setWarehouse(Warehouse warehouse) {
		this.warehouse = warehouse;
	}
	public Integer getStock() {
		return stock;
	}
	public void setStock(Integer stock) {
		this.stock = stock;
	}
	@Override
	public String toString() {
		return "Wgoods [wgId=" + wgId + ", goods=" + goods + ", warehouse="
				+ warehouse + ", stock=" + stock + "]";
	}
	
}
