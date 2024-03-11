SOURCE="${BASH_SOURCE[0]}"
while [ -h "$SOURCE" ] ; do SOURCE="$(readlink "$SOURCE")"; done
SDIR="$( cd -P "$( dirname "$SOURCE" )" && pwd )"
cd $SDIR/..

docker build . -f docker-maven/Dockerfile -t vertx-helloworld-maven --progress=plain
