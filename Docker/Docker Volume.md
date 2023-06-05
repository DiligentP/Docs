![[Pasted image 20230417093650.png]]

```
--volume
docker volume ls
docker volume create webroot
cd
docker run -v webroot:/var/www/html/ htpd
-v /root/data:/data
--volumes-from cona
-v nfsvol:/var/www/html
```



