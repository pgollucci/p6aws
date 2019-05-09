p6_aws_ec2_instances_stop() {
    local instance_ids="$1"
    shift 1

    p6_run_write_cmd aws ec2 stop-instances --instance-ids $instance_ids "$@"
}
