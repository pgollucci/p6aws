p6_aws_opsworks_load_based_auto_scaling_set() {
    local layer_id="$1"
    shift 1

    p6_log_or_run aws opsworks set-load-based-auto-scaling --layer-id $layer_id "$@"
}
