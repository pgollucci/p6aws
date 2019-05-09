p6_aws_ec2_instances_reboot() {
    local instance_ids="$1"
    shift 1

    p6_log_or_run aws ec2 reboot-instances --instance-ids $instance_ids "$@"
}
