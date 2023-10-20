#!/bin/sh

if [ $# -ne 1 ]; then 
	echo "Usage $0 <current_tag>"
	echo exit 1
fi

current_tag="$1"

# Extract the registry, repository, and old tag
new_tag=$(echo "$current_tag" | cut -d: -f1)
incremented_tag=$(echo "$new_tag", | awk -F. '{print $NF+1}')
new_tag="1.0.$incremented_tag"

# Create the new image reference with the incremented tag
new_image="fiqifalah17/portofolio:$new_tag"

# echo "Pushing $new_image"
echo "$new_image"