# shellcheck shell=sh
######################################################################
#<
#
# Function: p6_aws_svc_ec2_vpcs_list()
#
#>
######################################################################
p6_aws_svc_ec2_vpcs_list() {

    local tag_name
    tag_name=$(p6_aws_cli_jq_tag_name_get)

    p6_aws_cli_cmd ec2 describe-vpcs \
        --output text \
        --filters "Name=isDefault,Values=false" \
        --query "'Vpcs[].[VpcId, CidrBlock, State, $tag_name]'"

    p6_return_void
}
