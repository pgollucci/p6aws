p6_aws_ec2_instance_status_describe() {

    p6_run_read_cmd aws ec2 describe-instance-status "$@"
}
