## 게시판 기능 구현    
### 1. 게시물 목록   
  1. 페이징   
  MySQL의 limit과 offset을 활용하여 페이징을 구현했다.
  ~~~xml
  <select id="getBoardList" resultType="com.clubmanager.domain.BoardVO">
		select sq.*  
		from
			(
			select /*+ INDEX_DESC(tbl_freeboard pk_freeboard) */
			*
			from tbl_freeboard
			where clubCode = #{clubCode}
			and
			(
				boardTitle like concat('%',#{keyword},'%')
				or	boardWriter like concat('%',#{keyword},'%')
				or  boardContent like concat('%',#{keyword},'%')
			)
			)  sq
		limit #{offset} ,  #{amount}
	</select>
  ~~~
  이때 변수로 사용되는 offset, amount, keyword는 Criteria 오브젝트를 파라미터로 활용했다.  
  _Criteria.java_
  ~~~Java
@Getter
@Setter
@ToString
public class Criteria {
	private int pageNum;
	private int amount;
	private int offset;
	private String keyword;
	private String clubCode;
	private int annPopup;

	public Criteria() { // 기본 값은 1페이지, 페이지당 10개의 게시물, 검색키워드는 ""으로 초기화 했다.
		this(1,10, "");
	}

	public Criteria(int pageNum, int amount, String keyword) {
		this.pageNum = pageNum;
		this.amount = amount;
		this.keyword = keyword;
	}

	public int getOffset() { // mysql 의 limit, offset을 활용하기 위해 생성한 메서드
		int result = (this.pageNum-1) * this.amount;
		return result;
	}
}
~~~   
페이징 목록 버튼은 pageDTO 오브젝트를 활용했다.    
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

  2. 검색    
  위의 게시물 목록을 불러올 때 model이나 request의 attribute를 사용하지 않고 REST 형태의 json으로 받도록 하였는데 그 이유는 검색시 페이지 이동없이 글자가 작성될 때마다 검색하기 위함이다.   
  _검색 창에 keyup 이벤트 속성 추가_
  ~~~javascript
  $("#keyword").on("keyup", function(e){
		var keyword = $(this).val();
		cri.keyword = keyword; //사용자가 입력한 키워드
		cri.pageNum = 1;
		showList(cri); // 게시물을 json 형태로 받아오는 함수
		getPaginator(cri); // 페이지 이동 버튼을 불러오는 함수
	})
  ~~~   
  keyword 변수값이 변경된 Criteria를 파라미터로 전달하여  
  ~~~xml
  <select id="getBoardList" resultType="com.clubmanager.domain.BoardVO">
    ...생략
      (
        boardTitle like concat('%',#{keyword},'%')
        or	boardWriter like concat('%',#{keyword},'%')
        or  boardContent like concat('%',#{keyword},'%')
      )
    ...생략
  </select>
  ~~~   
  와 같이 keyword가 제목, 작성자 또는 내용에 포함된 게시물만 검색하도록 하였다.      
  ![검색 영상](/docs/img/board000.gif)

  3. 상단 고정   
  중요한 게시물은 게시판 상단에 고정적으로 노출될 수 있는 기능을 구현했다.   
  이는 권한 확인을 통해 구단주 또는 매니져만 수정 가능하도록 하였다.    
  ![글 상단 고정](/docs/img/board001.jpg)   

### 2. 게시물 작성
  1. 첨부파일 이미지 미리보기   
  첨부파일 중 이미지 파일인 경우 미리보기 기능은 HTML5 API의 기능을 활용했다.   
  ~~~javascript
  $("#inputAttachList").on("change",function(e){
  ...생략
    if(el.type.substring(0,5)=='image'){
      str += "<li data-isImg='1'>"+el.name+"</li>";
      var reader = new FileReader();
      reader.readAsDataURL(el);
      console.log(reader);
      reader.onload = function (e){
        var str1 = "<img src='"+e.target.result+"'>";
        preview.append(str1);
        var previewImg = $("#preview>img");
        previewImg.css({"width":"100%","height":"auto","margin-bottom":"5px"});
      }
    }else{
      str += "<li data-isImg='0'>"+el.name+"</li>";
    }
...생략
});
  ~~~


  2. 첨부파일 업로드   
  첨부파일이 실제로 서버 로컬에 저장되는 시점은 작성자가 게시물 등록버튼을 눌렀을 때 처리하는 것으로 구현했다.   
  첨부 파일 업로드를 위해  
  _WebConfig.java_  
  ~~~java
  @Override
protected void customizeRegistration(ServletRegistration.Dynamic registration) {
  registration.setInitParameter("throwExceptionIfNoHandlerFound", "true");

  MultipartConfigElement multipartConfig =
//				new MultipartConfigElement("C:\\ClubManager\\upload\\temp");  // 윈도우 환경에서 개발시
  new MultipartConfigElement("/usr/local/clubmanager/upload/temp");  // 리눅스 환경에서 개발시
  registration.setMultipartConfig(multipartConfig);
}
~~~
와 같이 default location을 설정했다.  
 프리젠테이션 계층에서는 MultipartFile 타입으로 첨부파일을 전달하고 서비스 계층에서    

~~~java
 @Override
 public List<AttachVO> upload(MultipartFile[] upload) {

   List<AttachVO> uploadList = new ArrayList<AttachVO>();

//		String uploadFolder = "C:\\ClubManager\\upload";
   String uploadFolder = "/usr/local/clubmanager/upload";

   String uploadFolderPath = getFolder(); // 해당 연도 - 월 - 날짜 순 디렉터리 생성 메서드

  // private String getFolder() {
	//	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
	// 	Date date = new Date();
	// String str = sdf.format(date);
	//	return str.replace("-", File.separator);
	//}

   File uploadPath = new File(uploadFolder, uploadFolderPath);

   if(!uploadPath.exists()) uploadPath.mkdirs();

   for(MultipartFile mpFile : upload) {
..생략
     String uploadFileName = mpFile.getOriginalFilename();

     File saveFile = new File(uploadPath, uploadFileName);

     while(saveFile.exists()) { // 만약 같은 이름의 파일이 존재할 경우 파일명에 "[1]" 추가
       String modName = saveFile.getAbsolutePath();
       String ogName = modName.substring(0,modName.lastIndexOf("."));
       String type = modName.substring(modName.lastIndexOf("."));
       log.warn("modName : "+ modName);
       log.warn("type : "+ type);
       log.warn("ogName : "+ ogName);
       saveFile = new File(ogName+"[1]"+type);
     }

     try {
       mpFile.transferTo(saveFile);   // 실제 파일을 서버에 저장
..생략
       uploadList.add(vo);  // DB에 파일 저장
..생략
 }
~~~     
와 같이 구현했다.   

  3. 게시물 등록    
  첨부파일 등록이 성공적으로 수행되면 게시물을 DB에 저장한다.


### 3. 게시물 보기     
  1. 게시물의 작성자와 로그인 사용자의 id값을 비교하여 같은 경우에만 "수정, 삭제" 버튼이 화면에 표시된다.   
  2. 댓글 등록   
    댓글 등록은 Ajax를 통해 비동기로 구현했으며 이때 isLike 플래그를 통해 '좋아요' 기능을 함께 처리할 수 있도록 구현했다.
    ~~~javascript
    $("#addReplyBtn").on("click",function(e){
  var replyVO = new Object();
  ...생략
  replyVO.isLike = 0;  // 0 이면 댓글, 1이면 좋아요
  console.log(replyVO);

  $.ajax({
    type:"post",
    url:"/freeboard/reply",
    data: JSON.stringify(replyVO),
    contentType : "application/json",
    beforeSend : function(xhr) {
      xhr.setRequestHeader(header, token);
    },
    success : function(result){
      console.log(result);
      location.reload();
    }
  });
})
~~~   
이를 통해 좋아요를 선택한 게시물에 다시 좋아요 할수 없도록 하고 토글 방식으로 좋아요 취소를 할수 있도록 구현했다.  
  3. 첨부파일 다운로드   
  첨부파일 목록을 클릭하면 첨부파일을 다운로드 받을 수 있도록 구현했다.   
  _FreeboardController.java_
  ~~~java
  @PostMapping(value = "/download", produces={ MediaType.APPLICATION_OCTET_STREAM_VALUE })
public ResponseEntity<Resource> download(@Param("filePath") String filePath, @Param("fileName") String fileName,  @Param("boardNo") int boardNo, RedirectAttributes rttr) {
  log.info("download attachVO : " + filePath + fileName);
  Resource resource = new FileSystemResource(filePath+fileName);
  log.info("resource : " + resource);
  if(resource.exists()) {
    HttpHeaders header = new HttpHeaders();
    try {
      String download = new String(resource.getFilename().getBytes("UTF-8"),"ISO-8859-1");
      header.add("Content-Disposition", "attachment; filename=\""+download+"\"");
    } catch (UnsupportedEncodingException e) {
      // TODO Auto-generated catch block
      e.printStackTrace();
    }
    return new ResponseEntity<Resource>(resource, header,HttpStatus.OK);
  }else {
    rttr.addAttribute("downloadResult", "해당 파일이 존재하지 않습니다");
    return new ResponseEntity<Resource>(HttpStatus.NOT_FOUND);
  }
}
~~~   
Controller에서 Resource 타입의 객체와 Content-Disposition 을 attachment 로 설정한 header정보와 status 코드를 ResponseEntity 객체에 포함하여 MediaType을 APPLICATION_OCTET_STREAM_VALUE 타입으로 반환하여 사용자 브라우져에 다운로드 기능이 동작하도록 하였다.   

### 4. 게시물 수정 / 삭제   
  작성자로 하여금 해당 게시물의 수정(첨부파일 포함)과 삭제가 가능하도록 구현하였다. 
