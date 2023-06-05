#Windows

# Diskpart 개념과 사용 방법 안내
---
Windows OS에서 디스크 파티션을 조작할려면 `[컴퓨터 관리]`에 있는 `[저장소]` → `[디스크 관리]`를 사용하는 것이 일반적일 것입니다. 하지만 diskpart.exe라는 명령어를 이용해서도 똑같은 작업을 할 수 있습니다.

Dispart는 주로 컴퓨터 포멧 할때,  파티션 설정에서 하드드라이브를 초기화 하기 위해 사용합니다.

Diskpart 를 사용하면 빠르게 MBR 방식의 파티션 방식을 GPT 방식으로 변경 할 수 있습니다.

Diskpart는 Windows 2000 이상의 Microsoft 운영 체제에 포함 된 명령 줄 디스크 파티셔닝 유틸리티로 이전 fdisk를 대체합니다. 이 명령은 ReactOS에서도 사용 가능합니다.


## DISKPART 기본 명령
---
```powershell
# Diskpart 진입
diskpart

# 디스크 목록 보기
list disk

# 디스크 선택
select disk

# 선택된 디스크 상세 정보확인
detail disk

# 선택된 파티션 정보 확인 (list partition와 동일)
list part

# 선택된 파티선 정보를 전부 초기화
clean
```


## 참고
[윈도 10 DISKPART 기본 명령 – 디스크, 파티션 관리 – 씨실과 날실 – IT (weftnwarp.kr)](https://weftnwarp.kr/site-it/archives/%ec%9c%88%eb%8f%84-10-diskpart-%ea%b8%b0%eb%b3%b8-%eb%aa%85%eb%a0%b9-%eb%94%94%ec%8a%a4%ed%81%ac-%ed%8c%8c%ed%8b%b0%ec%85%98-%ea%b4%80%eb%a6%ac/)
[로바이 :: 디스크 파티션(diskpart) 명령어 사용법 (tistory.com)](https://roby.tistory.com/279)
[diskpart | Microsoft Learn](https://learn.microsoft.com/ko-kr/windows-server/administration/windows-commands/diskpart)
[Diskpart 의미와 사용 방법을 알려주세요. [삼성전자서비스] (samsungsvc.co.kr)](https://www.samsungsvc.co.kr/solution/24129)
[윈도우 diskpart 명령어 사용법 (tistory.com)](https://zkim0115.tistory.com/1128)
[윈도 10 DISKPART 기본 명령 - 디스크, 파티션 관리](https://wnw1005.tistory.com/437)
