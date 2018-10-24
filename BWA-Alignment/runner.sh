#!/bin/bash

set -e -v
hotsub run \
    --tasks ./bwa-alignment.csv \
    --script ./main.sh \
    --image hotsub/bwa-alignment \
    --aws-ec2-instance-type t2.large \
    --verbose
