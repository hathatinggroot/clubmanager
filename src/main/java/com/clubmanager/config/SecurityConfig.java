package com.clubmanager.config;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.AuthenticationProvider;
import org.springframework.security.authentication.RememberMeAuthenticationProvider;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.web.authentication.AuthenticationFailureHandler;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;
import org.springframework.security.web.authentication.rememberme.JdbcTokenRepositoryImpl;
import org.springframework.security.web.authentication.rememberme.PersistentTokenRepository;
import org.springframework.security.web.authentication.rememberme.RememberMeAuthenticationFilter;
import org.springframework.security.web.authentication.rememberme.TokenBasedRememberMeServices;

import com.clubmanager.securiy.CustomAccessDeniedHandler;
import com.clubmanager.securiy.CustomAuthenticationFailureHandler;
import com.clubmanager.securiy.CustomLoginSuccessHandler;
import com.clubmanager.securiy.CustomUserDetailsService;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Configuration
@EnableWebSecurity //Spring MVC 와 Spring Security를 결합하는 용도
@Log4j
public class SecurityConfig extends WebSecurityConfigurerAdapter{

	@Setter(onMethod_= @Autowired)
	private DataSource dataSource;
	
	@Override
	public void configure(HttpSecurity http) throws Exception {
		System.out.println("configure http...............");
		log.info("configure http...............");
		
		//로그인 로직
		http.formLogin().loginPage("/customlogin").loginProcessingUrl("/loginprocess")
					    .successHandler(loginSuccessHandler())//로그인 성공시
					    .failureHandler(loginFailureHandler());//로그인 실패시
		
		http.exceptionHandling().accessDeniedHandler(new CustomAccessDeniedHandler());//권한 없을 시
		
		
		http.logout().logoutUrl("/customLogout").invalidateHttpSession(true).deleteCookies("clubManager","JSESSIONID").logoutSuccessUrl("/intro");
//		http.logout().logoutUrl("/customLogout").invalidateHttpSession(true).deleteCookies("remember-me","JSESSIONID");

		http.rememberMe()
			.key("clubManager")
			.rememberMeParameter("rememberMe")
			.rememberMeCookieName("clubManager")
			.tokenValiditySeconds(604800)
			;
	}
	
	
	
	@Bean  //로그인 성공시 처리 로직
	public AuthenticationSuccessHandler loginSuccessHandler() {
		log.info("loginSuccessHandler...............");
		return new CustomLoginSuccessHandler();
	}
	
	@Bean //로그인 실패시 처리 로직
	public AuthenticationFailureHandler loginFailureHandler() {
		log.info("loginFailureHandler...............");
		return new CustomAuthenticationFailureHandler();
	}
	
	
	@Override
	protected void configure(AuthenticationManagerBuilder auth) throws Exception {
		// TODO Auto-generated method stub
		System.out.println("configure JDBC...............");
		log.info("configure JDBC...............");
		
		auth
		.userDetailsService(customUserService())
		.passwordEncoder(passwordEncoder())
		;
	}
	@Bean
	public PasswordEncoder passwordEncoder() {
		return new BCryptPasswordEncoder();
	}
	
	@Bean
	public UserDetailsService customUserService() {
		return new CustomUserDetailsService();
	}
}
