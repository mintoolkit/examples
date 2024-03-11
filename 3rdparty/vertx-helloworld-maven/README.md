## VERTX DOCKER EXAMPLE (WITH MAVEN)

* build image: `docker build -t vertx-helloworld-maven -f docker-maven/Dockerfile .`
* run image: `docker run -p 8888:8888 vertx-helloworld-maven`
* test image: `curl http://localhost:8888`
* slim image: `mint slim vertx-helloworld-maven`
* run slim image: `docker run -p 8888:8888 vertx-helloworld-maven.slim`

Mac OS Helper Scripts: [`_mac`](./_mac).

### NOTES

This is a copy of the official Docker HowTo for VertX.

[`README_VERTX.adoc`](./README_VERTX.adoc).
