package com.erp.exception;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.servlet.ModelAndView;

/**
 * @Description: TODO(全局通用异常类)
 * @author JS
 * 2018年10月5日 上午10:55:54
 */
@ControllerAdvice
public class MyExceptionHandler {
	
	@ExceptionHandler(Exception.class)
	public ModelAndView Exception(HttpServletRequest request,HttpServletResponse response, Object handler, Exception ex){
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("SystemPage/error");
		modelAndView.addObject("ex", ex);
		ex.printStackTrace();
		if (!(request.getHeader("accept").contains("application/json")  || 
				(request.getHeader("X-Requested-With")!= null && 
				request.getHeader("X-Requested-With").contains("XMLHttpRequest") ))) {
			
		}else{
			//ajax请求
			 PrintWriter writer;
			try {
				response.setCharacterEncoding("utf-8");
				writer = response.getWriter();
				writer.flush();
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		return modelAndView;
	}
}
