p6_aws_ec2_security_group_delete() {

    p6_log_or_run aws ec2 delete-security-group "$@"
}
