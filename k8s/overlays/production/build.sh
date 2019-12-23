#!/bin/sh
cd `dirname $0`

IMAGE_NAME="$1"
kustomize edit set image app-name="${IMAGE_NAME}"
kustomize build . > ../../manifest/production/output.yaml
