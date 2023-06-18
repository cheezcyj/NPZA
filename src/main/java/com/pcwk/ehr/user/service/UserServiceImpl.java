package com.pcwk.ehr.user.service;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

import javax.annotation.Resource;
import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;
import javax.sql.DataSource;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.datasource.DataSourceTransactionManager;
import org.springframework.jdbc.datasource.DataSourceUtils;
import org.springframework.mail.MailSender;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSenderImpl;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Service;
import org.springframework.transaction.PlatformTransactionManager;
import org.springframework.transaction.TransactionStatus;
import org.springframework.transaction.support.DefaultTransactionDefinition;
import org.springframework.transaction.support.TransactionSynchronizationManager;

import com.pcwk.ehr.user.dao.UserDao;
import com.pcwk.ehr.user.domain.Level;
import com.pcwk.ehr.user.domain.UserVO;

@Service
public class UserServiceImpl implements UserService {
	final Logger LOG = LogManager.getLogger(getClass());

	@Resource(name = "dummyMailSender")
	private MailSender mailSender;// mail
	
	@Autowired
	UserDao userDao;

	// BASIC에서 SILVER로 가기 위해 최소 로그인수
	public static final int MIN_LOGIN_COUNT_FOR_SILVER = 50;

	// SILVER에서 GOLD로 가기 위해 최소 추천수
	public static final int MIN_RECOMMEND_COUNT_FOR_GOLD = 30;



	public UserServiceImpl() {
	}

	/**
	 * Level별 등업 대상 여부 판단
	 * 
	 * @param user
	 * @return true/false
	 */
	private boolean canUpgradeLevel(UserVO user) {
		Level currentLevel = user.getLevel();

		switch (currentLevel) {
		case BASIC: // 레벨별로 등업 조건을 판단
			return (user.getLogin() >= MIN_LOGIN_COUNT_FOR_SILVER);

		case SILVER:
			return (user.getRecommend() >= MIN_RECOMMEND_COUNT_FOR_GOLD);
		case GOLD:
			return false;
		default:
			throw new IllegalArgumentException("unknown Level:" + currentLevel);
		}
	}

	/**
	 * 다음 Level로 등업
	 * 
	 * @param user
	 * @throws SQLException
	 */
	protected void upgradeLevel(UserVO user) throws Exception {
// 트랜잭션 테스트 		
		if(user.getUserId().equals("pt99_04")) {
			throw new TestUserServiceException("TestUserService**.upgradeLevel:"+user.getUserId());
		}
		
		user.upgradeLevel(); // user의 다음 Level로 Up
		userDao.update(user); // 등업

		// mail전송
		sendUpgradeEmail(user);
	}

	private void sendUpgradeEmail(UserVO user) {
		LOG.debug("┌──────────────────────────────┐");
		LOG.debug("│sendUpgradeEmail:             │");
		LOG.debug("└──────────────────────────────┘");

		LOG.debug("mailSender:"+this.mailSender);
		
		
		SimpleMailMessage   message = new SimpleMailMessage();
		message.setFrom("jamesol@naver.com");
		message.setTo(user.getEmail());// 받는사람
		message.setSubject("등업 안내!");// 제목
		message.setText("사용자 등급이 " + user.getLevel().name() + "로 업그레이드 되었습니다.");
		
		this.mailSender.send(message);


	}

	@Override
	public void upgradeLevels(UserVO inVO) throws Exception {
		// 1.전체 사용자 조회(내가 등록한 사용자)
		// 2.등업 대상

		try {
			// 1.
			List<UserVO> allUser = userDao.getAll(inVO);

			// 2.
			for (UserVO vo : allUser) {

				if (canUpgradeLevel(vo) == true) {
					upgradeLevel(vo);
				}
			}

		} catch (Exception e) {
			LOG.debug("┌──────────────────────────────┐");
			LOG.debug("│rollback:                     │" + e.getMessage());
			LOG.debug("└──────────────────────────────┘");
			throw e;
		}
	}

	@Override
	public int add(UserVO inVO) throws ClassNotFoundException, SQLException {
		if (null == inVO.getLevel()) {
			inVO.setLevel(Level.BASIC);
		}

		return this.userDao.add(inVO);

	}


	@Override
	public List<UserVO> doRetrieve(UserVO search) throws SQLException {
		return userDao.doRetrieve(search);
	}

	@Override
	public int update(UserVO user) throws SQLException {
		return userDao.update(user);
	}


	@Override
	public int getCount(UserVO user) throws SQLException {
		return userDao.getCount(user);
	}



	@Override
	public int deleteOne(UserVO user) throws SQLException {
		return userDao.deleteOne(user);
	}


	@Override
	public UserVO get(UserVO user) throws SQLException {
		return userDao.get(user);
	}

	@Override
	public int doLogin(UserVO user) throws SQLException {
		//1. 아이디 check
		//2. 비번 check
		
		int checkStatus = 0;//10(id없음),20(비번오류),30(성공)
		
		int status = this.userDao.idCheck(user);
		
		if(1==status) {
			
			status = userDao.passCheck(user);
			
			if(1==status) {
				checkStatus = 30;//로그인 성공
			}else {
				checkStatus = 20;//비번오류,id있음
			}
			
		}else {
			checkStatus = 10;//id없음
		}
		
		LOG.debug("=====================");
		LOG.debug("=checkStatus:"+checkStatus);
		LOG.debug("=====================");				
		return checkStatus;
	}







}
