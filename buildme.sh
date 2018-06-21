#!/bin/bash -x

esxi_host=`jq -r ".esxi_host" variables.json`
esxi_user=`jq -r ".esxi_user" variables.json`
esxi_password=`jq -r ".esxi_password" variables.json`

nohup guest_hack.sh $esxi_user $esxi_host $esxi_password > /dev/null 2>&1 &

packer build -on-error=ask -var-file="variables.json" vyos_build.json
