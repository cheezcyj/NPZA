package com.pcwk.ehr.proxy;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

public class ReflectionTest {

	public static void main(String[] args) throws NoSuchMethodException, 
	  SecurityException, IllegalAccessException, IllegalArgumentException, InvocationTargetException {
		//리플랙션: 자바코드를 추상화 해서 접근
		//모든 자바 클래스는 Class 타입의 오브젝트를 하나씩 가지고 있다.
		
		//기존방법 vs 리플랙션
		
		String name = "Spring";
		
		//기존방법
		System.out.println("name의 길이:"+name.length());
		
		//리플랙션
		Method  lengthMethod = String.class.getMethod("length");
		int nameLength=(int) lengthMethod.invoke(name, args);
		System.out.println("nameLength:"+nameLength);

		//https://www.teamviewer.com/ko/
		
		
		//기존방법
		System.out.println("name.charAt(0):"+name.charAt(0));
		
		//리플랙션:파람전달
		Class rClass = String.class;
		Method charMethod=rClass.getMethod("charAt", int.class);
		
		System.out.println("charMethod.invoke(name, 0):"+charMethod.invoke(name, 0));

	}

}
