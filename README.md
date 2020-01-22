# 클럽 매니져

## 서비스 개요
아마추어 축구 팀의 기록 및 일정 관리 서비스입니다.   
[클럽매니져 사이트 바로가기](http://13.209.65.197:8080)   
[개발 진행 일정](https://docs.google.com/spreadsheets/d/1Nw81ttVzslzoM_4Bp6AE-wgNUS3m4PZOmTIqJd6Ejx0/edit?usp=sharing)    
테스트 계정[관리자 / 구단주 계정은 비공개]   
id:  test002 ~ test017   
pw : !Q2w3e   


## 기술 스택
* Client
  1. HTML / CSS / BootStrap
  2. javascript 
  3. jQuery
* Server
  1. Java
  2. JSP / JSTL
  3. Ajax
  4. Spring MVC
  5. Spring Security
  6. RESTful
  7. AWS EC2 linux2 AMI
  8. tomcat
  9. AWS RDS MYSQL
  10. mybatis
  11. hikariCP
  12. JUNIT

## 주요 기능
* 관리자
  1. 공지사항 CRUD + 팝업
* 사용자
  1. 회원가입
       * 구단주로 가입 시
       * 일반 사용자로 가입시
  2. 개인정보 수정
  3. 로그인 유지
  4. 팝업 하루동안 보지 않기
  5. 경기 등록 - 참석 투표 자동 등록
  6. 경기 정보 수정 및 확정 - 기록실 자동 등록
  7. 라이브 보드(실시간 경기 기록)
  8. 투표 기능
  9. 기록실
  10. 자유 게시판
  11. 선수 권한 조정 및 방출

## 시연 영상
[시연 영상 보기](https://youtu.be/WD2y9MGiw4w)

## 성과
* [Spring 아키텍쳐 설계에 대한 연구](/docs/architecture.md)
* [DB 설계와 도메인 오브젝트간의 관계](/docs/DBDesign.md)
* [서비스 계층에서의 트랜잭션 관리](/docs/transaction.md)
* [Spring Security를 활용한 인증 및 인가](/docs/auth.md)
* [AJax + RESTful 구현](/docs/RESTful.md)
* [게시판 기능 구현](/docs/board.md)
* [쿠키를 통한 기능 구현](/docs/cookie.md)
* [AWS EC2를 활용한 배포](/docs/deployment.md)
