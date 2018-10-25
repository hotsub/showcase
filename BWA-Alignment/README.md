# BWA alignment by hotsub

This recipe runs **[BWA alignment](https://github.com/lh3/bwa)** on AWS EC2 instances, without configuring instances.

```sh
hotsub run \
    --script ./main.sh \
    --image hotsub/bwa-alignment \
    --tasks ./bwa-alignment.csv \
    --aws-ec2-instance-type t2.large \
    --verbose
```

This command will

- execute workflow described as **`main.sh`**
- inside docker runtime of image **`hotsub/bwa-alignment`**
- for each sample in **`bwa-alignment.csv`**
- on EC2 instances with type **`t2.large`**

All the resources are automatically cleaned up after output files are located back to S3.
