#!/bin/env bash

cg() { 
    local url=$1
    local method="GET"
    curl -X "$method" "$url" 
}


dir=/etc/squid
config=$(cat "$dir/squid.conf")




echo "$config"
