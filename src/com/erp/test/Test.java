package com.erp.test;

import com.erp.pojo.Paging;

/**
 * @Description: TODO(这里用一句话描述这个类的作用)
 * @author JS
 * 2018年10月4日 下午2:41:29
 */
public class Test {
	public static void main(String[] args) {
		Paging paging = new Paging(3, 10, 30);
		System.out.println(paging);
		//Collectors.toList();
		//the output path is not specified for modle
	}
} 
