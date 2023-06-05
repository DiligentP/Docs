#Windows #cme
 1. 윈도우 버전 설정
	`slmgr /ipk [제품키]`

```
제품키

[윈도우 버전]                 [라이센스 제품키]
Windows 10 Pro                W269N-WFGWX-YVC9B-4J6C9-T83GX
Windows 10 Pro N              MH37W-N47XK-V7XM9-C7227-GCQG9
Windows 10 Home               TX9XD-98N7V-6WMQ6-BX7FG-H8Q99
Windows 10 Home N             3KHY7-WNT83-DGQKR-F7HPR-844BM   
Windows 10 Enterprise         NPPR9-FWDCX-D2C8J-H872K-2YT43   
Windows 10 Enterprise KN      DPH2V-TTNVB-4X9Q3-TJR4H-KHJW4  
Windows 10 Education          NW6C2-QMPVW-D7KKK-3GKT6-VCFB2
Windows 10 Education KN       2WH4N-8QGBV-H22JP-CT43Q-MDWWJ

windows server 2022           VDYBN-27WPP-V4HQT-9VMD4-VMK7H

윈도우서버 평가판에서 스탠다드로 전환 및 키 인증
DISM /Online /Set-Edition:ServerStandard /ProductKey:[Key] /AcceptEula
```

2. 라이센스 관리 KMS 관리 서버 설정 
`slmgr /skms windows.kms.app`

```
[라이센스 kms 서버 목록]

kms8.msguides.com, kms9.msguides.com, kms.srv.crsoo.com

windows.kms.app

kms.ddns.net, kms.digiboy.ir, kms.library.hk
```

3. 정품 인증
`slmgr /ato`


4. 인증만료일 조회
`slmgr -xpr`


5. 윈도우 언크래커 
KMS 를 통해 인증된 윈도우를 인증 전 상태로 되돌립니다.
[https://github.com/ChocolateAdventurouz/Windows10Uncracker](https://github.com/ChocolateAdventurouz/Windows10Uncracker)