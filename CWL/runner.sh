#!/bin/bash

set -e -v

hotsub run \
  --cwl     ./hello.cwl \
  --cwl-job ./job.yml \
  --verbose

