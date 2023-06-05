```toc
```

## WSA 다운로드 및 설치

[**wsa 1.7.32815.0 + adb 압축파일**](https://drive.google.com/file/d/1h2stOcVeGG15oULfMNh7gWn4TjFRpp-M/view?usp=sharing)

위의 파일 다운로드 후에, 설치된 폴더( `~\wsa\wsa` ) 안에 들어가서,

```powershell
Add-AppxPackage -Register .\AppxManifest.xml
```

1. Developer mode 를 On으로 변경합니다.  
2. IP address 를 Refrash 합니다.
3. Developer mode의 Manage developer settings을 클릭합니다.
4. 플레이 스토어가 생깁니다.

### 권한 변경
Play 스토어에 로그인 하기위해서는 모드변경이 필요합니다.

```powershell
cd adb 
./adb connect 127.0.0.1:58526 
./adb shell 
su 
setenforce 0
```

끝.

## APK 수동설치 방법
```powershell
cd adb 
./adb connect 127.0.0.1:58526 
./adb install tachiyomi.apk
```


참고
[윈도우11 구글 플레이 스토어 설치 및 apk 설치 - 마니의 블로그 (hjm79.top)](https://hjm79.top/win11-playstore-apk/)


