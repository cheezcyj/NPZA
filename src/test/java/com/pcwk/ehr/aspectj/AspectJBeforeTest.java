package com.pcwk.ehr.aspectj;

import static org.junit.Assert.*;

import org.junit.Before;
import org.junit.FixMethodOrder;
import org.junit.Ignore;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.junit.runners.MethodSorters;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
@RunWith(SpringJUnit4ClassRunner.class)  //스프링 테스트 컨텍스 프레임워크의 JUnit확장 기능 지정
@ContextConfiguration(locations = "/com/pcwk/ehr/aspectj/AspectJ_before_applicationContext.xml") //테스트 컨텍스트가 자동으로 만들어줄 applicationContext 위치
@FixMethodOrder(MethodSorters.NAME_ASCENDING)  //@Test 메소드를 오름차순으로 정렬한 순서대로 실행
public class AspectJBeforeTest {

	@Autowired
	ApplicationContext context;
	
	@Autowired
	Member member;
	
	@Before
	public void setUp() throws Exception {
		System.out.println("┌──────────────────────────────┐");
		System.out.println("│setup                         │");
		System.out.println("└──────────────────────────────┘");			
	}

	@Test
	public void aspectBefore() {
		member.doSave();
		member.doUpdate();
		
		member.delete();
		
	}
	
	@Test
	@Ignore
	public void beans() {
		System.out.println("┌──────────────────────────────┐");
		System.out.println("│context                       │"+context);
		System.out.println("│member                        │"+member);
		System.out.println("└──────────────────────────────┘");		
		
		assertNotNull(context);
		assertNotNull(member);
	}

}
