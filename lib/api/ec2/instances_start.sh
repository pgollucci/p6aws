p6_aws_ec2_instances_start() {
    local instance_ids="$1"
    shift 1

    p6_log_or_run aws ec2 start-instances --instance-ids $instance_ids "$@"
}
