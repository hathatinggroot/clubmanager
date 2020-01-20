## DB 설계와 도메인 오브젝트간의 관계
### DB 설계
DB설계를 위해 필요한 데이터의 목록을 추리고 카테고리별 데이터를 묶어 다음과 같은 설계도를 작성하였다.  
![DB설계 모델링](/docs/img/DBDesign000.jpg)  

*이때 고민했던 문제는*  
####  1.  외래키 참조 관계를 DB에서 제약조건으로 서술할 것인가. JAVA에서 도메인 오브젝트간 필드로 참조하는 형식으로 구현할 것인가.    
  이 문제를 고민하게된 이유는 참조관계가 일부 변경될 수 있는 문제때문에 발생했다.
  예를 들어 회원 계정이 삭제되면 그 회원이 작성했던 게시물은 삭제할 것인지 남겨둘 것인지 등의 문제다.
    만약 사용자의 요구가 처음부터 확고하다면 큰 걱정은 없지만 혹시 바뀔 수 있는 상황이 있다는 가정하에 DB에서는 변치 않을 외래 참조 관계만 제약조건으로 선언하고 기타 변할 수 있는 관계는 도메인 오브젝트에서 필드에 참조시키는 방식으로 구현하였다.
~~~java
@Data
@ToString
public class MatchVO {
	...생략
	private PollPartVO ppVO; // 참조
	private MatchRecordVO mrVO; // 참조
}
~~~
위와 같은 방식으로 참조관계를 만들면 훨씬 유연하게 수정이 가능하다는 것을 몸소 체감했다.

####  2.  DB의 성능을 위해 INDEX를 적극 활용했다.  

현 서비스에서 성능을 고민할 만큼의 많은 데이터가 있는 것은 아니지만 만약에 지속적인 축적이 된다면
서비스 특성상 마치 클럽마다 하나의 DB를 구현한 것과 같은 상태가 된다.(테이블 별 모든 구단별 기록이 저장되어야 하기 때문에)   
따라서 기본적으로 clubCode가 포함된 index를 생성하여 힌트로 활용, DB 성능을 향상시켰다.   
*index 예시*
~~~
<select id="getPRList" resultType="com.clubmanager.domain.PersonalRecordDTO">
		select /*+ INDEX(tbl_personalRecord idx_pr) */ *
		from tbl_personalRecord
		where matchNo = #{matchNo}
	</select>
~~~
    
