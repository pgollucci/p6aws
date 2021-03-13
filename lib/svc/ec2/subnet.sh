######################################################################
#<
#
# Function: p6_aws_svc_ec2_subnet_get(subnet_type, [vpc_id=$AWS_VPC_ID])
#
#  Args:
#	subnet_type -
#	OPTIONAL vpc_id - [$AWS_VPC_ID]
#
#>
######################################################################
p6_aws_svc_ec2_subnet_get() {
    local subnet_type="$1"
    local vpc_id="${2:-$AWS_VPC_ID}"

    local subnet_id
    subnet_id=$(p6_aws_svc_ec2_subnet_ids_get "$subnet_type" "$vpc_id" | head -1)

    p6_return_aws_subnet_id "$subnet_id"
}

######################################################################
#<
#
# Function: words subnet_ids = p6_aws_svc_ec2_subnet_ids_get(subnet_type, [vpc_id=$AWS_VPC_ID])
#
#  Args:
#	subnet_type -
#	OPTIONAL vpc_id - [$AWS_VPC_ID]
#
#  Returns:
#	words - subnet_ids
#
#>
######################################################################
p6_aws_svc_ec2_subnet_ids_get() {
    local subnet_type="$1"
    local vpc_id="${2:-$AWS_VPC_ID}"

    local subnet_ids
    subnet_ids=$(p6_aws_svc_ec2_subnets_list "$vpc_id" | awk "/$subnet_type/ { print \$1 }")

    p6_return_words "$subnet_ids"
}

######################################################################
#<
#
# Function: p6_aws_svc_ec2_subnets_list([vpc_id=$AWS_VPC_ID])
#
#  Args:
#	OPTIONAL vpc_id - [$AWS_VPC_ID]
#
#>
######################################################################
p6_aws_svc_ec2_subnets_list() {
    local vpc_id="${1:-$AWS_VPC_ID}"

    local tag_name
    tag_name=$(p6_aws_cli_jq_tag_name_get)

    p6_aws_cli_cmd ec2 describe-subnets \
        --output text \
        --filters "Name=vpc-id,Values=$vpc_id" \
        --query "'Subnets[].[SubnetId, AvailabilityZone, CidrBlock, AvailableIpAddressCount, DefaultForAz, MapPublicIpOnLaunch, $tag_name]'"

    p6_return_void
}