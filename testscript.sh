#!/bin/sh
hostname -I > Master.txt
start-master.sh
python /home/Spark/sleeptimer.py
aws s3 cp /Master.txt $BUCKET_URL/Master.txt
