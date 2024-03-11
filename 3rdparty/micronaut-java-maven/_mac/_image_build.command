SOURCE="${BASH_SOURCE[0]}"
while [ -h "$SOURCE" ] ; do SOURCE="$(readlink "$SOURCE")"; done
SDIR="$( cd -P "$( dirname "$SOURCE" )" && pwd )"
cd $SDIR/..

./mvnw package -Dpackaging=docker
# image name (customized in pom.xml) -> micronaut-hello-world-maven:latest

# https://micronaut-projects.github.io/micronaut-maven-plugin/latest/examples/package.html
# https://github.com/GoogleContainerTools/jib/tree/master/jib-maven-plugin#configuration

# If the <packaging> is set to docker, this plugin will use com.google.cloud.tools:jib-maven-plugin to produce a Docker image with the application artifacts (compiled classes, resources, dependencies, etc) inside.

# ./mvnw package -Dpackaging=docker-native -Pgraalvm
# ./mvnw package -Dpackaging=docker -Dmicronaut.aot.enabled=true

#docker build . -f Dockerfile -t abc/dockerinc-spring-helloworld --progress=plain
