######################################################################
#<
#
# Function: str str = p6_aws_cfg_prompt_info(kind)
#
#  Args:
#	kind -
#
#  Returns:
#	str - str
#
#>
######################################################################
p6_aws_cfg_prompt_info() {
    local kind="$1"

    local org=$(p6_aws_env_org"${kind}")
    local profile=$(p6_aws_env_profile"${kind}")
    local region=$(p6_aws_env_region"${kind}")
    local vpc_id=$(p6_aws_env_vpc_id"${kind}")

    local str
    if ! p6_string_blank "$org"; then
        str="aws:\t  org:$org"
    fi
    if ! p6_string_blank "$profile"; then
        kind=${kind/_/}
        str="$str - ${kind}:$profile"
    fi
    if ! p6_string_blank "$region"; then
        str="$str region:$region"
    fi
    if ! p6_string_blank "$vpc_id"; then
        str="$str vpc:$vpc_id"
    fi

    p6_return_str "$str"
}
