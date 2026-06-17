package com.pcwk.ehr.signUp;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;
import javax.sql.DataSource;

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
import org.springframework.ui.Model;

import com.pcwk.ehr.signUp.SignUpDao;
import com.pcwk.ehr.signUp.SignUpDaoImpl;
import com.pcwk.ehr.signUp.SignUpVO;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

@Service
public class SignUpServiceImpl implements SignUpService {

	final Logger LOG = LogManager.getLogger(getClass());

	@Autowired
	SignUpDaoImpl signUpDaoImpl;

	public SignUpServiceImpl() {
	}

	@Override
	public int add(SignUpVO signUpVO) throws ClassNotFoundException, SQLException {

		LOG.debug("┌──────────────────────────────┐");
		LOG.debug("│ServiceImpl 구역!!!!           │" + signUpVO.toString());
		LOG.debug("└──────────────────────────────┘");

		int flag = 0;

		flag = this.signUpDaoImpl.add(signUpVO);

		// return flag = this.signUpDaoImpl.add(signUpVO);

		return flag;
	}

	@Override
	public int idCheck(String userId) throws Exception {

		int cnt = signUpDaoImpl.idCheck(userId);

		return cnt;
	}

}
