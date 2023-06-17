
## Node.js 설치 확인

리엑트를 시작하기위해서는 Node.js 환경이 요구됩니다.

아래 버전이 맞지 않거나 명령어가 동작하지 않는 경우, https://nodejs.org/ko/download 사이트에서 Node.js 설치 파일을 다운로드 받아서 설치해 주세요.

  
```
C:\javascript> npm --version

9.5.1
```

```
C:\javascript> node --version

v18.16.0
```


npm의 버전이 낮다면, `nvm` (Node.js 버전 관리 도구)을 통해  버전을 변경하여 관리 할 수 있습니다.
[[NVM]]


## create-react-app

리액트 앱 어플리케이션을 개발하는데 필요한 모든 설정이 되어 있는 상태의 프로젝트를 생성해 주는 도구입니다.   ⇒ 부트스트랩 도구

이를 줄여서 CRA 라고 많이들 부릅니다.

설치

```
C:\Users\myanj> npm install -g create-react-app
```


프로젝트 생성

```shell
C:\Users\myanj> cd /javascript

C:\javascript> npx create-react-app my-app
	:
Success! Created my-app at C:\javascript\my-app

Inside that directory, you can run several commands:

  

  npm start

    Starts the development server.

  

  npm run build

    Bundles the app into static files for production.

  

  npm test

    Starts the test runner.

  

  npm run eject

    Removes this tool and copies build dependencies, configuration files

    and scripts into the app directory. If you do this, you can’t go back!

  

We suggest that you begin by typing:

  

  cd my-app

  npm start

  

Happy hacking!
```

```
C:\javascript> cd my-app

C:\javascript\my-app> npm start         ⇐ 개발 서버 실행
```


CRA 프로젝트를 만들 때 주의 사항

- 대문자 사용 불가
- 관리자 권한이 필요함.
