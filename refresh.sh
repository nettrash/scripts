#!/bin/bash

CUR_DIR=$(pwd)

echo "Pulling in latest changes for all repositories..."

for i in $(find . -name ".git" -type d | cut -c 3-); do
    echo "";
    echo "|----> "$i;

    cd "$i";
    cd ..;

    git pull;
    git submodule init;
    git submodule update --remote;

    cd "$CUR_DIR"
done

echo ""
echo "Complete!"