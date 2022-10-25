#!/bin/bash

git clone https://github.com/packwiz/packwiz.git

cd ./packwiz/
go build -o packwiz

mv ./packwiz ../packwiz-bin

cd ../
rm -rf ./packwiz/

mv ./packwiz-bin ./packwiz

# Create completions for bash

./packwiz completion bash > package.bash-completion

# Done!

echo "Done!"
