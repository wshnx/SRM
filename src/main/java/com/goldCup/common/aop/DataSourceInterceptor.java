package com.goldCup.common.aop;

import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.aspectj.lang.annotation.Pointcut;
import org.springframework.stereotype.Component;

import com.goldCup.common.utils.DataSourceManager;
import com.goldCup.common.utils.DataSources;

@Aspect
@Component
public class DataSourceInterceptor {
    @Pointcut("execution(* com.goldCup.*.service.*.*(..))")
    public void dataSourceSelector(){
        
    }
    @Before("dataSourceSelector()")
    public void before(JoinPoint jp){
    	Object[] args = jp.getArgs();
    	String dataType = args[0].toString().trim();
    	if(dataType.equals("oa") || dataType.equals("OA")) {
    		DataSourceManager.set(DataSources.OA);
    	}
    	else {
    		DataSourceManager.set(DataSources.SRM);
    	}
    }
}
