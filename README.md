# Tomcat Docker HTTPS Demo

## Creating SSL Cert
Certificate need to be created under ssl directory:
```
$ openssl req -x509 -newkey rsa:4096 -keyout localhost-rsa-key.pem -out localhost-rsa-cert.pem -days 36500
```
Default password: changeit

## Running Docker
Build and run docker using this command.
```
$ docker build -t demo-tomcat-docker .
$ sudo docker run --name=myContainer2 -p 443:8443 -it --rm -d demo-tomcat-docker
```
