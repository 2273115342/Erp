package com.erp.aop;

import org.apache.log4j.Logger;
import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.After;
import org.aspectj.lang.annotation.AfterReturning;
import org.aspectj.lang.annotation.AfterThrowing;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.aspectj.lang.annotation.Pointcut;
import org.springframework.stereotype.Component;

/**
 * @Description: TODO(记录日志的aop类)
 * @author JS
 * 2018年10月8日 下午2:48:52
 */
@Aspect
@Component
public class recordLog {
	private static Logger logger = Logger.getLogger(recordLog.class);
	@Pointcut("execution(* com.erp.service.*.*(..))")
	//使用一个返回值为void 方法体为空的方法来命名切入点
	public void myPointCut(){}
	
	//前置通知
	@Before("myPointCut()")
	public void mybefore(){
		System.out.println("前置通知....");
	}
	
	//后置通知
	@AfterReturning("myPointCut()")
	public void myAfterReturning(){
		System.out.println("后置通知....");
	}
	
	//环绕通知
	@Around("myPointCut()")
	public Object myAround(ProceedingJoinPoint proceedingJoinPoint) throws Throwable{
		//开始
		System.out.println("前环绕通知....");
		Object object = proceedingJoinPoint.proceed();
		System.out.println("记录日志");
		logger.info("记录日志。。。。");
		return object;
	}
	
	//异常通知
	@AfterThrowing(value="myPointCut()",throwing="e")
	public void myAfterThrowing(JoinPoint joinpoint,Throwable e){
		System.out.println("异常通知....");
	}
	
	@After("myPointCut()")
	public void myAfter(){
		System.out.println("最终通知....");
	}
}
