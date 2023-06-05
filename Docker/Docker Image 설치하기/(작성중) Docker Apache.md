
dockerfile
---
```
FROM ubuntu:16.04

# Install Apache
RUN apt-get update \
	&& apt-get install -y apache2

EXPOSE 80
CMD ["/usr/sbin/apache2ctl", "-DFOREGROUND"]
```

```
docker build -t apache .
```

```
docker run -d --name mywebserv -p 80:80 webserver
```