#!/bin/bash

# Repo URL input
printf 'Please enter URL for GitHub repo with valid Dockerfile: '
read -r repoURL

# Example repository info
# https - https://github.com/ruikawahara/docker-hy.github.io.git
# ssh - git@github.com:ruikawahara/docker-hy.github.io.git
# directory: docker-hy.github.io/

# Store repo name and its path to a variable.
urlLast=${repoURL##*/}
repoName=${urlLast::-4}
path=$(pwd)/$repoName

# Actual cloning process
pull () {
    echo 'You are cloning from: ' $repoURL
    git clone $repoURL && echo 'cloned a repo to your local machine'
}

# cloned repo removal
clean () {
    rm -rf $repoName
}

# check to see if repo has been pulled or not.
if [ ! -d $path ]
then
    pull
fi

# check if cloned repo has Dockerfile
if [ -f $path/'Dockerfile' ]
then
    echo 'Has Dockerfile'
else
    echo 'Dockerfile does NOT exist. Removing this directory...'
    clean
    exit
fi

# clean