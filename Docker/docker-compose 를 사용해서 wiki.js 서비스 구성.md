
```yaml
version: '3'
services:
  wiki:
    image: requarks/wiki:2
    container_name: wiki
    restart: always
    environment:
      # 기본적으로 Wiki.js는 SQLite 데이터베이스를 사용합니다.
      # 다른 데이터베이스를 사용하려면 다음 환경 변수를 수정하십시오.
      DB_TYPE: sqlite
      DB_PATH: /var/wiki/data/database.sqlite
      DB_SSL: ""
    volumes:
      # 데이터베이스와 미디어 파일을 저장하는 볼륨
      - ./data:/var/wiki/data
      - ./uploads:/var/wiki/public/uploads
    ports:
      # 호스트에서 Wiki.js에 대한 액세스를 위한 포트 설정
      - "80:3000"
```

위의 Compose 파일을 `docker-compose.yml`로 저장하고, `docker-compose up -d` 명령어를 실행하여 Wiki.js를 시작하십시오. 

Wiki.js를 실행한 후에는 `http://localhost` 또는 해당 호스트의 IP 주소로 접속하여 Wiki.js에 액세스할 수 있습니다.

1. Wiki.js 이미지를 빌드 하고 컨테이너를 시작합니다.
2. `DB_TYPE`, `DB_PATH` 및 `DB_SSL` 환경 변수를 설정하여 SQLite 데이터베이스를 사용합니다. 
3. `data` 및 `uploads` 디렉토리를 컨테이너의 `/var/wiki/data` 및 `/var/wiki/public/uploads` 디렉토리에 마운트합니다.
4. 호스트에서 포트 `80`으로 접근할 수 있도록 설정합니다.