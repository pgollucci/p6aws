######################################################################
#<
#
# Function:
#	p6_aws_ec2_security_group_references_describe(group_id)
#
#  Args:
#	group_id - 
#
#>
######################################################################
p6_aws_ec2_security_group_references_describe() {
    local group_id="$1"
    shift 1

    p6_run_read_cmd aws ec2 describe-security-group-references --group-id $group_id "$@"
}