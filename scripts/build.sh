#!/bin/bash

. lib/_bootstrap.sh; p6_bootstrap "." "github"; p6_cicd_build_run
