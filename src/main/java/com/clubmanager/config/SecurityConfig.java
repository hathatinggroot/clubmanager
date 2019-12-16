//package com.uefa.config;
//
//import javax.sql.DataSource;
//
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.context.annotation.Bean;
//import org.springframework.context.annotation.Configuration;
//import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
//import org.springframework.security.config.annotation.web.builders.HttpSecurity;
//import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
//import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
//import org.springframework.security.core.userdetails.UserDetailsService;
//import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
//import org.springframework.security.crypto.password.PasswordEncoder;
//import org.springframework.security.web.authentication.AuthenticationSuccessHandler;
//import org.springframework.security.web.authentication.rememberme.JdbcTokenRepositoryImpl;
//import org.springframework.security.web.authentication.rememberme.PersistentTokenRepository;
//
//
//import lombok.Setter;
//import lombok.extern.log4j.Log4j;
//
//@Configuration
//@EnableWebSecurity
//@Log4j
//public class SecurityConfig extends WebSecurityConfigurerAdapter{
//
//	@Setter(onMethod_= @Autowired)
//	private DataSource dataSource;
//	@Override
//	public void configure(HttpSecurity http) throws Exception {
//		http.authorizeRequests()
//			.antMatchers("/sample/all").permitAll()
//			.antMatchers("/sample/admin").access("hasRole('ROLE_ADMIN')")
//			.antMatchers("/sample/member").access("hasRole('ROLE_MEMBER')");
//		
//		http.formLogin().loginPage("/customLogin").loginProcessingUrl("/login");
//		
//		http.logout().logoutUrl("/customLogout").invalidateHttpSession(true).deleteCookies("remember-me","JSESSIONID");
//
//		http.rememberMe()
//			.key("zerock")
//			.tokenRepository(persistentTokenRepository())
//			.tokenValiditySeconds(604800);
//	}
//	
//	@Bean
//	public PersistentTokenRepository persistentTokenRepository() {
//		JdbcTokenRepositoryImpl repo = new JdbcTokenRepositoryImpl();
//		repo.setDataSource(dataSource);
//		return repo;
//	}
////	@Bean
////	public AuthenticationSuccessHandler loginSuccessHandler() {
////		return new CustomLoginSuccessHandler();
////	}
//	
//	
////	@Override
////	protected void configure(AuthenticationManagerBuilder auth) throws Exception {
////		// TODO Auto-generated method stub
////		
////		log.info("configure...............");
////		
////		auth.inMemoryAuthentication().withUser("admin").password("{noop}admin").roles("ADMIN");
////		auth.inMemoryAuthentication().withUser("member").password("$2a$10$libJf9T4.J7PzvQBBm5ioOr/rpYSG/sxkLlXRoC6vkabCHLpiF7cm").roles("MEMBER");
////		
////	}
//	
////	@Override
////	protected void configure(AuthenticationManagerBuilder auth) throws Exception {
////		// TODO Auto-generated method stub
////		
////		log.info("configure JDBC...............");
////		
////		String queryUser = "SELECT userid, userpw, enabled FROM tbl_member WHERE userid =?";
////		String queryDetails = "SELECT userid, auth FROM tbl_member_auth WHERE userid = ?";
////		
//////		auth.jdbcAuthentication()
//////		.dataSource(dataSource)
////		auth.userDetailsService(customUserService())
////		.passwordEncoder(passwordEncoder());
//////		.usersByUsernameQuery(queryUser)
//////		.authoritiesByUsernameQuery(queryDetails);
////	}
//	
//	@Bean
//	public PasswordEncoder passwordEncoder() {
//		return new BCryptPasswordEncoder();
//	}
//	
////	@Bean
////	public UserDetailsService customUserService() {
////		return new CustomUserDetailsService();
////	}
//}
