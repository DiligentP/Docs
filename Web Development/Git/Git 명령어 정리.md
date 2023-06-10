## Install 
```shell
[windows]
choco install git

[ubunntu]
apt install git

[redhat, centos]
yum install git

[Mac]
brew install git
```

또는 직접 설치
[Git - Git 설치 (git-scm.com)](https://git-scm.com/book/ko/v2/%EC%8B%9C%EC%9E%91%ED%95%98%EA%B8%B0-Git-%EC%84%A4%EC%B9%98)

## Git Command
```sh
# 기본 명령어
	git --version :: Git 현재버전 확인
	
	git init :: 새로운 Git 생성 (.git)
	rm -rf .git :: Git 삭제
	git rm .git :: .git폴더가 삭제되며, Git 로컬 저장소 지정을 해제한다.
	
	git remote add [origin] [gihhub url] :: 원격 저장소 origin 이름으로 연결
	git remote remove origin :: 원격 저장소 연결 해제
	git remote -v :: 현재 연결되어있는 깃 저장소 경로를 볼 수 있다. (원격저장소 목록 조회)

	git reset HEAD [file] :: git add를 취소한다. (파일명 미 기제 시 add 한 파일 전체 취소)

	git clone [github url] :: 지정된 저장소를 로컬에 복제한다.
	
	git add :: 파일을 트래킹 함.
	git rm --cached [FileName] & *(all) :: 깃에 트래킹 된 캐시들을 모두 제거.
	
	git status :: 깃 상세 정보 확인.
	git status -s :: 깃 정보 간단히 볼수 있음.
	git diff :: 변경 사항들만 확인 해볼 수 있음.
	
	git commit -m [str:Message] :: 커밋을 진행함.
	git commit -am [str:Message] :: 모든 파일의 커밋을 진행함.
	git commit --amend --no-edit --date [str:Date] :: 마지막 커밋을 지정한 날짜로 변경
	# ex)"Mon 20 Aug 2018 20:19:19 KST"
	
	git log :: 깃 로그를 확인 할 수 있음.
	git log graph:: 그래프형식으로 깃 로그를 확인할 수 있음.
	
	git push :: 원격 저장소에 푸쉬
	git pull :: 원격 저장소와 동기


# 깃 브랜치
	git branch :: 로컬 저장소의 브랜치 목록 확인
	git branch -r :: 원격 저장소의 브랜치 목록
	git switch [브랜치명] :: 해당 브랜치로 스위칭
	git checkout [브랜치명] :: 브랜치를 전환 (현재 브랜치를 checkout 하고 새로움 브랜치로 이동)
	git branch -d :: 로컬 저장소의 브랜치 삭제
	git push origin --delete <branchName> :: 원격 저장소의 브랜치 삭제
	git branch -D :: 병합하지 않은 브랜치 강제 삭제
	git branch -b [브랜치명]:: 브랜치 새로생성
	
# 깃 설정 명령어
	git config --h :: Git 의 명령어 및 속성값들을 확인
	git config --list :: Git의 모든 설정들을 확인해 볼 수 있음.
	git comfig --global -e :: Git의 설정을 Edit모드로 열기

	# core.editor "" 사이에는 에디터 빌드 Path가 들어감
	git config --global core.editor "code" :: vs code를 Editor 로 설정
	git config --global core.editor "code --wait" :: 위와 동일하며 대기옵션 추가 

	# 깃 config user, email 설정
	git config --global user.name "DiligentP" :: 전역 아이디 설정
	git config --global user.email "qkrwjdgus0603@gmail.com" :: 전역 이메일 설정
	git config user.name "DiligentP" :: 저장소 아이디 설정
	git config user.email "qkrwjdgus0603@gmail.com" :: 저장소 이메일 설정

	git config --global --list :: 전역 설정 정보 조회
	git config user.name :: 아이디 확인
	git config user.email :: 이메일 확인
	
	# 운영체제 마다 들어가는 문자열이 달라 발생하는 문제 해결
	git config --global core.autocrlf true :: 윈도우-> ture 맥-> input 

	# 깃 명령어 alias [git st == git status]
	git config --global alias.st status :: Git status 명령어를 "st"로 줄임. 


# 깃 태그 명령어
	git tag :: 깃 태그 목록 확인 
	git tag -l "v1.0.0*" :: 다음과 같이 태그를 검색 가능.
	

```

## Git pull/push 시 Password 물어보지 않도록 설정하기

https://www.hahwul.com/2018/08/22/git-credential-helper/


## 참고 Reference
---
[Git은 어렵지 않습니다 - YouTube](https://www.youtube.com/watch?v=dR-gJoNwjNI)
