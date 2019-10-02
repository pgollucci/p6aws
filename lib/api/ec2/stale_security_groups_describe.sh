######################################################################
#<
#
# Function:
#	p6_aws_ec2_stale_security_groups_describe(vpc_id)
#
#  Args:
#	vpc_id - 
#
#>
######################################################################
p6_aws_ec2_stale_security_groups_describe() {
    local vpc_id="$1"
    shift 1

    p6_run_read_cmd aws ec2 describe-stale-security-groups --vpc-id $vpc_id "$@"
}