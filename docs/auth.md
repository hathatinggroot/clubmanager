## Spring Security를 활용한 인증 및 인가
### 그렇다. 사실 Spring Security를 완벽히 이해한 수준은 아니다. 하지만 적어도 구조의 흐름과 내가 무엇을 커스터마이징 할 수 있는지를 확인하고 활용했다.
Spring Security의 아키텍쳐는 다음과 같다.   
![아키텍쳐 구조도](/docs/img/auth000.jpg)   

내가 활용하기 위해 필요한 사실은
#####   1. AuthenticationProvider에서 실제 인증이 이루어진다. 이때 인증을 위해 클라이언트로부터 입력받은 로그인 정보와 비교할 원 계정의 정보를 전달하면 된다.
#####   2. 원 계정의 정보는 UserDetals의 구현체인 User 클래스 타입으로 전달해야 한다.

   이 두가지 사실에 기인하여   
   UserDetailService는 커스터마이징하여   
~~~java
   @Log4j
   public class CustomUserDetailsService implements UserDetailsService {
   	@Setter(onMethod_= {@Autowired})
   	private MemberMapper memberMapper;
   	@Override
   	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
   		// TODO Auto-generated method stub
   		log.warn("Load User by UserName : "+ username);

   		MemberVO memberVO = memberMapper.get(username);  // DB에 저장된 원 계정의 정보 가져오기

   		log.warn("queried by member mapper : " + memberVO);

   		return memberVO ==null ? null:new CustomUser(memberVO);  
            // User 클래스를 상속받는 CustomUser 클래스 반환
   	}   	
   }
~~~   
와 같이 작성 하고 이를 위한 User 클래스를   
~~~java
   @Getter
   @Log4j
   public class CustomUser extends User {

	private static final long serialVersionUID = 1L;

	private MemberVO member;  // 인증 후 바로 접근하여 사용하기위한 변수를 필드로 선언

	private String clubCode;  // 인증 후 바로 접근하여 사용하기위한 변수를 필드로 선언
	public CustomUser(String username, String password, Collection<? extends GrantedAuthority> authorities) {
		super(username, password, authorities);
	}

	public CustomUser(MemberVO vo) {
		super(vo.getUserId(), vo.getUserPw(), chType(vo.getAuth()));
		log.info("CustomUser : " + vo);
		this.member = vo;
		this.clubCode = vo.getClubCode();
	}
	static Collection<SimpleGrantedAuthority> chType(String auth){
		Collection<SimpleGrantedAuthority> authList = new ArrayList<SimpleGrantedAuthority>();
		authList.add(new SimpleGrantedAuthority(auth));
		return authList;
	}
~~~
   과 같이 커스터마이징하여 인증을 구현하였다.

------

### 인증 이후 각 페이지와 기능, 메뉴 등에 대한 인가는 어노테이션을 활용하여 구현할 수 있었다.  

*CommonController.java*
~~~java
@PreAuthorize("isAuthenticated()")
@PostMapping(value = "/modifyPInfo", consumes = "application/json", produces = MediaType.TEXT_PLAIN_VALUE)
@ResponseBody
public String modifyPInfo(@RequestBody Map<String, Object> params) {
  MemberVO memberVo = new MemberVO();
  ClubVO clubVo = new ClubVO();
  memberVo.setUserId(params.get("userId").toString());
  memberVo.setUserName(params.get("userName").toString());
  clubVo.setClubCode(params.get("clubCode").toString());
  clubVo.setClubName(params.get("clubName").toString());
  log.info("MODIFY memberVo : " + memberVo);
  log.info("MODIFY clubVo : " + clubVo);
  int result = commonService.modify(memberVo, clubVo);

  log.info(result==1);
  if (result == 1) {
    return "success";
  } else {
    return "fail";
  }
}

@PreAuthorize("isAnonymous()")  
@GetMapping("/customlogin")
public String loginInput(Model model) {
  model.addAttribute("loginModal", "true");
  return "intro";
}
~~~
위와 같이 __메서드__ 별 인가를 조정하거나      

*AdminController.java*
~~~java
@Controller
@Log4j
@RequestMapping("/admin")
@PreAuthorize("hasRole('ROLE_ADMIN')")
public class AdminController {
  ... 이하생략
~~~
와 같이 __클래스(컨트롤러)__ 단위로 인가를 조정하기도 했다.
