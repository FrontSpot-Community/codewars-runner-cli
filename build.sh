yarn install
yarn run build
cp docker/node.docker ./Dockerfile
docker build -t node-runner .
docker tag node-runner:latest frontspot/node-runner:latest
docker login
docker push frontspot/node-runner:latest
