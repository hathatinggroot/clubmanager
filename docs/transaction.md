## 서비스 계층에서의 트랜잭션 관리
### 서비스의 A라는 기능에는 a,b,c의 연쇄적인 작업들이 모두 처리되어야 한다.
**'작업의 단위'** 즉, 트랜잭션 단위로 수행되어야 하는 작업들이 있다.   
다음 코드는 BoardServiceImpl.java의 getBoard()메서드 이다.  
~~~Java
@Transactional
	@Override
	public BoardVO getBoard(BoardVO boardVO) {
		boardMapper.hit(boardVO); // a.조회수 증가

		BoardVO bvo = boardMapper.getBoard(boardVO); // b.글 세부 정보 가져오기
		List<AttachVO> attachList = boardMapper.getAttachList(boardVO.getBoardNo());
		bvo.setAttachList(attachList);

		return bvo;
	}
~~~
글 상세보기를 하면 a.조회수가 올라가야하는 작업과 b.글의 세부 정보를 가져와야하는 작업이 함께 이루어져야한다.  
둘중 하나라도 실패하면 롤백 되어야한다.   따라서 이를 하나의 트랜잭션으로 묶어주는 __@Transactional__ 어노테이션을 사용하였다.
