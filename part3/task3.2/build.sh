#!/bin/bash

# arguments:
# 1: Personal access token
# 2: Repo to be cloned (owner/repo)
# 3: image's name
# 4: Docker-hub username
# 5: Docker-hub password

# Clone repository
git clone "https://$1@github.com/$2.git" repo

# Cd to repo or exit
cd repo || exit 1

# Build image
docker build . -t "$3"

# Login to docker-hub
docker login --username="$4" --password="$5"

# Tag your image
docker tag "$3" "$4/$3"

# Push to Docker-hub
docker push "$4/$3"

# Cd back and remove repo
cd .. && rm -rf repo


