package com.pcwk.ehr.proxy;

import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;

public class UppercaseHandler implements InvocationHandler {
	Object target;
	
	public UppercaseHandler(Object target) {
		super();
		this.target = target;
	}

	@Override
	public Object invoke(Object proxy, Method method, Object[] args) throws Throwable {
		
		Object ret = method.invoke(target, args);
		
		//특정 메서드만 수행 되도록 pointcut 처리
		//System.out.println("메소드 이름:"+method.getName());
		if(ret instanceof String && method.getName().startsWith("say") ) {
			return ((String)(ret)).toUpperCase();
		}else {
			return ret;
		}

	}

}
