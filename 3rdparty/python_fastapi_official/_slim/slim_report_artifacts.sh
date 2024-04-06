#!/usr/bin/env bash

set -e

SOURCE="${BASH_SOURCE[0]}"
while [ -h "$SOURCE" ] ; do SOURCE="$(readlink "$SOURCE")"; done
BDIR="$( cd -P "$( dirname "$SOURCE" )/.." && pwd )"

pushd $BDIR
source _slim.env

mint --report $IMAGE_NAME.slim.report.json slim --copy-meta-artifacts . dslimexamples/$IMAGE_NAME
popd
