#!/bin/bash

set -e

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

REPO=kubifyinc/atlantis-terragrunt
ATLANTIS_VERSION=0.8.3
TERRAGRUNT_VERSION=0.19.21
TERRAFORM_VERSION=0.14.7
IMAGE_REVISION=8

docker build \
  --build-arg ATLANTIS_VERSION=$ATLANTIS_VERSION \
  --build-arg TERRAGRUNT_VERSION=$TERRAGRUNT_VERSION \
  --build-arg TERRAFORM_VERSION=$TERRAFORM_VERSION \
  -t ${REPO}:v${ATLANTIS_VERSION}-v${TERRAGRUNT_VERSION}_${IMAGE_REVISION} \
  $DIR
docker push ${REPO}:v${ATLANTIS_VERSION}-v${TERRAGRUNT_VERSION}_${IMAGE_REVISION}