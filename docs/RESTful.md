## AJax + RESTful 구현
### 우선 전혀 REST 스럽지 않았다. 최소한의 REST 디자인 가이드도 따르지 않았다.  사실 다 만들고 나서야 잘못되었다는 것을 인지했다.
우선 맨처음 REST에 대한 오해를 하고 있었다. uri만 보고 어떤 자원을 나타내고 무엇을 하고자 하는지 알아야 한다는 것만 생각한 채로 코딩하다보니
~~~Java
@PostMapping(value= "/writeReply", consumes="application/json", produces={ MediaType.TEXT_PLAIN_VALUE})
@ResponseBody
public String writeReply(@RequestBody ReplyVO replyVO) {
  ...이하 생략
}
~~~
와 같이 __행위와 자원__ 이 모두 포함된 uri로 명명해버리는 우를 범했다.   
물론 잘 돌아는 간다. 하지만 REST하지 않았다.   

----
### 그래서 REST 디자인 패턴 규칙에 따라 uri는 자원을 대표하는 것으로 명명하고 그에 대한 행위는 http method(get, post, put, delete)로 표현하는 것으로 수정하였다.

~~~Java
@PostMapping(value= "/reply", consumes="application/json", produces={ MediaType.TEXT_PLAIN_VALUE})
@ResponseBody
public String writeReply(@RequestBody ReplyVO replyVO) {
  ...이하 생략
}
~~~   

### 이렇게 uri 디자인만 한다고 RESTful API라고 할 수 있어?? 그렇게 간단하다고??   
결론은 아니다.   
_그 이유는_   
  __HTTP 상태코드를 통한 적절한 예외처리가 이루어지지 않았다.__   
      단순히 String으로 "success", "fail"을 리턴하거나 json으로만 리턴할 뿐 상태코드를 적절히 활용하여 예외 처리를 할 필요가 있다. 추후 보완 예정이다.      
  __REST의 가장 큰 특징인 uri와 http method를 사용하는 디자인 패턴은 구현했으나 좀더 유연한 리소스간의 계층적인 구조를 나타내는 설계, json 에 국한되지 않은 활용 등이 부족했다.__   
