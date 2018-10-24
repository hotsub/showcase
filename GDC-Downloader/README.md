This workflow will

- download BAM file from NCI Genomic Data Commons
- make BAM file to Fastq samples

```sh
hotsub run \
  --image otiai10/gdc-client \
  --script ./main.sh \
  --tasks ./MCF7-fastq.csv \
  --aws-ec2-instance-type m4.2xlarge \
  --disk-size 64 \
  -v
```
