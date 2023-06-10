
Docs 라는 프로젝트를 오늘 날짜의 커밋 메시지로 푸쉬하는 스크립트.

```sh
@echo off
set today=%date:~0,4%-%date:~5,2%-%date:~8,2%
set commitMessage=[%today%]

cd Docs
git add .
git commit -m "%commitMessage%"
git push

echo Task completed. Press any key to exit.
pause >nul
```

.bat 확장자로 생성