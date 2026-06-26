package com.pcwk.ehr.login;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

import javax.annotation.Resource;
import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;
import javax.sql.DataSource;

import org.apache.ibatis.session.SqlSessionException;
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


@Service
public class LoginServiceImpl implements LoginService {
	final Logger LOG = LogManager.getLogger(getClass());

	@Autowired
	LoginDao loginDao;

	public LoginServiceImpl() {
	}
	


	@Override
	public int doLogin(LoginVO user) throws SQLException {
		// 1. 아이디 check
		// 2. 비번 check
		int checkStatus = 0; // 10(id오류),20(비번오류),30(성공)

		int status = this.loginDao.idCheck(user);

		if (1 == status) {

			status = loginDao.passCheck(user);

			if (1 == status) {
				checkStatus = 30;// 로그인 성공
			} else {
				checkStatus = 20;// 비번 오류,id있음
			}

		} else {
			checkStatus = 10;// id없음
		}

		LOG.debug("┌──────────────────────────┐");
		LOG.debug("│ checkStatus ()           │" + checkStatus);
		LOG.debug("└──────────────────────────┘");

		return checkStatus;
	}
	
	@Override
	public LoginVO get(LoginVO user) throws SQLException, ClassNotFoundException {
		// TODO Auto-generated method stub
		return loginDao.get(user);
	}

	@Override
	public int deleteUserData(String userId) throws SQLException {
		return loginDao.deleteUserData(userId);
	}



}
