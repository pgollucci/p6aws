#!/bin/bash

if [ ! -d ../p6common ]; then
  git clone https://github.com/p6m7g8/p6common ../
  . ../p6common/lib/_bootstrap.sh
   p6_bootstrap "." "github"
   p6_cicd_build_run
else
  p6_bootstrap "." 
  p6_cicd_build_run
fi
