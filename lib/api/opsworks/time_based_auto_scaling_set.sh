p6_aws_opsworks_time_based_auto_scaling_set() {
    local instance_id="$1"
    shift 1

    p6_log_or_run aws opsworks set-time-based-auto-scaling --instance-id $instance_id "$@"
}
