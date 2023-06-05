
구 버전(Windows XP 이전)의 윈도우에는 로컬 컴퓨터의 파일, 디렉터리, 서비스, 기타 리소스에 대한 완전한 통제권을 갖는 로컬 “Administrator” 계정이 기본으로 만들어졌었다.

윈도우 10부터는 윈도우 설치 시 “Administrator”가 만들어지지 않고, 관리자 그룹에 속한 다른 이름의 계정을 생성하게 되어 있다.

아래에서 설명하는 방법은 거의 쓸 일이 없다. 컴퓨터를 사서 쓰다가 버릴 때까지 한 번도 쓸 일이 없을 것이다. 꼭 필요한 작업이라는 확신이 없다면 하지 않는 것이 좋다.


### Administrator 계정 활성화
---

1.  Windows + R를 누르고 `cmd`를 입력한 뒤 Ctrl + Shift + Enter를 눌러 관리자 권한으로 명령 프롬프트를 연다.
2.  `net user Administrator /active:yes` 명령을 입력해 Administrator 계정을 활성화한다.

이제 Administrator로 로그인할 수 있다.


### Administrator 계정 비활성화
---

Administrator 계정에서 로그아웃하고 (관리자 권한을 가진) 다른 사용자 계정으로 로그인한 상태로 다음을 수행한다.

1.  Windows + R를 누르고 `cmd`를 입력한 뒤 Ctrl + Shift + Enter를 눌러 관리자 권한으로 명령 프롬프트를 연다.
2.  `net user Administrator /active:no` 명령을 입력해 Administrator 계정을 비활성화한다.

## 참고
---
-   [Local Accounts | Microsoft Learn](https://learn.microsoft.com/en-us/windows/security/identity-protection/access-control/local-accounts#sec-administrator)
-  [How to Change User Folder Name in Windows 10 – 2 Ways [MiniTool News]](https://www.minitool.com/news/change-user-folder-name-windows-10.html)