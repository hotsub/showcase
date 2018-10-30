#!/bin/sh

set -e -v

hotsub run \
  --wdl     ./hello.wdl \
  --wdl-job ./job-0.json \
  --wdl-job ./job-1.json \
  --provider gcp \
  --google-project genomondevel1 \
  --verbose

