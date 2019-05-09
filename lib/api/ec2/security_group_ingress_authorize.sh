p6_aws_ec2_security_group_ingress_authorize() {

    p6_run_write_cmd aws ec2 authorize-security-group-ingress "$@"
}
