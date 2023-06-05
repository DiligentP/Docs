
## Kubeadm 을 이용한 쿠버네티스 설치
---
###  Docker install
```shell
curl -sSL http://get.docker.com | bash
systemctl start docker && systemctl enable docker  # 서비스 시작
```

### Kubernates install

1. 설치 전 환경설정
```

```

2. kubeadm, kubectl, kubelet 설치

3. control-plane 구성

4. worker node 구성

5. 설치 확인

## 참고
---
Youbute - (따배쿠) 2-2 도커 쿠버네티스 설치


## 쿠버네티스 사전작업
---
1. /etc/hosts 수정
```shell
vi /etc/hosts
/*
192.168.0.12  master
192.168.0.2   node1
192.168.0.7   node2
192.168.0.11  node3
*/


scp /etc/hosts node1:/etc/hosts
scp /etc/hosts node2:/etc/hosts
scp /etc/hosts node3:/etc/hosts
```

2. firewalld , selinux 비활성화
```shell
systemctl stop firewalld && systemctl disable firewalld  

vi /etc/sysconfig/selinux   # enforcing = disabled
```

3.  도커 설치 및 cgroup 설정
```shell
# Yum update 및 wget 다운로드
yum install -y epel-release && yum install -y wget && yum update -y

# 도커 설치
curl -sSL http://get.docker.com | bash
systemctl start docker && systemctl enable docker  # 서비스 시작
docker version   # 도커 버전 확인
docker info | grep -i cgroup  # cgroup 확인   : cgroupfs

# docker 의 cgroup을 systemd로 변경 -> 쿠버네티스 설치를 위해
vi /usr/lib/systemd/system/docker.service   
/*
ExecStart=/usr/bin/dockerd --exec-opt native.cgroupdriver=systemd
*/
scp /usr/lib/systemd/system/docker.service node1:/usr/lib/systemd/system/docker.service
scp /usr/lib/systemd/system/docker.service node2:/usr/lib/systemd/system/docker.service
scp /usr/lib/systemd/system/docker.service node3:/usr/lib/systemd/system/docker.service

# 도커 재시작
systemctl daemon-reload  # 모든 unit file reload
systemctl restart docker

docker info | grep -i cgroup  # 변경된 cgroup 확인  cgroupfs -> systemd
```

4. swap 기능 비활성화 및 br_netfilter Kernel Module 활성화
```shell
# swap 비활성화
swapoff -a
vi /etc/fstab   # swap 부분 주석처리

# br_netfilter Kernel Module 활성화
modprobe br_netfilter
echo '1' > /proc/sys/net/bridge/bridge-nf-call-iptables
docker info

vi /etc/sysctl.conf  
/*
net.bridge.bridge-nf-call-iptables = 1
net.bridge.bridge-nf-call-ip6tables = 1
*/

scp /etc/sysctl.conf node1:/etc/sysctl.conf
```

5. Kubernetes 설치
```shell
# Kubernetes Repository 추가 구성
cd /etc/yum.repos.d &&
wget http://down.cloudshell.kr/k8s/kubernetes.repo &&
yum repolist -y

# Go Language 및 cri-dockerd 패키지 설치하기 (#매우 중요)
curl http://down.cloudshell.kr/k8s/cri-dockerd.sh | bash

# Kubernetes 1.23.10 설치 (구버전 # 선택)
yum -v list kubelet --show-duplicates
yum install -y kubelet-1.23.10-0 kubeadm-1.23.10-0 kubectl-1.23.10-0 (특정버전)

# Kubernetes 설치 (최신버전 # 선택)
yum install -y kubelet kubeadm kubectl

# k8s 재시작 및 구동하기
systemctl daemon-reload && systemctl enable kubelet --now

# K8S 버전 확인하기 
yum -v list kubelet --show-duplicates 

# K8S Clustering 구성 - Master(192.168.0.12)만 작업
kubeadm init --apiserver-advertise-address=[masterIP] --pod-network-cidr 10.244.0.0/16 --cri-socket unix://var/run/cri-dockerd.sock
# kubeadm join 구문을 notepad에 복사 (#매우 중요) 

# 도커 이미지, 프로세스 확인
docker images ; docker ps
docker container inspect $(docker ps -q) | grep -i networkmode

# kubernetes clustering(명령)를 사용할 수 있도록 구성 Master(192.168.0.12)만 작업
mkdir -p $HOME/.kube
sudo cp -i /etc/kubernetes/admin.conf $HOME/.kube/config 
sudo chown $(id -u):$(id -g) $HOME/.kube/config

# Kubernetes 버전 정보 확인 Master(192.168.0.12)만 작업
kubectl version --short
kubectl version -o yaml
kubeadm version -o yaml
kubelet --version

# Cluster 구성정보(ConfigMap) Pod 상태 확인 - Master(192.168.0.12)만 작업
kubectl get namespace 또는 kubectl get ns 
kubectl get cm -n kube-system  # kube-system의 ConfigMap 확인
kubectl get cm -n kube-system kubeadm-config -o yaml # 최신방식
kubectl get nodes # master가 NotReady 상태임

# Cluster Pod Network 구성 - Master(192.168.0.12)만 작업 
kubectl get pods --all-namespaces 또는 kubectl get pods -A
kubectl get pods -n kube-system
kubectl get pods -n default
	
# Calico 설치 (NAT와 Host-Only의 2개 네트워크 사용시)
curl https://raw.githubusercontent.com/projectcalico/calico/v3.24.5/manifests/calicopolicy-only.yaml -o calico.yaml && kubectl apply -f calico.yaml

# flannel 설치 (Bridged 네트워크 사용시)
curl https://raw.githubusercontent.com/coreos/flannel/master/Documentation/kube-flannel.yml -o kube-flannel.yml && kubectl apply -f kube-flannel.yml

# Pod 상태 확인
kubectl get pods -n kube-system # kube-flannel-ds-*** 라는 이름의 파드가 실행 중

# node를 Cluster에 추가 - node1,2,3 작업
kubeadm join ...(복사한내용) --cri-socket unix://var/run/cri-dockerd.sock 
# 앞에서 notepad에 복사한 내용을 node1,2,3 에 붙여넣기

	# 실패 시 kubeadm reset 후, 경고창 경로의 파일을 삭제

# 30초 후, Cluster 잘 연결 되었는지 확인 - Master(192.168.0.12) 작업
kubectl get nodes
kubectl get pods -A

# 각 노드에서 도커 확인 - node1,2,3 작업
docker images ; docker ps
```

6. Kubernetes 설치 후 작업
```shell
# Tab 키를 사용하여 명령어 자동 완성하기 - Master(192.168.0.12) 작업
yum install bash-completion -y
source /usr/share/bash-completion/bash_completion
echo 'source <(kubectl completion bash)' >> ~/.bashrc
kubectl completion bash >/etc/bash_completion.d/kubectl
echo 'complete -F __start_kubectl k' >>~/.bashrc

#kubectl의 Alias(k) 생성하기 - Master(192.168.0.12) 작업
echo 'alias k=kubectl' >> ~/.bashrc
	# Tab completion 및 Alias 설정시의 대안 (##강추)
	cd ; curl -sSL http://down.cloudshell.kr/down/k8slab.sh | bash
	cd k8s ; sh ./kubelet_alias_bash_completion.sh

```


