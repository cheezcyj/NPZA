package com.pcwk.ehr.aspectj;

import org.aspectj.lang.ProceedingJoinPoint;

public class AroundAdvice {

	
	
	public Object aroundLog(ProceedingJoinPoint pjp)throws Throwable{
		Object returnObj = null;
		System.out.println("┌──────────────────────────────┐");
		System.out.println("│before 메소드 수행전                             │");
		
		//method
		String method = pjp.getSignature().getName();
		//class명
		String className = pjp.getTarget().getClass().getName();
		
		returnObj = pjp.proceed();
		System.out.println("│className                     │"+className);
		System.out.println("│method                        │"+method);
		System.out.println("│after  메소드 수행후                             │");
		System.out.println("└──────────────────────────────┘");			
		return returnObj;
	}
}
