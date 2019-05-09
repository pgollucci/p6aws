p6_aws_autoscaling_metrics_collection_disable() {
    local auto_scaling_group_name="$1"
    shift 1

    p6_run_write_cmd aws autoscaling disable-metrics-collection --auto-scaling-group-name $auto_scaling_group_name "$@"
}
