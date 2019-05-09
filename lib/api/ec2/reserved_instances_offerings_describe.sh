p6_aws_ec2_reserved_instances_offerings_describe() {

    p6_run_read_cmd aws ec2 describe-reserved-instances-offerings "$@"
}
