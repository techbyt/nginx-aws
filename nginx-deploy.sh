#!/bin/bash
echo "Uploading bosh release for nginx"
bosh upload-release --sha1 1731de7995b785f314e87f54f2e29d3668f0b27f https://bosh.io/d/github.com/cloudfoundry-community/nginx-release?v=1.19.1
bosh releases
echo "Deploying nginx in to bosh"
bosh -d nginx deploy ./nginx-lite.yml  
bosh -d nginx vms
