
.bash_profile, .bashrc, .bash_login, .profile 및 .bash_logout의 실행 순서

-   /etc/profile
-   ~/.bash_profile
-   ~/.bashrc
-   ~/.bash_login
-   ~/.profile
-   ~/.bash_logout


Shell 스크립트 실행 순서

1.  Bash 시작 스크립트

2.  로그인 쉘
	 firest user log in runlevel #3
	/etc/profile
	~/.profile

3.  비 로그인 쉘
	virtual terminal run /etc/bash.bashrc  ~/.bashrc

4.  Bash 로그아웃 스크립트
	~/.bash_logout


profile 실행순서

1.  /ect/profile.d/test.sh

2.  /etc/profile

3.  /etc/bashrc

4.  ~/.bashrc

5.  ~/.bash_profile


![[Pasted image 20230511104258.png]]


profile 적용
```
source ~/.profile
. ~/.profile
```



참고
https://zetawiki.com/wiki/Profile_bashrc_bash_profile_%EC%8B%A4%ED%96%89_%EC%88%9C%EC%84%9C
https://www.thegeekstuff.com/2008/10/execution-sequence-for-bash_profile-bashrc-bash_login-profile-and-bash_logout/
