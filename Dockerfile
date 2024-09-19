ARG VERSION=3.3.0-debian
FROM cloudposse/geodesic:${VERSION}

ENV DOCKER_IMAGE="savantly/devops"
ENV APP_NAME="devops"
ENV BANNER="savantly"

RUN apt-get update && apt-get install -y terragrunt

COPY docker/.bash_profile /conf/.bash_profile