
설명
- `cat` 명령어는 파일의 내용을 출력하기 위한 명령어 입니다.
- 대체로 리다이렉션을 통해 다른 곳으로 출력 내용을 보내기위해 사용합니다.

설치

명령어
```
cat 
```

옵션

사용 예
- 가장 많이 사용하는 예시는 텍스트파일을 vi에디터를 통해 들어가지 않고 바로 쉘화면에 출력하는 것입니다.
```
cat test.txt
```

```
$ cat FILE : FILE의 내용을 출력

$ cat FILE1 FILE2 : FILE1의 다음 FILE2 내용을 출력

$ cat > FILE : FILE 생성

$ cat FILE > NEWFILE : 파일 복사 $ cat FILE1 FILE2 > NEWFILE : 파일 합치기

$ cat FILE1 >> FILE2 : FILE1의 내용을 FILE2 에 합치기

$ cat -n FILE : 라인마다 번호 출력

$ cat -s FILE : 반복 공백라인 무시

$ cat FILE1 - FILE2 : 파일사이 내용 추가

$ cat FILE | more : 파일 내용을 페이지 단위로 출력

$ cat FILE | grep "STR" : 파일 내용 필터링

$ cat -E FILE : 라인 끝에 $ 문자 출력

$ cat -T FILE : 탭 ^l 로 출력

$ cat * : 모든 파일 내용 출력

$ cat *.txt : 특정 확장자를 가진 파일 내용 출력
```

기타
