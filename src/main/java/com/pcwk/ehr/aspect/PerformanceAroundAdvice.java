package com.pcwk.ehr.aspect;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.aspectj.lang.ProceedingJoinPoint;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.util.StopWatch;

import com.pcwk.ehr.cmn.StringUtil;

public class PerformanceAroundAdvice {
	private final Logger LOG = LogManager.getLogger(getClass());
	
	JdbcTemplate jdbcTemplate;
	
	public PerformanceAroundAdvice() {}
	
	//성능 측정(종료-시작): 경과시간
	
	public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
		this.jdbcTemplate = jdbcTemplate;
	}

	public Object performanceAdvice(ProceedingJoinPoint pjp)throws Throwable{
		Object returnObj= null;
		
		//method
		String method = pjp.getSignature().getName();
		//class명
		String className = pjp.getTarget().getClass().getName();
		
		LOG.debug("┌──────────────────────────────┐");
		LOG.debug("│before 메소드 수행전                             │");
		
		//long start = System.currentTimeMillis();
		StopWatch  stopWatch=new StopWatch();
		stopWatch.start();
		
		returnObj = pjp.proceed();//메서드 수행!
		
		stopWatch.stop();
		//long end = System.currentTimeMillis();
		
		//long sTime = end - start;
		LOG.debug("│className                     │"+className);
		LOG.debug("│method                        │"+method);
		LOG.debug("│경과시간                                                 │"+stopWatch.getTotalTimeMillis()+"(ms)초");
		LOG.debug("│after  메소드 수행후                             │");
		LOG.debug("└──────────────────────────────┘");	
		saveLogToDatabase(className,method,"10",stopWatch.getTotalTimeMillis(),"admin");
		return returnObj;
	}
	
    private void saveLogToDatabase(String className, String methodName, String status, long elsapseTime,String regId) {
        StringBuilder sb =new StringBuilder(200);
        
        sb.append(" INSERT INTO perform_log ( ");
        sb.append("     log_id,               ");
        sb.append("     class_name,           ");
        sb.append("     method_name,          ");
        sb.append("     status,               ");
        sb.append("     elapsed_time,         ");
        sb.append("     reg_id                ");
        sb.append(" ) VALUES (                ");
        sb.append("     ?,                  ");
        sb.append("     ?,                  ");
        sb.append("     ?,                  ");
        sb.append("     ?,                  ");
        sb.append("     ?,                  ");
        sb.append("     ?                   ");
        sb.append(" )                       ");
        
        int flag = jdbcTemplate.update(sb.toString(),StringUtil.getPK() ,className, methodName, status,elsapseTime,regId);
        
    }	
	
}
