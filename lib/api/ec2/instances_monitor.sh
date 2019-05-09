p6_aws_ec2_instances_monitor() {
    local instance_ids="$1"
    shift 1

    p6_run_write_cmd aws ec2 monitor-instances --instance-ids $instance_ids "$@"
}
