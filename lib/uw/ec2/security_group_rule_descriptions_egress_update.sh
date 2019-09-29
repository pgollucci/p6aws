######################################################################
#<
#
# Function:
#      = p6_aws_ec2_run(ip_permissions, ip_permissions)
#
# Arg(s):
#    ip_permissions - 
#    ip_permissions - 
#
#
#>
######################################################################
p6_aws_ec2_run() {
        local ip_permissions="$1"
        shift 1

    cond_log_and_run aws ec2 update-security-group-rule-descriptions-egress --ip-permissions $ip_permissions --dry-run "$@"
}
