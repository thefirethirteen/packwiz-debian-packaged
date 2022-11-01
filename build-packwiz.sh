#!/bin/bash

# Get packwiz from github

git clone https://github.com/packwiz/packwiz.git

# Copy makefile to packwiz source

cp ./source.mk ./packwiz/Makefile

# Build packwiz

cd ./packwiz/
make all

# Cleanup and move binary file to the starting directory

mv ./packwiz ../packwiz-bin

cd ../
rm -rf ./packwiz/

mv ./packwiz-bin ./packwiz

# Create completions for bash

./packwiz completion bash > package.bash-completion

# Done!

echo "Done!"
