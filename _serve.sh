# 
# 23.03.2019 - The Docker image has been bumped to version 2 (and latest tag is removed) because of a bug in the build of jekyll, and problems with markdown.
# 


NODE_IMAGE="bsides/env:v2"
if [ -z $(docker images $NODE_IMAGE --quiet) ]; then
  echo "Got to build the environment, go get a coffee"
  echo "If this was unexpected, check notes for this script. There might have been a image change."
  docker build . -t $NODE_IMAGE --no-cache
fi

echo "Starting Jekyll"
docker run --rm -v "$PWD:/src" -p 4000:4000 --name bsides -it $NODE_IMAGE
