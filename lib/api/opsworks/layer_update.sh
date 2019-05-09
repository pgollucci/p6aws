p6_aws_opsworks_layer_update() {
    local layer_id="$1"
    shift 1

    p6_log_or_run aws opsworks update-layer --layer-id $layer_id "$@"
}
