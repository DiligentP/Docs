```
docker pull nginx:latest

...

[root@node1 ~]# docker pull nginx:latest
latest: Pulling from library/nginx
26c5c85e47da: Pull complete 
4f3256bdf66b: Pull complete 
2019c71d5655: Pull complete 
8c767bdbc9ae: Pull complete 
78e14bb05fd3: Pull complete 
75576236abf5: Pull complete 
Digest: sha256:63b44e8ddb83d5dd8020327c1f40436e37a6fffd3ef2498a6204df23be6e7e94
Status: Downloaded newer image for nginx:latest
docker.io/library/nginx:latest

```

nginx 는 총 6개의 레이어로 구성되어 있다는걸 확인 할 수 있음.



