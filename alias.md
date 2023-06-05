
설명
	통해서 일일이 입력하기 번거로운, 길이가 긴 명령어를 간단한 이름으로 바꿔서 등록하여 업무 효율을 높일 수 있습니다.


alias 별칭 영구등록
	 등록된 alias(별칭)들은 시스템을 재부팅하고나면 다시 초기화되어 매번 재설정 해줘야하는 불편함이 있습니다. 이러한 문제를 해결하기위해서 alias를 ./bashrc 또는 .bash_aliases 파일에 등록하여 사용합니다.

`.bashrc` , `.bash_aliases` 에 등록하게되면, 재부팅 되더라도 등록해둔 alias 가 영구 지속되게 됩니다.

순서는 다음과 같습니다.
	bashrc 수정
	alias 등록
	sorce를 통해 적용

```
vi /etc/bashrc         # bashc 파일을 엽니다.

alias cc = `clear`     # "cc" 를 "clear"의 alias로 등록합니다.

source ./bashrc        # /etc/bashrc에 내용을 적용합니다.
```

참고
[[리눅스 profile 이란]]