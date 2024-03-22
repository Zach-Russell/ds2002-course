#!/bin/bash

/usr/bin/apt update -y
/usr/bin/apt upgrade -y

#install jq, nginx, git, and pip so we can pip install boto3
/usr/bin/apt install jq git python3-pip python3-dev nginx -y
/usr/bin/python3 -m pip install boto3


