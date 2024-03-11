## MICRONAUT/JAVA EXAMPLE (WITH MAVEN)

* generate Dockerfile: `./mvnw mn:dockerfile -Dpackaging=docker`
* build image (`micronaut-hello-world-maven:latest` defined in pom.xml): `./mvnw package -Dpackaging=docker`
* run image: `docker run -it --rm -p 8080:8080 micronaut-hello-world-maven:latest`
* test image: `curl http://localhost:8080`
* slim image: `mint slim micronaut-hello-world-maven:latest`
* run slim image: `docker run -it --rm -p 8080:8080 micronaut-hello-world-maven.slim:latest`

Mac OS Helper Scripts: [`_mac`](./_mac).

### NOTES

Example from https://guides.micronaut.io/latest/micronaut-docker-image-maven-java.html

Original source: [`https://guides.micronaut.io/latest/micronaut-docker-image-maven-java.zip`](https://guides.micronaut.io/latest/micronaut-docker-image-maven-java.zip)

[`README_ORIG.md`](./README_ORIG.md).
