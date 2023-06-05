#vi #vim

Vim 에디터는 4가지 모드가 존재합니다.

- Insert mode
- Nomal mode
- Command line mode
- Visual mode


## Insert mode
---
```shell
ESC # 입력모드 벗어나기 (Nomal mode)
i # 입력 모드로 전환 (커서 위치에서)
```

## Nomal mode
---
```shell
:           # Command mode 전환
h,j,k,l     # 커서 이동

Ctrl + f    # 페이지 다운
Ctrl + b    # 페이지 업

x           # 글자 삭제
dd          # 행 삭제
yy          # 행 복사
p           # 붙여넣기

"" + p      # 클립보드 붙여넣기 (" 이거 하나임)

u          # undo   
Ctrl + r   # redo
```

## Command mode
---
```shell
:wq   # 저장하고 나가기  (많이 사용)
:q!   # 강제로 나가기    (많이 사용)  (했던 내용 반영 안됨)


:w  # 파일 저장
:q  # 파일 나가기
```

## Visual mode
---
```shell
y    # copy
d    # cut
p    # paste
```


## 참고 Reference
---
[고인물 개발자용 Vim 에디터 빠른 사용법 - YouTube](https://www.youtube.com/watch?v=LmGB0uUnkR8)

