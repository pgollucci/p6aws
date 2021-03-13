# shellcheck shell=bash

######################################################################
#<
#
# Function: p6_aws_profile_config_add()
#
#>
######################################################################
p6_aws_profile_config_add() {
    local conf_file="$1"
    local profile="$2"

    local region=us-east-1
    local output=json

    if ! p6_file_contains "$profile" "$conf_file"; then
        p6_aws_profile__debug "config_add(): adding [$profile] -> [$conf_file]"
        p6_aws_template_process "sts/conf" "PROFILE=$profile" "REGION=$region" "OUTPUT=$output" >>"$conf_file"
    fi

    p6_return_void
}