#!/bin/bash

# Check if a single argument is provided
if [ $# -ne 1 ]; then
    echo "Usage: $0 <repository/image:old_tag>"
    exit 1
fi

# Get the provided image reference
old_image="$1"

# Extract the registry, repository, and old tag
registry=$(echo "$old_image" | cut -d/ -f1)
repository=$(echo "$old_image" | cut -d/ -f2 | cut -d: -f1)
old_tag=$(echo "$old_image" | cut -d: -f2)

# Get the latest tag from the Docker registry
latest_tag=$(docker pull --quiet "$old_image" | awk '/Digest:/ {print $2}' | cut -d: -f2)

# Check if the latest tag is empty or the same as the old tag
if [ -z "$latest_tag" ] || [ "$latest_tag" == "$old_tag" ]; then
    echo "No new update found."
    exit 0
fi

# Increment the version number (e.g., 1.0.0 to 1.0.1)
new_tag=$(awk -F. -v OFS=. '{$NF++; print}')

# Create the new image reference with the incremented tag
new_image="$registry/$repository:$new_tag"

echo "New image reference: $new_image"
