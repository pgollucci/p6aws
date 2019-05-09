p6_aws_ec2_instances_start() {
    local instance_ids="$1"
    shift 1

    p6_run_write_cmd aws ec2 start-instances --instance-ids $instance_ids "$@"
}
