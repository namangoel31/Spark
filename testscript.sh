#!/bin/sh
hostname -I > Master.txt
start-master.sh
python /home/Spark/sleeptimer.py
