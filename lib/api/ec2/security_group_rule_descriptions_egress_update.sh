p6_aws_ec2_security_group_rule_descriptions_egress_update() {
    local ip_permissions="$1"
    shift 1

    p6_log_or_run aws ec2 update-security-group-rule-descriptions-egress --ip-permissions $ip_permissions "$@"
}
