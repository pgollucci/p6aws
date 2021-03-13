include ../p6common/Makefile.inc

.PHONY: kinds
kinds:
	zsh -li -c 'rm -f lib/env/* ; p6_aws_cfg__generate'

doc:	kinds
