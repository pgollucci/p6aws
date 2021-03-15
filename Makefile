include ../p6common/Makefile.inc

.PHONY: kinds
kinds:
	zsh -li -c 'rm -rf lib/env/* t/cfg-*.t; p6_aws_cfg__generate; chmod a+rx t/*.t'
