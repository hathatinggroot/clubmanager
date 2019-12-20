package com.clubmanager.config;

import org.springframework.security.web.context.AbstractSecurityWebApplicationInitializer;

public class SecurityInitializer extends AbstractSecurityWebApplicationInitializer {
	//WebConfig 에 getServletFilters()를 이용하여 추가한것과 같은 역할
	//AbstractSecurityWebApplicationInitializer 클래스는 내부적으로 DelegatingFilterProxy 를 스프링에 등록
	
	//DelegatingFilterProxy
	//스프링 시큐리티가 모든 애플리케이션 요청을 감싸게 해서 모든 요청에 보안이 적용되게 하는 서블릿필터이다.
	//(스프링 프레임워크에서 제공) 스프링 프레임워크 기반의 웹 애플리케이션에서 서블릿 필터 라이프 사이클과 
	//연계해 스프링 빈 의존성을 서블릿 필터에 바인딩하는데 사용한다.
}
