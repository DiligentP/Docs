
**설명**
su(switch user = substitute user)의 약자, 유저를 변경해주는 리눅스 명령어.


**명령어**
```
$su [사용자ID]
```
- su 뒤에 변경할 사용자 ID를 입력하지 않는다면, su root 와 동일하게 동작합니다.

**옵션**
-c : 쉘을 종료하지 않고, 주어진 명령만을 수행합니다.
-s : 지정된 쉘로 로그인합니다.
-,-ㅣ : 지정한 사용자의 환경변수를 적용하여 로그인합니다.


**기타**

su & su -
su 와 su - 는 환경 변수를 가지고 오느냐 아니냐의 차이를 가지고 있습니다.

'su'는 root 권한에 포함되어 있는 환경변수는 하나도 가져오지 않습니다. 즉 root 권한의 PATH나 기타 여러가지의 환경변수가 포함되지 않고 단지 로그인 계정만 바꾼다는 것입니다. 'su'로 로그인시 일반 사용자가 위치해 있는 디렉토리 그대로 권한만 바뀌는 것을 확인 할 수 있습니다

출처: [https://kwangsics.tistory.com/entry/su와-su-의-차이](https://kwangsics.tistory.com/entry/su%EC%99%80-su-%EC%9D%98-%EC%B0%A8%EC%9D%B4) [린기린기린의 개인 기록 공간:티스토리]

'su -'의 경우 'su -root'와 같은 의미로 환경변수까지 다 가지고 root의 권한을 갖는 것으로 'su -'로 로그인시 /root디렉토리로 이동해 권한이 바뀌는 것을 확인 할 수 있습니다.

출처: [https://kwangsics.tistory.com/entry/su와-su-의-차이](https://kwangsics.tistory.com/entry/su%EC%99%80-su-%EC%9D%98-%EC%B0%A8%EC%9D%B4) [린기린기린의 개인 기록 공간:티스토리]

su - 는 su -l, 또는 su --login과 동일한 명령어입니다.

-의 유무는 환경변수와 워킹 디렉토리에 영향을 줍니다.

![](Pasted%20image%2020230707232743.png)

Reference
[https://velog.io/@byeol4001/root%EC%99%80-admin-user-%EA%B7%B8%EB%A6%AC%EA%B3%A0-sudo%EC%99%80-su-su-%EC%9D%98-%EC%B0%A8%EC%9D%B4](https://velog.io/@byeol4001/root%EC%99%80-admin-user-%EA%B7%B8%EB%A6%AC%EA%B3%A0-sudo%EC%99%80-su-su-%EC%9D%98-%EC%B0%A8%EC%9D%B4)