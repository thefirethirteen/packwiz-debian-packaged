#!/bin/bash

# Get packwiz from github

git clone https://github.com/packwiz/packwiz.git

# Build packwiz

cd ./packwiz/
go build -o packwiz

# Cleanup and move binary file to the starting directory

mv ./packwiz ../packwiz-bin

cd ../
rm -rf ./packwiz/

mv ./packwiz-bin ./packwiz

# Create completions for bash

./packwiz completion bash > package.bash-completion

# Done!

echo "Done!"
