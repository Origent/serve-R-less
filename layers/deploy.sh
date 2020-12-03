#!/bin/bash

set -euo pipefail

if [[ -z ${1+x} ]];
then
    echo 'version number required'
    exit 1
else
    VERSION=$1
fi

BASE_DIR=$(pwd)
cd ${BASE_DIR}/r-runtime
./deploy.sh ${VERSION}
cd ${BASE_DIR}/r-gbm
./deploy.sh ${VERSION}