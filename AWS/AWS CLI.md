
# 개요

AWS를 관리하기 위한 명령어 도구로서 AWS Management Console에서 수행할 수 있는 대부분의 작업을 수행할 수 있으며, AWS 서비스를 프로그래밍 방식으로 제어하고, CLI (Command Line Interface)를 통해 자동화 및 스크립팅이 가능합니다.

# 기능

AWS 서비스 액세스
리소스 생성 및 관리
스크립팅
다양한 출력 형식
프로파일 관리

# 설치

## Ubuntu

```shell
sudo apt update
sudo apt install -y python3 python3-pip
pip3 install awscli
```

## CentOS

```shell
yum install -y python3 python3-pip
pip3 install awscli
```

## Windows 

```shell
choco install awscli
```



# 명령어

```shell
# i-12345678 이라는 이름의 인스턴스를 시작합니다.
aws ec2 start-instance --instance-ids i-12345678

# S3 패키지의 목록을 확인합니다.
aws s3 ls

```

