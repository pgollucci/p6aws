######################################################################
#<
#
# Function:
#      = p6_aws_ec2_security_group_egress_revoke(group_id)
#
# Arg(s):
#    group_id - 
#
#
#>
######################################################################
p6_aws_ec2_security_group_egress_revoke() {
    local group_id="$1"
    shift 1

    p6_run_write_cmd aws ec2 revoke-security-group-egress --group-id $group_id "$@"
}