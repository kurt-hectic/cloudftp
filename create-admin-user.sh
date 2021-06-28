#!/bin/bash

if [[ -z $ADMIN_NAME && -z $ADMIN_PW ]]; then
	useradd -d /home -g 100 -M admin
	echo admin:admin | chpasswd
else
	echo "not configuring admin user, ADMIN_NAME or ADMIN_PW not set"
fi