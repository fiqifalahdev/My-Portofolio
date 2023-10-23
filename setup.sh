#!/bin/sh

if [ $# -ne 1 ]; then 
	echo "Usage $0 <version>"
	echo exit 1
fi

version="$1"

# search=$(cat ./docker-compose.yml | grep portofolio:)
search=$(cat /root/docker/docker-compose.yml | grep 'portofolio:' | sed 's/.*portofolio:[[:space:]]*//')

sed -i "s/$search/$version/g" /root/docker/docker-compose.yml

echo "Version updated to $version"

# docker pull fiqifalah17/portofolio:$version

# docker-compose up -d