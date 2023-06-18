package com.pcwk.ehr.aspectj;

import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.Signature;

public class LoggingAop {

	public void logging(JoinPoint joinPoint) {
		Signature signature = joinPoint.getSignature();
		
		String methodName = signature.getName();
		System.out.println("++++++++++++++++++++++++++++++++");
		System.out.println("│methodName                    │"+methodName);
		System.out.println("++++++++++++++++++++++++++++++++");	
	}
	
}
