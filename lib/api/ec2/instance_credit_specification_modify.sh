p6_aws_ec2_instance_credit_specification_modify() {
    local instance_credit_specifications="$1"
    shift 1

    p6_run_write_cmd aws ec2 modify-instance-credit-specification --instance-credit-specifications $instance_credit_specifications "$@"
}
