FROM alpine

RUN mkdir -p /p6m7g8/p6common
WORKDIR /p6m7g8/p6common

COPY . .

RUN apk --no-cache add ncurses bash

ENV TERM "xterm-256color"
ENV CI "true"
ENV P6_DFZ_SRC_P6M7G8_DIR: ".."
RUN . lib/_bootstrap.sh; p6_bootstrap "." "github"; p6_cicd_tests_run
