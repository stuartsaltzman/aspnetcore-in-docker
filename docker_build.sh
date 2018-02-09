BUILD_NUMBER=0.0
DOCKER_ORG=stuartsaltzman
GITSHA1=${GITSHA1:=$(git rev-parse HEAD)}
DOCKER_IMAGE_VERSION=${BUILD_NUMBER}.${GITSHA1}

docker build -t $DOCKER_ORG/aspnetcore-in-docker:$DOCKER_IMAGE_VERSION .

# tag image with latest tag
docker tag $DOCKER_ORG/aspnetcore-in-docker:$DOCKER_IMAGE_VERSION $DOCKER_ORG/aspnetcore-in-docker:latest
