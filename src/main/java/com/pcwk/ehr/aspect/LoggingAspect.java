package com.pcwk.ehr.aspect;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.aspectj.lang.JoinPoint;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;

public class LoggingAspect {
    private final JdbcTemplate jdbcTemplate;
    private final Logger LOG = LogManager.getLogger(getClass());
    
    
    @Autowired
    public LoggingAspect(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }
    
    public void beforeAdvice(JoinPoint joinPoint) {
        // 메서드 실행 전에 로그를 출력하는 동작을 수행
        String methodName = joinPoint.getSignature().getName();
        String className = joinPoint.getTarget().getClass().getSimpleName();

		LOG.debug("Executing method: " + methodName + " in class: " + className);
    }
    
    public void afterReturningAdvice(JoinPoint joinPoint, Object returnValue) {
        // 메서드 실행 후에 로그를 출력하고 DB에 로그를 저장하는 동작을 수행
        String methodName = joinPoint.getSignature().getName();
        String className = joinPoint.getTarget().getClass().getSimpleName();
        System.out.println("Method: " + methodName + " in class: " + className + " executed successfully.");
        saveLogToDatabase(className, methodName, "success");
    }
    
    public void afterThrowingAdvice(JoinPoint joinPoint, Throwable exception) {
        // 예외 발생 시에 로그를 출력하고 DB에 로그를 저장하는 동작을 수행
        String methodName = joinPoint.getSignature().getName();
        String className = joinPoint.getTarget().getClass().getSimpleName();
        System.out.println("Exception occurred in method: " + methodName + " in class: " + className);
        saveLogToDatabase(className, methodName, "error");
    }   
    
    private void saveLogToDatabase(String className, String methodName, String status) {
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
        sb.append(" )                         ");
        
        jdbcTemplate.update(sb.toString(), className, methodName, status);
    }
    
    
    
    
    
    
    
    
}
