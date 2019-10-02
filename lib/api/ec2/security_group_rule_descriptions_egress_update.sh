######################################################################
#<
#
# Function:
#	p6_aws_ec2_security_group_rule_descriptions_egress_update(ip_permissions)
#
#  Args:
#	ip_permissions - 
#
#>
######################################################################
p6_aws_ec2_security_group_rule_descriptions_egress_update() {
    local ip_permissions="$1"
    shift 1

    p6_run_write_cmd aws ec2 update-security-group-rule-descriptions-egress --ip-permissions $ip_permissions "$@"
}