#!/bin/bash

echo -n "Input repository's name: "
read repo

git clone https://github.com/mutugamedev/$repo

cd $(basename $repo .git)

git pull origin main

echo -n "Input branch name to work: "
read branch

git checkout -b $branch

start "" "C:\Program Files\Git\git-bash.exe"