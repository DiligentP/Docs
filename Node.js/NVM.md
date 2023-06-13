nvm은 Node.js 버전 관리 도구로, 명령어를 사용하여 다양한 Node.js 버전을 관리할 수 있게 해줍니다.



## 설치

https://github.com/nvm-sh/nvm 참고 

### Ubuntu
```
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash
```

- 설치가 완료되면 터미널을 다시 시작하거나 다음 명령어를 실행하여 nvm을 활성화합니다
`source ~/.bashrc`


### Windows
```
choco install nvm -y
```





nvm 명령어를 사용하여 Node.js를 설치하고 관리할 수 있습니다. 
```
nvm install 18                    # Nodejs 18 버전 설치
nvm use 18                        # Nodejs 18 버전을 사용하도록 설정
```

```
node -v
v18.16.0

npm -v
9.5.1
```

