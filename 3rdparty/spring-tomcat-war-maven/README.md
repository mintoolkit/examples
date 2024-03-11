## SPRINGBOOT/TOMCAT/WAR EXAMPLE (WITH MAVEN)

* build image: `docker build . -f Dockerfile -t spring-tomcat-war-maven`
* run image: `docker run -it --rm -p 8080:8080 spring-tomcat-war-maven`
* test image: `curl http://localhost:8080/spring-boot-docker/`
* slim image: `mint slim --http-probe-cmd='/spring-boot-docker/' spring-tomcat-war-maven`
* run slim image: `docker run -it --rm -p 8080:8080 spring-tomcat-war-maven.slim`

Mac OS Helper Scripts: [`_mac`](./_mac).

### NOTES

[`README_ORIG.md`](./README_ORIG.md).
