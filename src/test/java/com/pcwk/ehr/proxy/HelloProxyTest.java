package com.pcwk.ehr.proxy;

import static org.junit.Assert.*;

import java.lang.reflect.Proxy;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.junit.After;
import org.junit.Before;
import org.junit.Ignore;
import org.junit.Test;

import com.pcwk.ehr.aspectj.Hello;
import com.pcwk.ehr.aspectj.HelloTarget;
import com.pcwk.ehr.aspectj.HelloUppercase;

public class HelloProxyTest {
	final Logger  LOG = LogManager.getLogger(getClass());
	
	@Test
	public void dynamicProxy() {
		//런타임시 동적으로 만들어지는 오브젝트
		//리플렉션 기능을 이용해셔 프록시 생성
		//Target 인터페이스와 동일한 형태로 생성
		
		Hello proxiedHello = (Hello) Proxy.newProxyInstance(
				getClass().getClassLoader(),  //동적으로 생성되는 다이나믹 프록시 클래스의 로딩에 사용할  ClassLoader 
				new Class[] {Hello.class}, //구현할 interface 
				new UppercaseHandler(new HelloTarget())); //부가기능과 위임 코드를 담은 InvocationHandler
		
//		System.out.println(proxiedHello.sayHello("Pcwk"));
//		System.out.println(proxiedHello.sayHi("Pcwk"));
//		System.out.println(proxiedHello.sayThankYou("Pcwk"));
		
		assertEquals(proxiedHello.sayHello("Pcwk"), "HELLO PCWK");
		assertEquals(proxiedHello.sayHi("Pcwk"), "HI PCWK");
		assertEquals(proxiedHello.sayThankYou("Pcwk"), "THANK YOU PCWK");		
	}
	
	@Test
	@Ignore
	public void proxyTest() {
		Hello proxyedHello = new HelloUppercase(new HelloTarget());
		
		System.out.println(proxyedHello.sayHello("Pcwk"));
		System.out.println(proxyedHello.sayHi("Pcwk"));
		System.out.println(proxyedHello.sayThankYou("Pcwk"));
		
		assertEquals(proxyedHello.sayHello("Pcwk"), "HELLO PCWK");
		assertEquals(proxyedHello.sayHi("Pcwk"), "HI PCWK");
		assertEquals(proxyedHello.sayThankYou("Pcwk"), "THANK YOU PCWK");
	}
	
	@Test
	@Ignore
	public void simpleProxy() {
		Hello hello = new HelloTarget();
		LOG.debug(hello.sayHello("Pcwk"));
		assertEquals(hello.sayHello("Pcwk"), "Hello Pcwk");
		assertEquals(hello.sayHi("Pcwk"), "Hi Pcwk");
		
		LOG.debug(hello.sayThankYou("Pcwk"));
		assertEquals(hello.sayThankYou("Pcwk"), "Thank You Pcwk");
	}
	
	@Before
	public void setUp() throws Exception {
		LOG.debug("┌──────────────────────────────┐");
		LOG.debug("│setup                         │");
		LOG.debug("└──────────────────────────────┘");			
	}



}
