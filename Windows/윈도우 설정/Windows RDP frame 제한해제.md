
1. `Win+R`
2. `regedit` -> `Enter`
3. `컴퓨터\HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Terminal Server\WinStations` 경로 이동
4. `마우스 우클릭` -> `새로만들기(N)` -> `DWORD(32비트)값(D)`
5. 레지스트리 이름 : `DWMFRAMEINTERVAL` 로 변경
6. 더블클릭 -> `값 16진수` -> `f`  입력 후 `확인`


RDP Service Restart
```cmd
net stop /y termservice
net start /y termservice
echo done...

```
ex)
```cmd
C:\Users\zetawiki>net stop /y termservice
다음 서비스는 Remote Desktop Services 서비스에 영향을 받습니다.
Remote Desktop Services 서비스를 멈추면 다음 서비스도 멈추어 집니다.

   Remote Desktop Services UserMode Port Redirector

Remote Desktop Services UserMode Port Redirector 서비스를 멈춥니다...
Remote Desktop Services UserMode Port Redirector 서비스를 잘 멈추었습니다.

Remote Desktop Services 서비스를 멈춥니다..
Remote Desktop Services 서비스를 잘 멈추었습니다.


C:\Users\zetawiki>net start /y termservice
Remote Desktop Services 서비스를 시작합니다..
Remote Desktop Services 서비스가 잘 시작되었습니다.


C:\Users\zetawiki>echo done..
done..

```

<참고>
1. [[Windows] RDP - Remote Desktop : frame 제한 풀기 60FPS (tistory.com)](https://whitekeyboard.tistory.com/847)
2. [윈도우 원격데스크톱 서비스 재시작 - 제타위키 (zetawiki.com)](https://zetawiki.com/wiki/%EC%9C%88%EB%8F%84%EC%9A%B0_%EC%9B%90%EA%B2%A9%EB%8D%B0%EC%8A%A4%ED%81%AC%ED%86%B1_%EC%84%9C%EB%B9%84%EC%8A%A4_%EC%9E%AC%EC%8B%9C%EC%9E%91)
3. [윈도우 원격데스크톱 서비스 확인 - 제타위키 (zetawiki.com)](https://zetawiki.com/wiki/%EC%9C%88%EB%8F%84%EC%9A%B0_%EC%9B%90%EA%B2%A9%EB%8D%B0%EC%8A%A4%ED%81%AC%ED%86%B1_%EC%84%9C%EB%B9%84%EC%8A%A4_%ED%99%95%EC%9D%B8)
