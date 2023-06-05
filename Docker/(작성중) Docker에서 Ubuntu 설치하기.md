
## FLOW
---
- 컨테이너 이름 : docker-ubuntu

```
# 컨테이너 이미지 가져오기
$ docker pull ubuntu:latest

# 컨테이너 실행
docker run -it --name [docker-ubuntu] ubuntu:latest 

# 컨테이너에 접속
docker attach [docker-ubuntu]
```


### - it  OPTION
---
-   i : Interactive 모드로 표준입력과 표준출력을 키보드와 화면을 통해 가능하도록 하는 옵션이다.
-   t:  텍스트 기반의 터미널(TTY)을 애뮬레이션해주는 옵션이다.





## 참고
---
[개발자가 처음 Docker 접할때 오는 멘붕 몇가지 | Popit](https://www.popit.kr/%EA%B0%9C%EB%B0%9C%EC%9E%90%EA%B0%80-%EC%B2%98%EC%9D%8C-docker-%EC%A0%91%ED%95%A0%EB%95%8C-%EC%98%A4%EB%8A%94-%EB%A9%98%EB%B6%95-%EB%AA%87%EA%B0%80%EC%A7%80/)