#!/bin/bash

# Repo URL input
printf 'Please enter URL for GitHub repo with valid Dockerfile: '
read -r repoURL

# Store repo name and its path to a variable.
urlLast=${repoURL##*/}
repoName=${urlLast::-4}
path=$(pwd)/$repoName

# Actual cloning process
pull () {
    echo 'You are cloning from: ' $repoURL
    git clone $repoURL && echo 'cloned a repo to your local machine'
}

# Build docker image from cloned repo
build () {
    cd $path
    printf 'Please enter build arguments. If none, leave it empty and it will build itself: '
    read -r buildArgs
    ../docker build -t ex3.2 $buildArgs .
    cd ..
}

# Make container from image you just built (not necessary, but included anyway)
run () {
    # for 'docker-hy.github.io', you will need "-p 80:80" args
    printf 'Please enter run arguments. If none, leave it empty and it will run: '
    read -r runArgs
    ./docker run $runArgs ex3.2
}

publish () {
    printf "Enter your username: "
    read -r username

    ./docker login -u $username
    ./docker tag ex3.2:latest $username/ex3.2:latest
    ./docker push $username/ex3.2:latest
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
if [ ! -f $path/'Dockerfile' ]
then
    echo 'Dockerfile does NOT exist. Removing this directory...'
    clean
    exit
fi

build
publish

# Uncomment below if you want to remove cloned repo
# clean

# NB: You will need "./" before docker 
# since docker cli needs to be executed each time it uses "docker" command.
# Remove "./" if you are using this elsewhere.