#!/bin/bash

datez

if [ $? -eq 0 ]
then
  echo "Success"
  exit 0
else
  echo "Failure" >&2
  exit 1
fi
