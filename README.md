# Wolf
우리동네 프로선수들/울프
test

개발 내용 로컬서버가 아닌 외부서버에 배포 방법

사전 준비
root-context.xml > mysql 설정 확인 > id, pw 확인
데이터베이스 백업 > 서버에 복구

일반적인 경우
1. 프로젝트 war파일 생성
- Eclipse에서 프로젝트 우클릭 -> Export - Web - WAR file 선택 -> Next버튼 클릭
- Destination에 war파일 생성될 위치 지정하고, Finish버튼 클릭

2. Tomcat 폴더/webapps 폴더에 생성된 war파일 이동

3. Tomcat 기동
- Linux 서버일 경우는 Tomcat 폴더/bin/startup.sh를 실행
- Window 서버일 경우는 Tomcat 폴더/bin/startup.bat를 실행

4. http://localhost:8080/war파일명 으로 접속해서 테스트

참고 : https://its-easy.tistory.com/4
