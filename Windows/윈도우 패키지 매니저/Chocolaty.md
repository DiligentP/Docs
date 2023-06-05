#Windows 

# What is Chocolaty?
---
[Chocolatey Software Docs | Chocolatey - Software Management for Windows](https://docs.chocolatey.org/en-us/)
[Chocolatey Software | Packages](https://community.chocolatey.org/packages)

# Get Started
---
```powershell
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))
```

커맨드를 복사하여 PowerShell(관리자)에 붙여넣습니다.

# Commands
---
```powershell
# 초콜릿으로 설치한 목록 확인 
choco list --localonly choco list -l 

# 패키지 설치 
choco install [pakagename] choco install -y [pakagename] 

# 패키지 삭제 
choco uninstall [pakagename] 

# 업그레이드 할 패키지 찾기 
choco outdated 

# 모든패키지 업그레이드 
choco upgrade all 

# 특정 패키지 업그레이드 
choco upgrade [pakagename] 

# 특정 패키지 검색 
choco list [pakagename str] choco search [pakagename str]
```