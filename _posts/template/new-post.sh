#!/bin/bash

while getopts "t:n:" var
do
   case "$var" in
       t) TEMPLATE=${OPTARG};;
       n) NAME=${OPTARG};;
   esac
done



sed "s/NAME/${NAME}" ${TEMPLATE}.md
