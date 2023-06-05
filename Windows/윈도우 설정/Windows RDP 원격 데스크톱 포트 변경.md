원격 데스크톱은 기본적으로 3389 포트를 사용합니다.

이를 변경하는 방법은 다음과 같습니다.

1.  레지스트리 편집
2.  방화벽에서 특정 포트 오픈
3.  원격 데스크톱 서비스 재시작

레지스트리 편집

레지스트리 편집기를 열고 아래 경로로 가서

HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Terminal Server\WinStations\RDP-Tcp

PortNumber를 더블클릭 , 10진수에 체크하고 3389 대신 변경할 포트번호를 넣어줍니다.



## 방화벽에서 특정 포트 오픈

방화벽에서 특정 포트를 예외로 추가하는 방법은 다음과 같습니다.

Win + R => wf.msc 실행 => 인바운드 규칙 => 새 규칙



## 원격 데스크톱 서비스 재시작

services.msc 실행 => Remote Desktop Services => 다시 시작