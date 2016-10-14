#!/bin/sh
if [ $# -eq 0 ]
  then
    echo "Please supply the vagrant op"
    exit 1
fi
cd /Users/cdoolittle/commerce/solr/cloud/
vagrant $1