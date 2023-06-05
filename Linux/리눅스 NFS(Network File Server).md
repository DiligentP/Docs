설명
- NFS 는 Network File Sever의 약자입니다. 

NFS 서비스 데몬
- nfs-mountd : 클라이언트가 마운트를 요청하면 서버에서 클라이언트를 대신하여 수행해준다.
- nfs-rquotad :  quitas 관리를 해준다.
- nfs-idmapd : 서로 어떤 작업을 하는지 알 수 있게 하는 데몬
- proc-fs-nfsd : mountd 데몬에 의해 마운트가 완료가 되면 공유 디렉토리에 읽기 쓰기 작업을 대신 해준다.

NFS rpcbind 데몬
- rpc-statd : nfs 서버가 비정상적으로 종료 되었거나 재부탱 했을때 복구하는 역할 수행
- rpc-statd-notify
- rpc-rquotad
- rpcidmapd