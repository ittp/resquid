#!/bin/bash

echo "acl"
echo "name: "

echo "[values]"
$name=$1
$data=$2
echo "acl $name $data"

$access_type="allow"
$acl_name="lan"
$access_data="lan"

echo "http_access $access_type $acl_name $access_data"
