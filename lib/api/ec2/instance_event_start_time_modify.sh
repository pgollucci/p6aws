p6_aws_ec2_instance_event_start_time_modify() {
    local instance_id="$1"
    local instance_event_id="$2"
    local not_before="$3"
    shift 3

    p6_run_write_cmd aws ec2 modify-instance-event-start-time --instance-id $instance_id --instance-event-id $instance_event_id --not-before $not_before "$@"
}
