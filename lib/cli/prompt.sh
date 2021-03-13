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

    local profile=$(p6_aws_env_profile${kind})
    local region=$(p6_aws_env_region${kind})
    local vpc_id=$(p6_aws_env_vpc_id${kind})

    local str
    if ! p6_string_blank "$profile"; then
        local str="aws:\t  ${kind}:$profile [$region] ($vpc_id)"
    fi

    p6_return_str "$str"
}