p6_aws_opsworks_load_based_auto_scaling_set() {
    local layer_id="$1"
    shift 1

    p6_run_write_cmd aws opsworks set-load-based-auto-scaling --layer-id $layer_id "$@"
}
