#Rocky #RedHat #RHEL #Repository 



네이버 , 카카오 둘중 택
```sh
vi /etc/yum.repos.d/kakao_rocky.repo

[base]
name=Rocky - Base
baseurl=http://ftp.daum.net/linux/rocky/$releasever/BaseOS/$basearch/os
gpgcheck=1
enabled=1
gpgkey=http://ftp.daum.net/linux/rocky/RPM-GPG-KEY-Rocky-8

[appstream]
name=Rocky - AppStream
baseurl=http://ftp.daum.net/linux/rocky/$releasever/AppStream/$basearch/os
gpgcheck=1
enabled=1
gpgkey=http://ftp.daum.net/linux/rocky/RPM-GPG-KEY-Rocky-8

[extras]
name=Rocky - Extras
baseurl=http://ftp.daum.net/linux/rocky/$releasever/extras/$basearch/os
gpgcheck=1
enabled=1
gpgkey=http://ftp.daum.net/linux/rocky/RPM-GPG-KEY-Rocky-8
```

```sh
vi /etc/yum.repos.d/naver_rocky.repo

[base]
name=Rocky - Base
baseurl=http://mirror.navercorp.com/rocky/$releasever/BaseOS/$basearch/os
gpgcheck=1
enabled=1
gpgkey=http://mirror.navercorp.com/rocky/RPM-GPG-KEY-Rocky-8

[appstream]
name=Rocky - AppStream
baseurl=http://mirror.navercorp.com/rocky/$releasever/AppStream/$basearch/os
gpgcheck=1
enabled=1
gpgkey=http://mirror.navercorp.com/rocky/RPM-GPG-KEY-Rocky-8

[extras]
name=Rocky - Extras
baseurl=http://mirror.navercorp.com/rocky/$releasever/extras/$basearch/os
gpgcheck=1
enabled=1
gpgkey=http://mirror.navercorp.com/rocky/RPM-GPG-KEY-Rocky-8
```

```
yum clean all
yum repolist

yum -y update
```


저장소가 정상적으로 바뀌었는지 정보를 출력해 보고 확인해 봅니다.

```bash
$ sudo yum repolist -v 

Loaded plugins: builddep, changelog, config-manager, copr, ... 
YUM version: 4.4.2
cachedir: /var/cache/dnf 
Last metadata expiration check: 1 day, 1:14:00 ago on Thu 24 Jun 2021 01:28:06 AM EDT.
Repo-id            : baseos
Repo-name          : Rocky Linux 8 - BaseOS
Repo-status        : enabled
Repo-revision      : 8.4
Repo-distro-tags      : [cpe:/o:rocky:rocky:8]:  ,  , 8, L, R, c, i, k, n, o, u, x, y
Repo-updated       : Sun 20 Jun 2021 12:08:06 PM EDT
Repo-pkgs          : 1,709
Repo-available-pkgs: 1,707
Repo-size          : 1.1 G
Repo-baseurl       : http://mirror.navercorp.com/rocky/8/BaseOS/x86_64/os
Repo-expire        : 172,800 second(s) (last: Thu 24 Jun 2021 01:28:05 AM EDT)
Repo-filename      : /etc/yum.repos.d/Rocky-BaseOS.repo
Total packages: 1,709
```
