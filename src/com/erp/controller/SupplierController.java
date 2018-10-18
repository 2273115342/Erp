package com.erp.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import com.erp.pojo.Paging;
import com.erp.pojo.Supplier;
import com.erp.service.SupplierService;

/**
* @Description: TODO(供应商的Controller)
* @author JS
* 2018年10月4日 上午11:20:17
 */
@Controller
@RequestMapping("/supplier")
public class SupplierController {
	
	@Autowired
	private SupplierService supplierService;
	
	@RequestMapping("/query")
	public String query(Paging paging,Integer type,Integer message,ModelMap modelMap){
		//如果分页参数为空或者不合法，则默认查询第一页的参数
		if(paging.getLimit()==null||paging.getOffset()==null||paging.getOffset()==0||paging.getLimit()==0){
			paging = new Paging(1,5,supplierService.getCount());
		}else{
			paging = new Paging(paging.getOffset(), paging.getLimit(), supplierService.getCount());
		}
			modelMap.put("supplierList", supplierService.findAll(paging)); //分页查询数据
			modelMap.put("paging", paging);
		if(type != null){
			switch(type){
				case 2:  //2为删除
					if(message!=null) modelMap.put("message", message);
					return "Supplier/deleteSupplier";
				case 3:  //3为修改
					if(message!=null) modelMap.put("message", message);
					System.out.println(message);
					return "Supplier/updateSupplier";
			}
		}
		return "Supplier/querySupplier";
	}

	@RequestMapping("/findById")
	public String findById(String content,Integer type,ModelMap modelMap){
		modelMap.put("supplierList", supplierService.findById(Integer.valueOf(content)));
		if(type != null){
			switch (type) {
			case 1:  //1为增加
				modelMap.put("type", 1);
				return "Supplier/addSupplier";
			case 2:  //2为删除
				return "Supplier/deleteSupplier";
			case 3:  //3为修改
				modelMap.put("type", 3);
				return "Supplier/addSupplier";
			}
		}
		return "Supplier/querySupplier";
	}
	
	@RequestMapping("/findByName")
	public String findByIName(String content, Integer type, ModelMap modelMap){
		modelMap.put("supplierList", supplierService.findByName(content));
		if(type != null){
			switch (type) {
			case 2:  //2为删除
				return "Supplier/deleteSupplier";
			case 3:  //3为修改
				return "Supplier/updateSupplier";
			}
		}
		return "Supplier/querySupplier";
	}
	
	@RequestMapping("/findByPeople")
	public String findByPeople(String content, Integer type ,ModelMap modelMap){
		modelMap.put("supplierList", supplierService.findByPeople(content));
		if(type != null){
			switch (type) {
			case 2:  //2为删除
				return "Supplier/deleteSupplier";
			case 3:  //3为修改
				return "Supplier/updateSupplier";
			}
		}
		return "Supplier/querySupplier";
	}
	
	@RequestMapping("/add")
	public String add(Integer type,Supplier supplier,ModelMap modelMap){
		if(type != null && type ==1 ){ //1进行保存操作
			if(supplierService.saveSupplier(supplier) == 1){
				modelMap.put("message", 1);
			}else{
				modelMap.put("message", 0);
			}
		}
		return "Supplier/addSupplier";
	}
	
	@RequestMapping("/delete")
	public String delete(Integer type,Integer content,ModelMap modelMap){
		if(type != null && type == 2 && content != null){
			if(supplierService.deleteSupplier(content)==1){
				modelMap.put("message", 1);
			}else{
				modelMap.put("message", 0);
			}
		}
		return "redirect:/supplier/query?type=2";
	}
	
	@RequestMapping("/update")
	public String update(Integer type,Supplier supplier,ModelMap modelMap){
		if(type != null && type == 3){
			if(supplierService.updateSupplier(supplier)==1){
				modelMap.put("message", 1);
			}else{
				modelMap.put("message", 0);
			}
		}
		return "redirect:/supplier/query?type=3";
	}
}
