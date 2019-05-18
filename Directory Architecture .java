/*
 Wolf 프로젝트 폴더 구조
 Wolf
 ├── pom.xml (maven 에서 참조하는 설정파일, maven 라이브러리 자동으로 찾아주는 역할)
 └── src (web 디렉토리)
 ├── main
 │   ├── java (java code, 컨트롤러, 모델, 서비스)
 │   │   └── com
 │   │       └── spring
 │   │           ├── helper
 │   │           └── wolf
 │   │               ├── controller
 │   │               │   ├── bbs
 │   │               │   ├── content
 │   │               │   └── member
 │   │               ├── model
 │   │               └── service
 │   │                   └── impl
 │   ├── resources (java code에서 사용할 리소스, mapper, sql)
 │   │   └── mappers (DB 명령어 입력된 xml)
 │   └── webapp (외부에서 접근 가능한 폴더)
 │       ├── WEB-INF (외부에서 직접 접근 불가능, 컴파일된 클래스, 스프링 환경 설정파일, DB 연결정보 등이 존재하기 때문)
 │       │   ├── lib
 │       │   ├── spring (스프링 환경 설정 파일, root-context.xml, servlet-context.xml)
 │       │   │   └── appServlet
 │       │   └── views (html, jsp 파일)
 │       │       ├── bbs
 │       │       ├── content
 │       │       ├── inc
 │       │       ├── member
 │       │       └── test
 │       └── assets  (구글 여러 사이트 참고 시 resources라는 이름을 더 많이 씀, js, css, image 관리)
 │           ├── css
 │           ├── img
 │           ├── js
 │           └── plugins
 │               ├── ajax
 │               ├── ajax-form
 │               ├── handlebars
 │               └── multi-column
*/

/*
 java 폴더 자세히
 
 java
 └── com
    └── spring
        ├── helper (각종 계산이나 웹 정보 접근, 컨트롤러에서 필요할 때 호출)
        │   ├── FileInfo.java
        │   ├── MailHelper.java
        │   ├── PageHelper.java
        │   ├── RegexHelper.java
        │   ├── UploadHelper.java
        │   ├── Util.java
        │   └── WebHelper.java
        └── wolf
            ├── controller
            │   ├── Download.java
            │   ├── Index.java
            │   ├── bbs (게시판 글 및 댓글 읽기/쓰기 등 할 때 호출)
            │   │   ├── BBSCommon.java
            │   │   ├── CommentDelete.java
            │   │   ├── CommentDeleteOk.java
            │   │   ├── CommentEdit.java
            │   │   ├── ......
            │   ├── content
            │   │   └── Introduce.java
            │   ├── member (회원 가입, 로그인 로그아웃 등 할 때 호출)
            │   │   ├── Edit.java
            │   │   ├── EditOk.java
            │   │   ├── FindPw.java
            │   │   ├── FindPwOk.java
            │   │   ├── .....
            │   └── test.java
            ├── model (DB Table 구조와 대응되는 class)
            │   ├── BbsComment.java
            │   ├── BbsDocument.java
            │   ├── BbsFile.java
            │   └── Member.java
            └── service (xxxServie.java DB 접근 위한 interface)
                ├── BbsCommentService.java
                ├── BbsDocumentService.java
                ├── BbsFileService.java
                ├── MemberService.java
                └── impl (Service interface를 구현한 class)
                    ├── BbsCommentServiceImpl.java
                    ├── BbsDocumentServiceImpl.java
                    ├── BbsFileServiceImpl.java
                    └── MemberServiceImpl.java

*/
