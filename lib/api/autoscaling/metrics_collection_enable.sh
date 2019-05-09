p6_aws_autoscaling_metrics_collection_enable() {
    local auto_scaling_group_name="$1"
    local granularity="$2"
    shift 2

    p6_run_write_cmd aws autoscaling enable-metrics-collection --auto-scaling-group-name $auto_scaling_group_name --granularity $granularity "$@"
}
