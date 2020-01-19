#!/bin/bash

set -e

# setting up environment dependent variables
TARGET_ENV=${1:-qa}
# GCLOUD_SERVICE_KEY=$(eval echo "\$GCLOUD_SERVICE_KEY_$TARGET_ENV")
# GCLOUD_PROJECT=$(eval echo "\$GCLOUD_PROJECT_$TARGET_ENV")
# expecting the install directly in the home directory
GCLOUD=${HOME}/google-cloud-sdk/bin/gcloud

echo $1

echo "begin deploy to gcp"

${GCLOUD} app deploy app-$1.yaml

echo "end deploy to gcp"
