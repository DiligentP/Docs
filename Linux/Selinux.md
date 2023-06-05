#Linux 

```shell
# Selinux 비활성화
vi /etc/sysconfig/selinux
또는 
vi /etc/selinux/config

...
enforcing = disabled
...


# SELinux 활성화 여부 확인
getenforce

# SELinux의 자세한 상태
sestatus

# 재부팅 하지 않고 임시로 SELinux 변경
setenforce 0   # SELinux 를 임시 permissive 로 변경합니다.
setenforce 1   # SELinux 를 임시 enforcing 로 변경합니다.
```

## 설명

SELinux(보안 강화 리눅스, Security-Enhanced Linux)는 근래의 리눅스에 도입된 보안 정책을 강화시켜 접근 권한에 대해 쉽게 제어하지 못하도록 관리하는 보안 모듈입니다.

SELinux의 보안 정책으로 인해 특정 서비스의 구동이 원할하지 않거나 권한상의 문제가 발생하여 에러를 발생시키는 경우가 있습니다.

대부분의 경우 로그에 SELinux의 문제임을 나타내는 표시조차 없어 SELinux가 켜져있을 경우 대부분의 사람들은 이를 강제로 끈 후에 시도했을 때 비로소 해결되는 케이스가 종종 있습니다.

( SELinux의 로그파일은 /var/log/audit/audit.log 파일에 따로 저장됩니다.)

SELinux는 가급적이면 끄지 않고 활성화 하는 것이 좋습니다.

SELinux의 특정 서비스에 대한 권한을 필요한 만큼만 허용하고 이외에는 모두 차단하는 정책을 가지고 있습니다. 따라서 특정 서비스의 취약성을 이용한 공격이 발생해도 관계된 프로세스나 파일 시스템에 쉽게 접근하지 못하도록 사전에 차단합니다.

이러한 정책으로 외부 침입자의 공격이 발생해도 추가적인 데이터 손싱이나 노출건에 대한 큰 피해를 막을 수 있다는 장점이 있습니다

## SELinux의 동작모드

Enforcing 
- (기본값) SELinux가 켜져 있고 정책에 위반된 모든 작업을 차단함.

Permissive
- SELinux가 켜져있지만 정책에 위반된 사항에 대해 경고만 하도록 함 (audit 로그에 기록만 하는 상태)

Disable
- SELinux가 완전히 꺼진 상태
- 
기본 값은 Enforcing 이며 임시로 비활성화하게되면 Permissive 상태가 됩니다. SELinux를 완전히 끄게(Disable) 되면 시스템 재부팅 작업이 필요하며, 이후 켜게 될때도 마찬가지 입니다.


## Docker와 Selinux 영향

- Selinux 기능이 활성화 되어 있는경우 `docker swarm` 을 구현할 때 `docker network`가 생성되지 않는 경우가 있어 반드시 꺼줘야한다.

## 기타

Ubuntu 배포판은 기본적으로 SELinux(Security-Enhanced Linux)를 설치하지 않습니다. 대신, AppArmor이라는 다른 Mandatory Access Control(MAC) 시스템을 사용합니다.

