package com.pcwk.ehr.user;

import static com.pcwk.ehr.user.service.UserServiceImpl.MIN_LOGIN_COUNT_FOR_SILVER;
import static com.pcwk.ehr.user.service.UserServiceImpl.MIN_RECOMMEND_COUNT_FOR_GOLD;

import static org.junit.Assert.*;

import java.sql.SQLException;
import java.util.Arrays;
import java.util.List;

import javax.annotation.Resource;
import javax.sql.DataSource;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.junit.Before;
import org.junit.FixMethodOrder;
import org.junit.Ignore;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.junit.runners.MethodSorters;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.MailSender;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.transaction.PlatformTransactionManager;

import com.pcwk.ehr.user.dao.UserDao;
import com.pcwk.ehr.user.domain.Level;
import com.pcwk.ehr.user.domain.UserVO;
import com.pcwk.ehr.user.service.TestUserService;
import com.pcwk.ehr.user.service.UserService;

@RunWith(SpringJUnit4ClassRunner.class)  //스프링 테스트 컨텍스 프레임워크의 JUnit확장 기능 지정
@ContextConfiguration(locations = {"file:src/main/webapp/WEB-INF/spring/root-context.xml"
,"file:src/main/webapp/WEB-INF/spring/appServlet/servlet-context.xml"		
})
@FixMethodOrder(MethodSorters.NAME_ASCENDING)  //@Test 메소드를 오름차순으로 정렬한 순서대로 실행
public class UserSerivceTest {
	final Logger  LOG = LogManager.getLogger(getClass());
	
	@Autowired
	PlatformTransactionManager transactionManager;
	
	@Resource(name = "dummyMailSender")
	MailSender mailSender;
	
	@Autowired
	DataSource  dataSource;
	
	@Autowired
	UserDao  userDao;
	
	@Autowired
	UserService userService;
	
	//텍스트 픽처스
	List<UserVO> users;
	
	//검색에 사용
	UserVO search;
	
	@Before
	public void setUp() {
		LOG.debug("┌──────────────────────────────┐");
		LOG.debug("│setup                         │");
		LOG.debug("└──────────────────────────────┘");	
		
		//BASIC
		//BASIC -> SILVER
		//SILVER
		//SILVER -> GOLD
		//GOLD
		
		users = Arrays.asList(
				 new UserVO("ap9_01", "최유정9_01", "4321", Level.BASIC, MIN_LOGIN_COUNT_FOR_SILVER - 1, 0, "cyj5661@naver.com", "날짜_사용하지 않음")
				,new UserVO("ap9_02", "최유정9_02", "4321", Level.BASIC, MIN_LOGIN_COUNT_FOR_SILVER, 0, "cyj5661@naver.com", "날짜_사용하지 않음")
				,new UserVO("ap9_03", "최유정9_03", "4321", Level.SILVER, MIN_LOGIN_COUNT_FOR_SILVER + 1, MIN_RECOMMEND_COUNT_FOR_GOLD - 1, "cyj5661@naver.com", "날짜_사용하지 않음")
				,new UserVO("ap9_04", "최유정9_04", "4321", Level.SILVER, MIN_LOGIN_COUNT_FOR_SILVER + 2, MIN_RECOMMEND_COUNT_FOR_GOLD, "cyj5661@naver.com", "날짜_사용하지 않음")
				,new UserVO("ap9_05", "최유정9_05", "4321", Level.GOLD, MIN_LOGIN_COUNT_FOR_SILVER + 3, MIN_RECOMMEND_COUNT_FOR_GOLD + 5, "cyj5661@naver.com", "날짜_사용하지 않음")
			);

		search = new UserVO("ap9", "최유정9", "4321", Level.BASIC, 1, 0, "cyj5661@naver.com", "날짜_사용하지 않음");
	}
	
	
	//트랜잭션 테스트 
	@Test
	@Ignore
	public void upgradeAllOrNothing() throws ClassNotFoundException, SQLException {
		/**
		 * 5명중 2명이 등업 대상
		 * 4번째 에서 강제로 예외 발생
		 * 2번째 사용자의 등급 rollback되면 성공.(BASIC->SILVER) BASIC으로 돌아 오면 됨
		 */

		TestUserService testUserService=new TestUserService(users.get(3).getUserId());
		//수동으로 userDao  DI
//		testUserService.setUserDao(userDao);
		//수동으로  DataSource DI
//		testUserService.setTransactionManager(transactionManager);
		//mail전송
//		testUserService.setMailSender(mailSender);
		
		
		//1. users 데이터 삭제
		//2. users 데이터 입력
		//3. 등업		
		LOG.debug("┌──────────────────────────────┐");
		LOG.debug("│upgradeAllOrNothing           │");
		LOG.debug("└──────────────────────────────┘");	
		
		try {
			//1.
			for(UserVO vo  :users) {
				userDao.deleteOne(vo);
			}			
			
			//2.
			for(UserVO vo  :users) {
				userDao.add(vo);
			}		
			
			assertEquals(5, userDao.getCount(search));			
			
			//3.
			testUserService.upgradeLevels(search);//4번째 사용자 처리시 예외 발생.
			
			
		}catch(Exception e) {
			LOG.debug("┌──────────────────────────────┐");
			LOG.debug("│Exception                     │"+e.getMessage());
			LOG.debug("└──────────────────────────────┘");				
		}
		//rollback되지 않음!(4번째 사용자에서 예외가 발생, 2번째 사용자의 등급이 SILVER로 등업 되고 rollback되지 않음.)
		checkLevel(users.get(1), false);
		
	}
	
	
	
	
	
	@Test
	@Ignore
	public void add() throws ClassNotFoundException, SQLException {
		//1. users 데이터 삭제
		//2. users 데이터 입력
		//2.1. Level있는 경우, Level 없는 경우
		//3. 추가
		//4. 각각 데이터 비교
		LOG.debug("┌──────────────────────────────┐");
		LOG.debug("│add                           │");
		LOG.debug("└──────────────────────────────┘");				
		
		//1.
		for(UserVO vo  :users) {
			userDao.deleteOne(vo);
		}		
		
		//2.
		UserVO userWithOutLevel = users.get(0);
		userWithOutLevel.setLevel(null);
		
		UserVO userWithLevel = users.get(4);
		
		LOG.debug("*userWithOutLevel*"+userWithOutLevel.getLevel());
		//3.
		this.userService.add(userWithOutLevel);
		this.userService.add(userWithLevel);
		
		//4
		//Level.BASIC
		UserVO userWithoutLevelGet = this.userDao.get(userWithOutLevel);
		assertEquals(userWithoutLevelGet.getLevel(), Level.BASIC);
		
		//Level.GOLD
		UserVO userWithLevelGet = this.userDao.get(userWithLevel);
		assertEquals(userWithLevelGet.getLevel(), Level.GOLD);
		
		LOG.debug("*************************");
		LOG.debug("*userWithoutLevelGet.getLevel()*"+userWithoutLevelGet.getLevel());
		LOG.debug("*************************");			
	}
	
	
	@Test
	//@Ignore
	public void upgradeLevels() throws Exception{
		LOG.debug("┌──────────────────────────────┐");
		LOG.debug("│upgradeLevels                 │");
		LOG.debug("└──────────────────────────────┘");			
		
		
		//1. users 데이터 삭제
		//2. users 데이터 입력
		//3. 등업
		//4. 등업 데이터 비교
		
		//1.
		for(UserVO vo  :users) {
			userDao.deleteOne(vo);
		}
		
		//2.
		for(UserVO vo  :users) {
			userDao.add(vo);
		}		
		
		assertEquals(5, userDao.getCount(search));
		try {
			//3.
			this.userService.upgradeLevels(search);
		}catch (Exception e) {
			LOG.debug("┌-Exception()------------------------------------------┐");
			LOG.debug("| "+e.getMessage());
			LOG.debug("└-Exception()------------------------------------------┘");		
		}
		
		//BASIC
		//BASIC -> SILVER
		//SILVER
		//SILVER -> GOLD
		//GOLD
		checkLevel(users.get(0), false);
		checkLevel(users.get(1), false);//rollback
		checkLevel(users.get(2), false);
		checkLevel(users.get(3), false);//rollback
		checkLevel(users.get(4), false);
	}
	
	/**
	 * 
	 * @param user
	 * @param upgraded (true: 등업)
	 * @throws ClassNotFoundException
	 * @throws SQLException
	 */
	private void checkLevel(UserVO user, boolean upgraded) throws ClassNotFoundException, SQLException {
		UserVO userUpdate = this.userDao.get(user);

		if(true == upgraded) {//등업 대상인 경우: 다음 Level로 비교
			assertEquals(userUpdate.getLevel(), user.getLevel().nextLevel());
		}else { //등업이 없는 경우: 현재 Level로 비교
			assertEquals(userUpdate.getLevel(), user.getLevel());
		}
		

	}
	
	
	
	@Test
	@Ignore
	public void bean() {
		LOG.debug("*************************");
		LOG.debug("*userService*"+userService);
		LOG.debug("*userDao*"+userDao);
		LOG.debug("*************************");		
		assertNotNull(userService);
		assertNotNull(userDao);
		assertNotNull(this.transactionManager);
	}

}
