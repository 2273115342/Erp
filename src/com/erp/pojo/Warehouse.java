package com.erp.pojo;
/**
* @Description: TODO(仓库的实体类)
* @author JS
* 2018年10月4日 上午11:33:14
 */
public class Warehouse {
	private Integer warehouseId;  //仓库id
	private String warehouseName;  //仓库名称
	
	public Integer getWarehouseId() {
		return warehouseId;
	}
	public void setWarehouseId(Integer warehouseId) {
		this.warehouseId = warehouseId;
	}
	public String getWarehouseName() {
		return warehouseName;
	}
	public void setWarehouseName(String warehouseName) {
		this.warehouseName = warehouseName;
	}
	@Override
	public String toString() {
		return "Warehouse [warehouseId=" + warehouseId + ", warehouseName="
				+ warehouseName + "]";
	}
	
}
