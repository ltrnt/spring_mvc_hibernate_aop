package ru.ltrnt.spring_mvc.aspect;

import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.reflect.MethodSignature;
import org.springframework.stereotype.Component;

@Component
@Aspect
public class LoggingAspect {

    @Around("execution(* ru.ltrnt.spring_mvc.dao.*.*(..))")
    public Object aroundAllRepositoryMethodsAdvice(ProceedingJoinPoint joinPoint) throws Throwable {
        MethodSignature methodSignature = (MethodSignature) joinPoint.getSignature();

        String nameOfMethod = methodSignature.getName();

        System.out.println(nameOfMethod + " starts");
        Object targetMethodResult = joinPoint.proceed();
        System.out.println(nameOfMethod + " ends");

        return targetMethodResult;
    }
}
