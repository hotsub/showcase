# STAR alignment by hotsub

This recipe runs **[STAR RNA-seq alignment](https://github.com/alexdobin/STAR)** on AWS EC2 instances, without configuring instances.

```sh
hotsub run \
  --script ./main.sh \
  --image friend1ws/star-alignment \
  --tasks ./star-alignment.csv \
  --aws-ec2-instance-type m4.2xlarge \
  --disk-size 128 \
  --shared REFERENCE=s3://hotsub/resources/reference/GRCh37.STAR-2.5.2a \
  --verbose
```

This command will

- execute workflow described as **`main.sh`**
- inside docker runtime of image **`friend1ws/star-alignment`**
- for each sample in **`star-alignment.csv`**
- on EC2 instances with type **`m4.2xlarge`**
- which have **`128`** GB disk size
- and reference files are located on shared data instance to reduce inefficient network traffic and instance times

All the resources are automatically cleaned up after output files are located back to S3.
