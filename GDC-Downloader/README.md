# Download common data from GDC

This workflow will

- download BAM file from NCI Genomic Data Commons
- make BAM file to Fastq samples

```sh
hotsub run \
  --script ./main.sh \
  --image hotsub/gdc-client \
  --tasks ./MCF7-fastq.csv \
  --aws-ec2-instance-type m4.2xlarge \
  --disk-size 64 \
  -v
```

This command will

- execute workflow described as **`main.sh`**
- inside docker runtime of image **`hotsub/gdc-client`**
- for each sample in **`MCF7-fastq.csv`**
- on EC2 instances with type **`m4.2xlarge`**
- which have **`64`** GB disk size

All the resources are automatically cleaned up after output files are located back to S3.