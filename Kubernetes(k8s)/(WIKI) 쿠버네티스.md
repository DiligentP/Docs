
쿠버네티스랑 컨테이너를 도커 플랫폼에 올려서 관리 + 운영 + 클러스터 서비스를 지원해 주는 것입니다.

## k8s 특징
---
워크로드 분리
어디서나 실행 가능 - 온프레미스, 퍼블릭 클라우드(AKS, EKS, GKE 등)
선언적 API : -> 명령을 내리면 알아서 애플리케이션들을 적제적소에 배치함\


## 쿠버네티스 클러스터를 직접 구성하는 도구
---
### Kubeadm
- 쿠버네티스에서 공식 제공하는 클러스터 생성/ 관리 도구입니다.

### kubespray
- 쿠버네티스 클러스터를 배포하는 오픈소스 프로젝트입니다.
- 다양한 형식으로 쿠버네티스 클러스터 구성가능
- 온프레미스에서 상용 서비스 클러스터 구성가능
- 다양한 CNI 제공

## CNI (Container Network Interface)
---
Container 간 통신을 지원하는 VxLAN. Pod Network 라고도 부릅니다.
다양한 종류의 플러그인이 존재합니다.

플라넬(Flannel)
칼리코(calico)
위브넷(weavenet)


## 쿠버네티스 클러스터 구성
---
Control plane (master node)
- 워커 노드들의 상태를 관리하고 제어하는 역할
- Single master
- Multi master (3,5 개의  master nodes)

Worker node
- 도커 플랫폼을 통해 컨테이너를 동작하며 실제 서비스 제공


## 쿠버네티스 명령어
---
## Kubectl
- 쿠버네티스에게 요청을 내리는 명령어입니다.
- ex) 쿠버네티스야 나 웹서버 3개 실행해줘~

### kubectl 명령어 기본구조
```
kubectl [command] [TYPE] [NAME] [flags]
```

command : 자원(object)에 실행할 명령 cereate, get, delete, edit ..
TYPE : 자원의 타입 node, pod, service ...
NAME : 자원의 이름
flags : 부가적으로 설정할 옵션  --help -o options wide ...


## 쿠버네티스 Namespace
---
### namespace란?
- 클러스터 하나를 여러 개의 논리적인 단위로 나눠서 사용

쿠버네티스 클러스터 하나를 어러 팀이나 사용자가 함계 공유
용도에 따라 실행해야하는 앱을 구분할 때 사용
- 수많은 파드 들이 존재하는데, 이를 관리하기 편하게 하기 위해 네임스페이스라는 개념을 도입함.
- 네임 스페이스는 클러스터는 하나인데 이를 논리적으로 여러개의 클러스터 인 것 처럼  나누어 사용합니다.
- 예들들어 개발서버와, 운영서버를 분리할때 사용한다는 등...

쿠버네티스를 설치 하면 기본적으로 가지고 있는 네임스페이스는 다음과 같습니다.
```
$ kubectl get namespaces
NAME              STATUS   AGE
default           Active   39h
kube-flannel      Active   39h
kube-node-lease   Active   39h
kube-public       Active   39h
kube-system       Active   39h
```

우리가 일반적으로 사용하는 `kubectl ge pods` 명령은 `default` namespace를 생략한 명령입니다.
```
kubectl get pods --namespace default

No resources found in default namespace.
```

다른 네임스페이스의 pods를 조회하는 방법은 다음과 같습니다.
```
kubectl get pods --namespace kube-flannel

# --namespace를 -n 으로 줄여서 쓰기도 합니다.
kubectl get pods -n kube-flannel
```

### namespace 생성하기

### Base namespace 변경하기


## 쿠버네티스 API version
---
- alpha -> data -> stable
- Kubernates Object 정의 시 ApiVersion 이 필요합니다.
- Kubernates가 Update 하는 API가 있으면 새로운 API가 생성됩니다.

- API Object 의 종류 및 버전
	- Deployment                   ->  apps/v1
	- Pod                                 ->  v1
	- ReplicaSet                       ->    apps/v1
	- ReplicationController     ->    v1
	- Service                           ->    v1
	- PersistentVolume           ->     v1

