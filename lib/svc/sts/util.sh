######################################################################
#<
#
# Function: str region = p6_aws_svc_sts_region()
#
#  Returns:
#	str - region
#
#>
######################################################################
p6_aws_svc_sts_region() {

    local region=$(p6_aws_cfg_env_region_active)
    if p6_string_blank "$region"; then
        region=us-east-1
    fi

    p6_return_str "$region"
}

######################################################################
#<
#
# Function: str output = p6_aws_svc_sts_output()
#
#  Returns:
#	str - output
#
#>
######################################################################
p6_aws_svc_sts_output() {

    local output=$(p6_aws_cfg_env_output_active)
    if p6_string_blank "$output"; then
        output=json
    fi

    p6_return_str "$output"
}

######################################################################
#<
#
# Function: path file = p6_aws_svc_sts_cred_file()
#
#  Returns:
#	path - file
#
#>
######################################################################
p6_aws_svc_sts_cred_file() {

    local file=$(p6_aws_cfg_env_shared_credentials_file_active)
    if p6_string_blank "$file"; then
        local dir=$(p6_aws_svc_sts_dir)
        file=$dir/credentials
    fi

    p6_return_path "$file"
}

######################################################################
#<
#
# Function: str org = p6_aws_svc_sts_org()
#
#  Returns:
#	str - org
#
#>
######################################################################
p6_aws_svc_sts_org() {

    local org=$(p6_aws_cfg_env_org_active)
    if p6_string_blank "$org"; then
        org=$P6_AWS_ORG
    fi

    p6_return_str "$org"
}

######################################################################
#<
#
# Function: path dir = p6_aws_svc_sts_dir()
#
#  Returns:
#	path - dir
#
#>
######################################################################
p6_aws_svc_sts_dir() {

    local dir=$AWS_DIR
    if p6_string_blank "$dir"; then
        dir=$HOME/.aws
    fi

    p6_return_path "$dir"
}