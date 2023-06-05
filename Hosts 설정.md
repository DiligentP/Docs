
```
vi /etc/hosts
```

`Ctrl + End`  를 눌러 맨 끝으로 이동합니다.

```
127.0.0.1   localhost localhost.localdomain localhost4 localhost4.localdomain4

::1         localhost localhost.localdomain localhost6 localhost6.localdomain6

192.168.1.105   nw19_pjh_srv

```

브라우저나 터미널에서 도메인 이름을 치면 원래 네임서버에서 아이피를 얻어오게 됩니다.

요즘 환경에서 네임서버를 사용할 수 '없는' 상황은 드물기 때문에 hosts 파일의 존재감이 미미합니다.

하지만, 인터넷 역사의 극초반부에는 네임서버 같은게 있을 리가 없었죠.

네임서버는 1984년에 처음 만들어졌으니, 그 전에는 아이피 주소로 접근하거나 각자 매핑 테이블을 관리했죠.

매핑테이블은 txt 파일 형식으로 공유를 했는데, 그 파일 이름이 hosts.txt 였습니다.이제는 네임서버가 그 모든 걸 관장하니 hosts 파일을 유지보수 + 공유할 이유가 없어졌습니다.

하지만, 호스트 컴퓨터가 네임서버에 접근할 수 없는 상황에서,도메인 이름(호스트 이름)으로 접근이 필요한 경우도 있겠지요?

아니면 네임서버에 등록되지 않은 도메인 네임(호스트 이름)이 있을 수도 있겠네요.그럴 때는 /etc/hosts 파일을 사용합다.

/etc/hosts에서 매핑된 도메인 이름과 IP 주소를 사용합니다.
```
$ cat /etc/hosts

127.0.0.1    
localhost    127.0.1.1
```

storycompiler매핑 테이블에 특별한 문법은 없고,IP주소(빈칸)도메인이름(빈칸)alias위처럼만 써주면 됩니다.

별칭으로 사용하는 alias는 생략해도 됩니다.

hosts 파일을 수정한 뒤에는 그 내용을 다시 메모리에 올려놓아야하는데요,network 데몬을 재실행하면 됩니다.

```
$ sudo /etc/init.d/networking restart[ ok ] Restarting networking (via systemctl): networking.service.
```
