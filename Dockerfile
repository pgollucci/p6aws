FROM alpine

RUN mkdir -p /p6m7g8/p6aws

WORKDIR /p6m7g8/p6aws

COPY . .

RUN bin/p6ctl docker_build
