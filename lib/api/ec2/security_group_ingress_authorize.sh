p6_aws_ec2_security_group_ingress_authorize() {

    p6_log_or_run aws ec2 authorize-security-group-ingress "$@"
}
