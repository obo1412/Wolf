# Wolf
우리동네 프로선수들/울프
test

디렉토리 구조
Wolf
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
    │   │   └── mappers
    │   └── webapp (외부에서 접근 가능한 폴더)
    │       ├── WEB-INF (외부에서 직접 접근 불가능, 컴파일된 클래스, 스프링 환경 설정파일, DB 연결정보 등이 존재하기 때문)
    │       │   ├── lib
    │       │   ├── spring (스프링 환경 설정 파일)
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
    └── test (테스트 용)
        ├── java
        │   └── com
        │       └── spring
        │           └── wolf
        └── resources
