#!/bin/bash

set -euo pipefail

OUTPUT_DIR=uncommitted
mkdir -p ${OUTPUT_DIR}

OUTPUT_PATH=${OUTPUT_DIR}/input_logs.tar.gz


if [ ! -f ${OUTPUT_PATH} ]; then
  curl -L -o ${OUTPUT_PATH} "https://drive.google.com/uc?id=1RAEY0QyrCsV4WAes1WGDkDgIprXXNMmV&export=download"
fi

tar -xf  ${OUTPUT_PATH} -C ${OUTPUT_DIR} --no-same-owner
