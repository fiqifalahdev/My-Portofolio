#!bin/sh

if [ $# -ne 1 ]; then 
	echo "Usage $0 <current_tag>"
	echo exit 1
fi

current_tag="$1"

# Extract the registry, repository, and old tag
new_tag=$(echo "$current_tag" | cut -d- -f1)

# Create the new image reference with the incremented tag
new_image="fiqifalah/portofolio:$new_tag"

# echo "Pushing $new_image"
echo "$new_image"