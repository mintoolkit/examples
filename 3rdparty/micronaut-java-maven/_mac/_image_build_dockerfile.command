SOURCE="${BASH_SOURCE[0]}"
while [ -h "$SOURCE" ] ; do SOURCE="$(readlink "$SOURCE")"; done
SDIR="$( cd -P "$( dirname "$SOURCE" )" && pwd )"
cd $SDIR/..

./mvnw mn:dockerfile -Dpackaging=docker

# https://micronaut-projects.github.io/micronaut-maven-plugin/latest/dockerfile-mojo.html
# result: target/Dockerfile
