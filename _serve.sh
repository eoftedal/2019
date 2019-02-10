NODE_IMAGE="bsides/env:latest"
if [ -z $(docker images $NODE_IMAGE --quiet) ]; then
  echo "Got to build the environment, go get a coffee"
  docker build . -t $NODE_IMAGE --no-cache
fi

echo "Starting Jekyll"
docker run --rm -v "$PWD:/src" -p 4000:4000 --name bsides -it $NODE_IMAGE
