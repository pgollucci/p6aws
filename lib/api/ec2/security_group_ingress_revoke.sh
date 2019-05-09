p6_aws_ec2_security_group_ingress_revoke() {

    p6_log_or_run aws ec2 revoke-security-group-ingress "$@"
}
