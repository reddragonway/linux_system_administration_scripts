#!/usr/bin/env bash
do_curl='curl -s'
echo "Public IP Address:"
check_ip=checkip.dyndns.org
sed_ip=(sed -e 's/.*Current IP Address: //' -e 's/<.*$//')
$do_curl "$check_ip" | "${sed_ip[@]}"


