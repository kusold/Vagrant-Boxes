#!/bin/bash
set -e #Exit whenever non-0 happens
for template in *.json
do
  echo '---------Building ----------'
  packer build -only=virtualbox-iso $template
done  
