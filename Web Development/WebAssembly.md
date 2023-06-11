```toc
```

## 웹 어셈블리란?
---
[(1) 초보 개발자를 위한 웹 신기술 WebAssembly 설명 - YouTube](https://www.youtube.com/watch?v=VJag_H2Cosc)

## 웹 어셈블리 시작
---
C/C++ 코드를 웹어셈블리 바이트 코드로 컴파일하기 위해서는 **엠스크립튼 툴킷**이 필요합니다.

엠스크립튼 툴킷 설치
[다운로드 및 설치 — Emscripten 3.1.31-git (dev) 문서](https://emscripten.org/docs/getting_started/downloads.html)

```git
git clone https://github.com/emscripten-core/emsdk.git
cd emsdk
```

```bash
# Download and install the latest SDK tools.
./emsdk install latest   or   emsdk install latest (windows)

# Set up the compiler configuration to point to the "latest" SDK.
./emsdk activate latest  or   emsdk activate latest (windows)

# Activate PATH and other environment variables in the current terminal
source ./emsdk_env.sh    or   emsdk_env.bat (windows)

```

 ### 컴파일
```
emcc hello.c -o WASM=1 hello.html   // html, js, wasm
emcc hello.c -o WASM=1 hello.js   // js, wasm

```

코드를 실행하면 소스 폴더에 3개의 파일이 생길 것입니다.

-   바이너리 wasm 모듈 코드 (`hello.wasm`)
-   native c 함수와 Javascript/wasm을 번역해주는 glue코드를 포함한 자바스크립트 파일 (`hello.js`)
-   Wasm 코드를 로드, 컴파일 및 인스턴스화하고 브라우저에 출력을 표시하는 HTML 파일 (`hello.html`)


## WASM 모듈만 사용하기
---
```bash
emcc side_module.c -s SIDE_MODULE=2 -O1 -s EXPORTED_FUNCTIONS=['_Increment'] -o side_module.wasm
```




참고
[웹어셈블리의 컨셉 - 웹어셈블리 | MDN (mozilla.org)](https://developer.mozilla.org/ko/docs/WebAssembly/Concepts)

