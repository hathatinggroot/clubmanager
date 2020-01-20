## Spring 아키텍쳐 설계에 대한 연구
### 왜 아키텍쳐를 고민하게 되었나
**'아키텍쳐'** 라는 용어 자체에서 오는 무게감과 압박감과는 별개로 작은 토이프로젝트라도 수천줄이 넘어가는 코딩을 하다보면  
설계가 얼마나 중요했는지 본능적으로 느낄 수 있다.   
설계는 얼마나 효율적으로 좋은 성능을 낼 수 있는 코드인가를 결정해주기도 하지만   
사실 당장 나의 입장에선 추후 내가, 또는 남이 이 코드를 봤을 때 이해가 될수 있도록 잘 정리할 수 있는 서랍과 같은 존재였다.  

그래서 구조적 설계, 즉, 아키텍쳐의 필요성을 느꼈다.
이 서비스에는 가장 전통적인 3계층 아키텍쳐 + 도메인 오브젝트 계층으로 아키텍쳐를 구성하였다.   
![아키텍쳐 구조도](/docs/img/architecture000.jpg){: .align-center}

#### 1. 대부분의 비즈니스 로직은 서비스 계층에서 구현하고 인터페이스를 통해 controller와의 느슨한 결합을 갖게 했다.   
![인터페이스-구현체](/docs/img/architecture001.jpg){: .align-center}

*controller와의 느슨한 결합*
~~~java   
@Controller
@Log4j
public class CommonController {

	@Setter(onMethod_ = { @Autowired })
	private CommonService commonService;

	@Setter(onMethod_ = { @Autowired })
	private MemberService memberService;

	@Setter(onMethod_ = { @Autowired })
	private AnnMapper annMapper;
  ...이하 생략
}
~~~
   *이유는*   
          * 로직에 대한 수정 소요가 있을 때 서비스 계층에서 쉽게 해당 로직 코드를 찾을수 있도록 한다.   
          * 로직에 대한 대대적인 코드 수정 또는 기타 이유로 인해 구현체 자체를 새로 바꾸는 경우  이를 참조하는 controller는 수정하지 않도록 하기 위해서 인터페이스를 활용했다.     


#### 2. 데이터 엑세스 계층에서 최대한 단순한 쿼리로 구현하였다.
*이유는*   
       * 비용적 측면이다. DB에서의 자원은 값비싸고 또한 해당 로직이 처리되는 동안 lock이 걸릴 수있다.   
       * 로직이 바뀔 때마다 쿼리문을 수정하지 않도록 하기 위함이다.        
       * 어떠한 이유로 DBMS가 변경될 시 수정소요를 줄이기 위해 간단한 쿼리만 수행한다.  
       ==> _실제로 프로젝트 배포간 라이센스 문제로 오라클에서 mysql로 변경하는 일이 생겼는데 이때 SQL에서 구현된 로직이 많았다면 소소한 쿼리 문법 차이로 수정하는데 많은 애를 먹었을 것이다._


#### 3. 도메인 오브젝트 계층에서 정보를 담는 그릇 역할과 더불아 간단히 도메인 내에서 처리될 수 있는 로직은 도메인 오브젝트에서 수행하여 *풍성한 도메인 오브젝트* 로 구현했다.   
~~~Java
@Data
@ToString
public class PersonalRecordDTO {
	private int mom;
	private int goals;
	private int assists;
	private int saves;
	private String userId;
	private String userName;
	private int matchNo;

	public int getTotal() {//-- total = 1(참석) + mom(3) + goals(2) + assists(1) + savess(1) )
		int total = 0;

		total = 3+ this.mom*3 + this.goals*1 + this.assists*1 + this.saves*1 ;

		return total;
	}

}
~~~
~~~Java
@Getter
@Setter
@ToString
public class pageDTO {
	private int total;
	private int startPage;
	private int endPage;
	private Criteria cri;

	private boolean prev;
	private boolean next;

	public pageDTO(int total, Criteria cri) {
		this.total = total;
		this.cri = cri;

		this.endPage = (int) Math.ceil((double)total/cri.getAmount());
		this.startPage = 1+ ((int) Math.ceil(cri.getPageNum()/5.0)-1)*5;

		this.prev = this.startPage>1;
		this.next = this.endPage > this.startPage + 4;

		if(this.next) {
			this.endPage = this.startPage + 4;
		}
	}
}
~~~

#### 4. 각 계층에서 도메인 오브젝트에 대한 정보가 필요할 때 최대한 오브젝트 단위로 참조하도록 했다. 예를 들어, userId만 참조하는 상황이어도 userId를 포함한 memberVO를 파라미터로 참조하도록 하였다.        
*이유는*   
       * 추후 참조하는 값의 유형이 달라지더라도 코드 수정을 최소화 하기 위함이다.  userID만 참조했던 로직에서 clubCode까지 참조해야하는 상황으로 바뀐다면 이를 모두 포함하고 있는 memberVO를 참조 시켜놓으면 서비스 로직 부분만 신경써도 될것이다.         
