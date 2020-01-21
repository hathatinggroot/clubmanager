## 쿠키를 통한 기능 구현   
### 1. 로그인 유지   
  로그인 유지 기능을 구현하기 위해 Spring Security에서 제공하는 rememeber-me 기능을 활용하여 쿠키를 통해 구현했다.  
  _SercuriyConfig.java_
  ~~~java
@Override
public void configure(HttpSecurity http) throws Exception {
  ... 생략
  http.logout().logoutUrl("/customLogout").invalidateHttpSession(true).deleteCookies("clubManager","JSESSIONID").logoutSuccessUrl("/intro");

  http.rememberMe()
    .key("clubManager")
    .rememberMeParameter("rememberMe")
    .rememberMeCookieName("clubManager")
    .tokenValiditySeconds(604800)
    ;
}
  ~~~  
로그 아웃시에는 쿠키 삭제를 통해 추후 접속시 다시 로그인 되도록 구현했다.  

### 2. 팝업 하루동안 보지 않기    
  공지사항 팝업이 있는 경우 하루동안 보지 않기 버튼을 통해 쿠키를 생성하여 팝업이 하루동안 나타나지 않도록 구현했다.   
  ~~~javascript
  if ('${popupList}' != '' && '${popupList}' != '[]') {
		if (document.cookie.indexOf('noPop') == -1) {
			$("#annPopup").modal();
		}
	}

	$("#noPop").on(
			"click",
			function(e) {
				var expire = new Date();
				expire.setDate(expire.getDate() + 1);
				console.log(expire);
				document.cookie = "noPop=true;path=/;expires="
						+ expire.toGMTString() + ";";
				$("#annPopup").hide();
			})
~~~
