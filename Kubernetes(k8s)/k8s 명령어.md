
## Kubectl 명령어 자동완성
---
```Bash
# 일시 적용
source<(kubectl completion bash)
source<(kubeadm completion bash)

# 계속 적용
echo "source<(kubectl completion bash)">>~/.bashrc
echo "source<(kubeadm completion bash)">>~/.bashrc
```

Q1. bashrc가 뭔가요?

## kubectl 명령어 사용하기
---
```
kubectl get nodes
```


kubctl commands
```shell
kubectl --help
kubectl commnand --help

kubectl run <자원이름> <옵션>  # 컨테이너 파드를 만드는 명령
kubectl create -f obj.yaml
kubectl apply -f obj.yaml

kubectl get <자원이름> <객체이름>
kubectl edit <자원이름> <객체이름>
kubectl describe <자원이름> <객체이름>

kubectl delete pod main
```

kubectl api-resources 약어 정보
```
kubectl api-resources
```


활용예
```
# 노드들 정보 확인
kubectl get nodes

# 노트 정보 세부확인
kubectl get nodes -o wide

# 노드 하나의 모든 정보 확인
kubectl describe node master # 마스터 노드의 모든 정보 나열해줘
```


kubectl run
run 명령은 pod 를 하나 생성할때 사용하는 명령어 입니다.
```
# nginx pod 생성
kubectl run webserver --image=nginx:1.14 --port 80

# pod 확인
kubectl get pods

# 생성한 pod 자세하게 확인
kubectl describe pod webserver

# dry-run 명령은 run 실행을 yaml 파일로 변환하는 옵션입니다.
kubectl run webserver --image=nginx:1.14 --port 80 --dry-run -o yaml > webserver-pod.yaml

```

kubectl create
create 명령은 pod를 여러개 실행할때 유용합니다. (--replicas)
```
kubectl create deployment mainui --image=httpd --replicas=3

# 확인 명령어
kubectl get pods -o wide

# deployments.app 만 확인
kubectl get deployments.apps

# deployments.apps 세부 정보
kubectl describe deployments.apps 
```

kubectl exec
```
# webserver의 인덱스를 수정하고 싶어
kubectl exec webserver -it -- /bin/bash

# nginx의 idex.html 파일 경로로 이동
cd /usr/share/nginx/html/

```

kubectl port-forward
```
# 컨테이너에 포트 포워딩 작업을 합니다. 이를 통해 외부에서 접속할 수 있습니다.
kubectl port-forward webserver 80:80
```

kubectl delete
```
# 해당 pod 를 삭제합니다.
kubectl delete pod webserver
```


## 쿠버네티스 네임스페이스 생성
---

쿠버네티스에서 네임스페이스를 생성하는 방법은 두가지가 있습니다.

1. CLI 명령어를 통한 방법
2. Yaml 파일을 이용하는 방법

아래는 CLI 를 통한 네임스페이스를 생성하는 방법입니다.
```
kubectl create namespace <NAMESPACE>
```

아래는 Yaml 파일을 이용하는 방법입니다.
```
kubectl create namespace <NAMESPACE> -o yaml

##
--dry-run : 실제로 실행하지 않고 실행 가능 여부만 확인
-o yaml : 실행 결과를 Yaml 파일로 출력
-o yaml > <file>.yaml : 실행결과를 file.yaml 파일로 생성
```


Namepace 에서 nginx 실행하기
```
kubectl crate -f nginx.yaml -n blue

##
-f : Yaml 또는 Json 형태의 파일을 사용하는 옵션입니다.
-n : pod 를 생성할 namespace 를 지정합니다. --namespace 의 줄임입니다.
```


사용할 네임스페이스 switch 하는 방법
```
# 쿠버네티스의 설정을 확인합니다.
kubectl config view

# 컨텍스트 정보를 수정합니다. (set-context)  - 네임스페이스 blue 로 설정
kubectl config set-context blue@kubernetes --cluster=kubernetes --user=kubernetes-admin --namespace=blue
```



## 쿠버네티스 API
---
```
# 리소스의 정보(Documentation) 출력
kubectl explane [오브젝트명]
```