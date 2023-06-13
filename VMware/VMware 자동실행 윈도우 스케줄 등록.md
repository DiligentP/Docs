Vmware 에는 클라이언트를 GUI 없이 백그라운드에서 자동실행 시킬 수 있는 기능이 있습니다.

아래 과정을 작업 스케줄러에 등록하면 윈도우가 부팅될 때 자동으로 원하는 가상머신 클라이언트를 실행 시켜 줍니다.

1.  Vmware 설치폴더 (vmrun.exe)의 경로 확인
2.  스케줄러에 등록시킬 vmx 가상머신 파일 경로 확인
3.  윈도우 관리도구 -> 작업스케줄러 실행
4.  새 작업 만들기
5.  일반탭 | 이름:  원하는 이름 입력   예) Vmware win11
6.  일반탭 | 보안옵션 - 사용자가 로그온할 때만 실행 + 가장 높은 수준의 권한으로 실행 체크
7.  동작탭 - 새로 만들기 클릭
8.  동작속성 | 동작 - 프로그램 시작
9.  동작속성 | 설정 | 프로그램/스크립트:  `"C:\Program Files (x86)\VMware\VMware Workstation\vmrun.exe"`  

-> vmrun.exe 파일의 전체 경로

1.  동작속성 | 설정 | 인수 추가: `-T ws start "C:\vmware\Win10\Win10.vmx" nogui`

-> 생성 된 가상머신의 vmx 전체 경로

1.  확인 > 확인

이렇게 하면 이후에 윈도우 부팅 후 사용자가 로그인 하면 Win10 가상머신이 GUI없이 백그라운드에서 자동 실행 됩니다.

아래는 자세한 과정입니다

1. 윈도우 관리도구 에서 작업 스케줄러 실행 또는 win + R 누른 후, taskschd.msc 입력

![[Pasted image 20230414121506.png]]

2. 이름, 및 보안옵션 설정

![[Pasted image 20230414121522.png]]

3. 트리거 탭 -> 새로만들기

- 작업 시작 : 로그온할 때

![[Pasted image 20230414121532.png]]


4. 동작 탭 -> 새로만들기 

 - 동작 : 프로그램 시작

 - 프로그램/스크립트 :  "C:\Program Files (x86)\VMware\VMware Workstation\vmrun.exe"

 - 인추 추가 : -T ws start "D:\Red Hat Enterprise Linux 7 64-bit\Red Hat Enterprise Linux 7 64-bit.vmx" nogui

![[Pasted image 20230414121600.png]]

끝