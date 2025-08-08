#!/bin/bash

# Mapping extensions to custom folder names
declare -A folder_map
folder_map=( 
    ["jpg"]="Images"
    ["png"]="Pictures"
    ["txt"]="TextFiles"
    ["pdf"]="Documents"
    ["doc"]="Documents"
    ["docx"]="Documnets"
    ["mp3"]="Songs"
    ["mp4"]="Videos"
)

# Get unique extensions
exts=$(ls | sed 's/^.*\.//' | sort -u | grep -v '^sh$')

for ext in $exts; do
    if [[ -n "${folder_map[$ext]}" ]]; then
        folder_name="${folder_map[$ext]}"
    else
        folder_name="OtherFiles"
    fi

    echo "Processing .$ext → $folder_name"
    mkdir -p "$folder_name"
    mv -v *."$ext" "$folder_name"/
done
