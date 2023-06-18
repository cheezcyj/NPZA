package com.pcwk.ehr.proxy;

import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;

import com.pcwk.ehr.aspectj.Hello;

public class UppercaseHandlerOld implements InvocationHandler {
	Hello target;
	
	public UppercaseHandlerOld(Hello target) {
		super();
		this.target = target;
	}

	@Override
	public Object invoke(Object proxy, Method method, Object[] args) throws Throwable {
		
		String ret = (String) method.invoke(target, args);
		
		return ret.toUpperCase();//부가기능
	}

}
