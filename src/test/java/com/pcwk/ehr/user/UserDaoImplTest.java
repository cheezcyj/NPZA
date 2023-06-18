package com.pcwk.ehr.user;

import static org.junit.Assert.*;

import java.sql.SQLException;
import java.util.List;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.junit.After;
import org.junit.Before;
import org.junit.FixMethodOrder;
import org.junit.Ignore;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.junit.runners.MethodSorters;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.pcwk.ehr.user.dao.UserDao;
import com.pcwk.ehr.user.domain.Level;
import com.pcwk.ehr.user.domain.UserVO;

//테스트를 위한 ApplicationContext 관리
//ApplicationContext context
//1회만 읽도록 수정!

@RunWith(SpringJUnit4ClassRunner.class)  //스프링 테스트 컨텍스 프레임워크의 JUnit확장 기능 지정
@ContextConfiguration(locations = {"file:src/main/webapp/WEB-INF/spring/root-context.xml"
,"file:src/main/webapp/WEB-INF/spring/appServlet/servlet-context.xml"		
}) //테스트 컨텍스트가 자동으로 만들어줄 applicationContext 위치
@FixMethodOrder(MethodSorters.NAME_ASCENDING)  //@Test 메소드를 오름차순으로 정렬한 순서대로 실행
public class UserDaoImplTest {
	final Logger  LOG = LogManager.getLogger(getClass());
	
	@Autowired  
	ApplicationContext context; //테스트 오브젝트가 만들어지고 나면 스프링 테스트 컨텍스트에 의해 자동으로 갑이 주입된다.
	
	@Autowired
	UserDao dao;
	
	UserVO userVO;
	
	//테스트를 수행하는데 필요한 정보나 오브젝트: fixture
	UserVO user01;
	UserVO user02;
	UserVO user03;
	
	@Before
	public void setUp() {
		//*context*org.springframework.context.support.GenericApplicationContext@6f45df59
		//*context*org.springframework.context.support.GenericApplicationContext@6f45df59, started on Tue May 23 14:37:44 KST 2023
		LOG.debug("*************************");
		LOG.debug("*context*"+context);
		LOG.debug("*************************");
		
		//null이 아니면 성공
		assertNotNull(context);
		assertNotNull(dao);		
		
		userVO = new UserVO("ap9", "최유정9", "4321",Level.BASIC,1,0,"cyj5661@naver.com","날짜_사용하지 않음");

		user01 = new UserVO("ap9_01", "최유정9_01", "4321",Level.BASIC,1,0,"cyj5661@naver.com","날짜_사용하지 않음");
		user02 = new UserVO("ap9_02", "최유정9_02", "4321",Level.SILVER,50,2,"cyj5661@naver.com","날짜_사용하지 않음");
		user03 = new UserVO("ap9_03", "최유정9_03", "4321",Level.GOLD,100,31,"cyj5661@naver.com","날짜_사용하지 않음");
	}
	
	@After
	public void tearDown() {
		LOG.debug("--------------");
		LOG.debug("-tearDown-");
		LOG.debug("--------------");		
	}
	
	
	@Test
	public void doLogin()throws SQLException{
		//1. 데이터 삭제
		//2. 데이터 입력
		//3. idCheck
		//3.1. passCheck
		LOG.debug("=====================");
		LOG.debug("=doLogin()==");
		LOG.debug("=====================");				
		
		//1.
		dao.deleteOne(user01);
		dao.deleteOne(user02);
		dao.deleteOne(user03);		
		
		//2. 추가
		dao.add(user01);
		
		int status = 0;
		int checkStatus = 0;
		//user01.setPasswd("9999999999");
		status = dao.idCheck(user01);
		UserVO   login = null;
		if(1==status) {
			//3.1. passCheck
			status = dao.passCheck(user01);
			if( 1==status) {
				login = dao.get(user01);
			}else {
				checkStatus = 20;//비번 오류
			}
		}else {
			checkStatus = 10;//id없음
		}
		
		assertEquals(0, checkStatus);
		assertNotNull(login);
		
	}
	
	
	@Test
	@Ignore
	public void  doRetrieve()throws SQLException{
		userVO.setSearchDiv("");
		userVO.setSearchWord("pt99");
		
		userVO.setPageNo(1);
		userVO.setPageSize(5);
		
		
		List<UserVO> list =this.dao.doRetrieve(userVO);
		
		LOG.debug("--------------");
		LOG.debug("-list-"+list.size());
		LOG.debug("--------------");		
	}
	
	@Test
	@Ignore
	public void update()throws SQLException, ClassNotFoundException{
		//1. 데이터 삭제
		//2. 데이터 입력
		//3. 등록데이터 조회
		//4. 3조회 데이터 수정
		//5. 수정 수행
		//6. 5 조회
		//6.1. 데이터 비교
		LOG.debug("=====================");
		LOG.debug("=update()==");
		LOG.debug("=====================");			
		
		//1.
		dao.deleteOne(user01);
		dao.deleteOne(user02);
		dao.deleteOne(user03);		
		
		//getCount 테스트
		//assertEquals(dao.getCount(userVO),0);
		
		//2. 추가
		dao.add(user01);
		
		//3.
		UserVO getVO = dao.get(user01);
		isSameUser(user01, getVO);
		
		
		//4.
		String upStr = "_U";
		int    upInt = 10;
		
		//문자열+_U, 숫자+10
		getVO.setName(getVO.getName()+upStr);
		getVO.setPasswd(getVO.getPasswd()+upStr);
		
		getVO.setLevel(Level.SILVER);
		
		getVO.setLogin(getVO.getLogin()+upInt);
		getVO.setRecommend(getVO.getRecommend()+upInt);
		getVO.setEmail(getVO.getEmail()+upStr);
		
		//getVO.setUserId(getVO.getUserId());
		
		int flag = dao.update(getVO);
		assertEquals(flag,1);
		
		//수정된 데이터 조회
		UserVO fVO =dao.get(getVO);
		isSameUser(fVO, getVO);
	}
	
	@Test
	@Ignore
	public void getAll() throws SQLException, ClassNotFoundException {
		//1.데이터 삭제
		//2.데이터 3건 입력
		//2.1. 건수 체크
		//3.getAll()
		//4.3건확인
		LOG.debug("=====================");
		LOG.debug("=getAll()==");
		LOG.debug("=====================");	
		
		//1.
		dao.deleteOne(user01);
		dao.deleteOne(user02);
		dao.deleteOne(user03);
		
		//getCount 테스트
		assertEquals(dao.getCount(userVO),0);
		
		
		//2. 추가
		dao.add(user01);
		dao.add(user02);
		dao.add(user03);
		//getCount 테스트
		assertEquals(dao.getCount(userVO),3);		
		
		//3.
		List<UserVO> list =dao.getAll(userVO);
		assertEquals(list.size(),3);
		
		for(UserVO vo  :list) {
			LOG.debug(vo.toString());
		}
		
		//3.1
		isSameUser(user01, list.get(0));
		isSameUser(user02, list.get(1));
		isSameUser(user03, list.get(2));
		
		
	}
	
	//실패하면 성공: NullPointerException발생하면 성공
	@Test(expected = EmptyResultDataAccessException.class)
	@Ignore
	public void getFailure()throws ClassNotFoundException, SQLException {
		LOG.debug("=====================");
		LOG.debug("=getFailure()==");
		LOG.debug("=====================");		
		
		//1. 데이터 삭제
		//2. 데이터 1건 조회 
		dao.deleteOne(user01);
		dao.deleteOne(user02);
		dao.deleteOne(user03);
		
		dao.get(user01);
	}
	
	@Test(timeout = 2000)//long 시간(1/1000초)내에 수행이 되면 성공 그렇치 않으면 실패
	@Ignore
	public void addAngGet() throws ClassNotFoundException, SQLException {
		LOG.debug("=====================");
		LOG.debug("=addAngGet()==");
		LOG.debug("=====================");
		
		//1. 3건 삭제
		//1.1. 삭제 건수 확인
		  
		//2. 3건 등록
		//2.1 등로 건수 확인
		
		//3. 3건 조회
		//isSameData() 메소드 작성
		
		//1.
		dao.deleteOne(user01);
		dao.deleteOne(user02);
		dao.deleteOne(user03);
		
		//getCount 테스트
		assertEquals(dao.getCount(userVO),0);
		
		
		//추가
		dao.add(user01);
		dao.add(user02);
		dao.add(user03);
		
		//getCount 테스트
		assertEquals(dao.getCount(userVO),3);		
		
		//데이터 조회
		UserVO outUser01 = dao.get(user01);
		isSameUser(outUser01, user01);
		
		UserVO outUser02 = dao.get(user02);
		isSameUser(outUser02, user02);
		
		UserVO outUser03 = dao.get(user03);
		isSameUser(outUser03, user03);			

		
	}

	public void isSameUser(UserVO outVO, UserVO userVO) {
		//테스트 검증 자동화
		assertEquals(outVO.getUserId(), userVO.getUserId());
		assertEquals(outVO.getName(), userVO.getName());
		assertEquals(outVO.getPasswd(), userVO.getPasswd());
		
		assertEquals(outVO.getLevel(),userVO.getLevel());
		assertEquals(outVO.getLogin(),userVO.getLogin());
		assertEquals(outVO.getRecommend(), userVO.getRecommend());
		assertEquals(outVO.getEmail(), userVO.getEmail());
	}
	
	
	
	
	
}







