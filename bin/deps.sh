#!/bin/sh -x

main() {

    pip install -q --upgrade pip

    pip install -q virtualenv
    pip install -q awscli
    pip install -q boto3
    pip install -q docopt
    pip install -q infi.docopt-completion
    pip install -q configparser
    pip install -q bs4
    pip install -q requests

    pyenv rehash
}

main "$@"
exit $?
