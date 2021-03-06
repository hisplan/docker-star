#!/bin/bash -e

hub="hisplan"
version="2.7.6a"

echo "Packaging ${hub}/star:${version}..."

#
# tag it and push it to docker hub
#

docker login
docker tag star:${version} ${hub}/star:${version}
docker push ${hub}/star:${version}
