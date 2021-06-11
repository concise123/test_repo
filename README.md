# test_repo

![image](https://user-images.githubusercontent.com/45585087/121700378-ce870a00-cb0a-11eb-9b85-8adfc8d3bb75.png)

0
목차
1 개발 목적
2 개발 환경
3 IDE 설치
4 jdk 설치 및 환경 변수 설정
5 서버 다운로드
6 스프링 프로젝트 생성
7 이클립스 서버 추가, build path에 Server Runtime 라이브러리 추가 
8 서버 시작
9 encoding 변경(선택 사항)
10 jdk 변경(선택 사항)
11 깃허브 연동
12 참조
13 시행착오

1
개발 목적
- 웹 개발 환경 구축
- 깃허브 사용 방법 테스트

2
개발 환경
- OS 이름: Microsoft Windows 10 Home
- 시스템 종류: x64 기반 PC
- IDE: Eclipse 2021-03
- jdk: zulu8
- 서버: tomcat9
- 주요 프레임워크: 스프링

3
IDE 설치
1. https://www.eclipse.org › downloads에서 Eclipse IDE 다운로드
2. exe파일 더블 클릭
3. Eclipse IDE for Enterprise Java and Web Developers 선택하여 설치

4
jdk 설치 및 환경 변수 설정
1. https://www.azul.com › downloads 다운로드
2. msi 실행시켜서 zulu 설치
3. 윈도우 검색창에 고급 시스템 설정 보기 검색 후 클릭하면 시스템 속성 팝업에 고급 탭이 열림
4. 환경 변수 클릭
5. [사용자이름]에 대한 사용자 변수에서 새로 만들기 클릭
6. 변수이름에 JAVA_HOME, 변수 값에 jdk 위치 입력 후 확인 버튼 클릭(변수 값 예: C:\Program Files\Zulu\zulu-8)
5. 시스템 변수 변수가 Path인 것 찾아서 더블 클릭
7. 새로 만들기 클릭 jdk bin까지 경로 적고 확인(예: C:\Program Files\Zulu\zulu-8\bin)
8. 확인 버튼 클릭
9. 확인 버튼 클릭

5
서버 다운로드
1. http://tomcat.apache.org에서 tomcat9.0.46 64-bit Windows zip 다운로드
2. 압축 풀기

6
스프링 프로젝트 생성
1. Help
2. Eclipse Marketplace
3. sts 검색
4. spring tools 4 (aka spring Tools Suite 4) 4.10.0 RELEASE intall버튼 클릭
5. Next 버튼 클릭
6. Confirm 버튼 클릭
7. I accept the terms of the license agreements 옆 라디오 버튼 선택
8. Finish버튼 클릭
9. 설치 끝나면 팝업 뜸
10. Restart Now 버튼 클릭
11. 좌측 트리에서 Create a project.. 클릭(없으면 상단 File-New-Other 순서대로 클릭)
12. spring 검색
13. spring legacy project 선택
14. Next 버튼 클릭
15. project name 정해서 입력
16. Templates에서 Spring MVC Project 선택
17. Next 버튼 클릭
18. project settings-spring mvc project에 Please specify the top-level package라고 나옴 패키지 이름 입력 후 
19. Finish 버튼 클릭

7
이클립스 서버 추가, build path에 Server Runtime 라이브러리 추가 
1. 우측 하단에서 Servers탭 클릭
2. No servers are available. Click this link to create a new server... 클릭
3. Apache 폴더 클릭
4. Tomcat v.9.0 Server 클릭 
5. Next 버튼 클릭
6. Browse 버튼 클릭
7. 아까 위에서 다운로드받은 tomcat 경로 입력 후 폴더 선택 버튼 클릭(경로 예: C:\Users\[사용자이름]\Downloads\apache-tomcat-9.0.46-windows-x64\apache-tomcat-9.0.46
8. Next 버튼 클릭 Available에 뜨는 프로젝트 클릭 후 Add 버튼 클릭(이 과정 빼고 다음 Finish 버튼 클릭했다면 Tomcat v9.0 Server at localhost 더블클릭-Modules탭 클릭-Add Web Module... 버튼 클릭-Modules에서 [프로젝트명] 클릭-OK버튼 클릭-파일 저장하면 됨)
9. Finish 버튼 클릭
10. 우측 상단(Projcet Explorer)에서 아까 생성한 프로젝트 우클릭
11. build path 클릭
12. configure build path 클릭
13. libraries 탭 클릭
14. Add Library 버튼 클릭
15. Server Runtime 클릭
16. Next 버튼 클릭
17. Apache Tomcat v9.0 클릭
18. Finish 버튼 클릭
19. Apply and Close 버튼 클릭

8
서버 시작
1. Ctrl+Alt+R
2. Servers 탭에서 Tomcat v.9.0 Server at localhost 더블 클릭
3. Modules 탭 클릭
4. Path에 설정된 것 복사
5. 웹 브라우저에 http://localhost:8080이라고 치고 아까 복사했던 내용 붙여넣기(예- http://localhost:8080/[프로젝트명])
6. 엔터
7. Hello world! 뜨면 성공

9
encoding 변경(선택 사항)
1. 프로그램 최상단 Window 클릭
2. Preferences 클릭
3. 좌측 트리에서 General 클릭
4. 좌측 트리에서 Content Types 클릭
5. 우측 트리에서 Text 클릭
6. 우측 하단 Default encoding에 UTF-8 입력
7. 옆에 Update 버튼 클릭
8. 좌측 트리에서 General 클릭
9. 좌측 트리에서 Workspace 클릭
10. Text file encoding 밑에 Other 라디오 버튼 선택
11. 그 옆 셀렉트 박스 UTF-8 선택
12. 좌측 트리에서 Web 클릭
13. 좌측 트리에서 CSS Files 클릭
14. Encoding 옆 셀렉트 박스에서 UTF-8 포함된 것 선택
15. 좌측 트리에서 HTML Files 클릭
16. Encoding 옆 셀렉트 박스에서 UTF-8 포함된 것 선택
17. 좌측 트리에서 JSP Files 클릭
18. Encoding 옆 셀렉트 박스에서 UTF-8 포함된 것 선택
19. 좌측 트리에서 Xml 클릭
20. Xml Files 클릭
21. Encoding 옆 셀렉트 박스에서 UTF-8 포함된 것 선택
22. Apply and Close 버튼 클릭
23. 우측 트리에서 home.jsp 더블클릭
24. <html> 윗 줄에 <%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%> 추가


10
jdk 변경(선택 사항)
1. 우측 상단(Projcet Explorer)에서 아까 생성한 프로젝트 우클릭
2. build path 클릭
3. configure build path 클릭
4. libraries 탭 클릭
5. Add Library 버튼 클릭
6. JRE System Library 선택
7. Next 버튼 클릭
8. Alternate JRE 옆에 Installed JREs 버튼 클릭
9. Add 버튼 클릭
10. Standard VM 선택
11. Next 버튼 클릭
12. JRE home 옆에 Directory 버튼 클릭
13. 폴더 선택(예-C:\Program Files\Zulu\zulu-8)
14. Finish 버튼 클릭
16. Installed JREs 표에서 새로 추가한 JRE 체크
17. 기존에 있던 JRE 클릭
18. Remove 버튼 클릭 
19. Apply and Close 버튼 클릭
20. Workspace default JRE (zulu-8) 라디오 버튼 클릭
21. 셀렉트 박스에서 JAVA-SE1.8(zulu-8) 선택
22. JRE System Library[zulu-8] 아닌 것 클릭하여 Remove 버튼 누름 
23. Finish 버튼 클릭
24. Apply and Close 버튼 클릭
25. 좌측 트리에서 pom.xml 파일 클릭(Ctrl+Shift+R 동시에 눌러서 팝업 뜨면 검색해도 됨)
26. https://mvnrepository.com/ 사이트에서 maven plugin 검색
27. 검색 결과 목록에서 Maven Plugin API 클릭
28. 원하는 버전 클릭(최신이면서 다른 사람이 많이 사용한 버전 사용하면 좋을 듯)
29. <dependency></dependency> 포함한 내용 클릭하면 복사됨
30. pom.xml에 <dependencies></dependencies> 사이에 붙여넣기
31. pom.xml 저장
32. 프로그램 최상단 Window 클릭
33. Preferences 클릭
34. 좌측 트리에서 Server 클릭
35. 좌측 트리에서 Runtime Environments 클릭
36. Apache Tomcat v9.0 클릭
37. Edit 버튼 클릭
38. JRE 셀렉트 박스 zulu-8로 변경
39. Finish 버튼 클릭
40. Apply and Close 버튼 클릭
41. 우측 상단(Projcet Explorer)에서 아까 생성한 프로젝트 우클릭
42. build path 클릭
43. configure build path 클릭
44. Maven 클릭
45. Project Facets 클릭
46. 체크 박스 옆 Java 옆 버전 1.6에서 1.8로 변경
47. 우측 Runtimes 탭 클릭
48. Apache Tomcat v9.0 체크
49. Apply and Close 버튼 클릭
50. 서버 재시작하여 웹 화면 에러 없이 뜨면 성공

11
깃허브 연동
1. 깃허브 사이트 접속
2. 깃허브 계정 생성
3. 깃허브 로그인
4. 깃허브 사이트 우측 상단 + 클릭
5. New repository 클릭
6. Repository name 입력
7. Create repository 버튼 클릭
8. 깃 설치
9. 명령 프롬프트 창에서 git --version 입력 후 엔터
10. 깃 버전 나오면 깃 설치 성공
11. 깃허브 사이트에서 생성한 repository로 감(로그인 상태에서 좌측 상단 깃허브 아이콘 누르면 페이지 이동-좌측에 repository 목록 뜸-생성한 repository 클릭)
12. Code 버튼 클릭
13. URL 클릭하면 복사됨
14. 우측 상단에 돋보기 오른쪽 아이콘 클릭
15. Git 클릭
16. Open 버튼 클릭
17. Clone a Git repository 클릭
18. URI에 복사한 내용 붙여넣기
19. 기타 내용 작성
20. Next 버튼 클릭
21. Next 버튼 클릭
22. Finish 버튼 클릭
23. 우측 상단에 돋보기 오른쪽 아이콘 클릭
24. Java EE (default) 클릭
25. Open 버튼 클릭
26. 생성한 프로젝트 우클릭
27.team 클릭
28. share project 클릭
29. repository 셀렉트 박스 선택
30. finish 클릭
31. team 클릭
32. commit 클릭
33. unstaged changes 옆 ++버튼 클릭
34. Commit Message 작성
35. Commit and push 버튼 클릭 

12
참조
스프링 프로젝트 생성 - https://all-record.tistory.com/156
스프링 프로젝트 생성 - https://addio3305.tistory.com/36
encoding 변경 - https://all-record.tistory.com/153
encoding 변경 - https://javaengine.tistory.com/entry/JSP-UTF-8-%ED%95%9C%EA%B8%80%EA%B9%A8%EC%A7%90-%EC%B2%98%EB%A6%AC%EB%B0%A9%EB%B2%95
이클립스 서버 추가, build path에 Server Runtime 라이브러리 추가- https://hongeui.tistory.com/13
jdk 변경 - https://kim-hoya.tistory.com/41
jdk 변경- https://sbell92.tistory.com/38
깃허브 연동 - https://m.blog.naver.com/rlqud1125/221658862879

13
시행착오
나중에 작성 예정
