#!/bin/sh

# check jika tidak ada parameter
if [ $# -ne 1 ]; then 
	echo "Usage $0 <current_tag>"
	echo exit 1
fi

# ambil parameter
current_tag="$1"

# Extract tag dari parameter
new_tag=$(echo "$current_tag" | cut -d: -f1)
incremented_tag=$(echo "$new_tag", | awk -F. '{print $NF+1}')
new_tag="1.0.$incremented_tag"

# buat image baru dari tag yang sudah di increment
new_image="fiqifalah17/portofolio:$new_tag"

# echo "Pushing $new_image"
echo "$new_image"