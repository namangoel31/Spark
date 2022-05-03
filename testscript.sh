#!/bin/sh
hostname -I > Master.txt
aws s3 cp /Master.txt s3://sparkonecs/Slave/Master.txt
start-master.sh
aws s3 cp s3://sparkonecs/Master/sleeptimer.py /home/Spark/sleeptimer.py
python /home/Spark/sleeptimer.py
