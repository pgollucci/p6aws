p6_aws_ec2_instance_bundle() {
    local instance_id="$1"
    shift 1

    p6_log_or_run aws ec2 bundle-instance --instance-id $instance_id "$@"
}
