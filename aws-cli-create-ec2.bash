#!/bin/bash

aws ec2 run-instances \
 --image-id ami-02d26659fd82cf299 \
 --instance-type t2.micro \
 --count 2 \
 --key-name testkey1 \
 --security-groups ec2-docker-jenkins-s3-sg \
 --user-data file://
