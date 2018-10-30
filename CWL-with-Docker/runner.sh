#!/bin/bash

set -e -v
hotsub run \
  --cwl     ./js-docker.cwl \
  --cwl-job ./js-job.yml \
  --include ./hello.js \
  --verbose

